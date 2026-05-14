import 'package:built_value/json_object.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:mastodon_openapi/mastodon_openapi.dart' as generated;
import 'package:one_of/one_of.dart';
import 'package:path/path.dart' as path;

import '../config/config.dart';
import '../logging/logging.dart';
import '../org_social/post.dart';
import 'client.dart';
import 'status_logic.dart';

class GeneratedMastodonClient implements MastodonClient {
  GeneratedMastodonClient(
    this.config, {
    Dio? dio,
    http.Client? httpClient,
    this.mediaPollDelay = const Duration(seconds: 2),
  }) : _api = generated.MastodonOpenapi(
         basePathOverride: config.baseUrl.toString(),
         dio:
             dio ??
             Dio(
               BaseOptions(
                 baseUrl: config.baseUrl.toString(),
                 connectTimeout: const Duration(seconds: 10),
                 receiveTimeout: const Duration(seconds: 10),
               ),
             ),
       ),
       _httpClient = httpClient ?? http.Client() {
    logger.debug('Configured Mastodon client for ${config.baseUrl}');
    _api.setOAuthToken('OAuth2', config.accessToken);
  }

  final MastodonConfig config;
  final generated.MastodonOpenapi _api;
  final http.Client _httpClient;
  final Duration mediaPollDelay;

  generated.StatusVisibilityEnum get _visibility => switch (config.visibility) {
    'public' => generated.StatusVisibilityEnum.public,
    'unlisted' => generated.StatusVisibilityEnum.unlisted,
    'private' => generated.StatusVisibilityEnum.private,
    'direct' => generated.StatusVisibilityEnum.direct,
    _ => throw ArgumentError.value(
      config.visibility,
      'config.visibility',
      'Unsupported Mastodon visibility',
    ),
  };

  @override
  Future<MastodonInstanceLimits> getInstanceLimits() async {
    logger.debug('Fetching Mastodon instance limits');
    // Mastodon still exposes status limits on the v1 instance payload.
    final response = await _wrapApiCall(
      // ignore: deprecated_member_use
      () => _api.getInstanceApi().getInstance(),
    );
    final instance = response.data;
    if (instance == null) {
      throw StateError('Mastodon instance lookup returned no data');
    }
    final statuses = instance.configuration.statuses;
    return MastodonInstanceLimits(
      maxCharacters: statuses.maxCharacters,
      charactersReservedPerUrl: statuses.charactersReservedPerUrl,
      maxMediaAttachments: statuses.maxMediaAttachments,
    );
  }

  @override
  Future<MastodonPostResult> postStatus(
    OrgSocialPost post, {
    String? inReplyToId,
    String? quoteId,
  }) async {
    logger.debug('Creating Mastodon status for ${post.sourceId}');
    final composed = composeMastodonStatus(post);

    final poll = post.poll;
    if (poll != null) {
      if (composed.pollExpired) {
        logger.warning(
          'Post ${post.sourceId} has an expired poll (endsAt=${poll.endsAt}). '
          'Falling back to text-only post.',
        );
      } else if (composed.pollHasTooManyOptions) {
        logger.warning(
          'Post ${post.sourceId} has too many poll options (${poll.options.length}). '
          'Mastodon usually limits to 4. Falling back to text-only post.',
        );
      } else if (composed.pollHandling == MastodonPollHandling.native) {
        if (post.mediaCandidates.isNotEmpty) {
          logger.warning(
            'Post ${post.sourceId} has both poll and media candidates. '
            'Mastodon does not support both; prioritizing poll.',
          );
        }
        final request = _buildPollRequest(
          post,
          composed.text,
          composed.pollExpiresInSeconds!,
          inReplyToId: inReplyToId,
          quoteId: quoteId,
        );
        return _sendRequest(post.sourceId, request);
      }
    }

    final selectedMedia = OrgSocialPost.selectMediaCandidates(
      post.mediaCandidates,
    );
    final mediaIds = <String>[];
    for (final candidate in selectedMedia) {
      final uploaded = await _uploadMedia(candidate);
      mediaIds.add(uploaded.id);
    }

    final request = mediaIds.isEmpty
        ? _buildTextRequest(
            post,
            statusText: composed.text,
            inReplyToId: inReplyToId,
            quoteId: quoteId,
          )
        : _buildMediaRequest(
            post,
            mediaIds,
            statusText: composed.text,
            inReplyToId: inReplyToId,
            quoteId: quoteId,
          );

    return _sendRequest(post.sourceId, request);
  }

  @override
  Future<MastodonPostResult> boostStatus(
    OrgSocialPost post, {
    required String statusId,
  }) async {
    logger.debug('Boosting Mastodon status $statusId for ${post.sourceId}');
    final response = await _wrapApiCall(
      () => _api.getStatusesApi().postStatusReblog(
        id: statusId,
        postStatusReblogRequest: generated.PostStatusReblogRequest(
          (builder) => builder.visibility = _reblogVisibilityFor(post),
        ),
      ),
    );
    final status = response.data;
    if (status == null) {
      throw StateError(
        'Mastodon returned an empty response for boost of $statusId',
      );
    }
    return MastodonPostResult(
      statusId: status.id,
      url: status.url == null ? null : Uri.parse(status.url!),
    );
  }

  @override
  Future<MastodonPostResult> updateStatus(
    String statusId,
    OrgSocialPost post, {
    List<String>? existingMediaIds,
    List<String>? existingSelectedMedia,
  }) async {
    logger.debug('Updating Mastodon status $statusId for ${post.sourceId}');
    final composed = composeMastodonStatus(post);

    final poll = post.poll;
    if (poll != null && composed.pollHandling == MastodonPollHandling.native) {
      final request = _buildUpdatePollRequest(
        post,
        composed.text,
        composed.pollExpiresInSeconds!,
      );
      return _sendUpdateRequest(statusId, post.sourceId, request);
    }

    final selectedMedia = OrgSocialPost.selectMediaCandidates(
      post.mediaCandidates,
    );
    final selectedMediaKeys = selectedMedia
        .map(
          (candidate) =>
              '${candidate.kind.name}:${candidate.url}:${candidate.altText ?? ''}',
        )
        .toList(growable: false);
    final mediaIds = <String>[];

    if (existingMediaIds != null &&
        existingSelectedMedia != null &&
        _listEquals(existingSelectedMedia, selectedMediaKeys)) {
      logger.debug('Reusing existing media IDs for update');
      mediaIds.addAll(existingMediaIds);
    } else {
      for (final candidate in selectedMedia) {
        final uploaded = await _uploadMedia(candidate);
        mediaIds.add(uploaded.id);
      }
    }

    final request = _buildUpdateRequest(
      post,
      statusText: composed.text,
      mediaIds: mediaIds.isEmpty ? null : mediaIds,
    );

    return _sendUpdateRequest(statusId, post.sourceId, request);
  }

  @override
  Future<void> pinStatus(String statusId) async {
    logger.debug('Pinning Mastodon status $statusId');
    await _wrapApiCall(() => _api.getStatusesApi().postStatusPin(id: statusId));
  }

  @override
  Future<void> unpinStatus(String statusId) async {
    logger.debug('Unpinning Mastodon status $statusId');
    await _wrapApiCall(
      () => _api.getStatusesApi().postStatusUnpin(id: statusId),
    );
  }

  Future<MastodonPostResult> _sendRequest(
    String sourceId,
    generated.CreateStatusRequest request,
  ) async {
    final response = await _wrapApiCall(
      () => _api.getStatusesApi().createStatus(
        createStatusRequest: request,
        idempotencyKey: JsonObject(sourceId),
      ),
    );
    return _parsePostResult(sourceId, response.data);
  }

  Future<MastodonPostResult> _sendUpdateRequest(
    String statusId,
    String sourceId,
    generated.UpdateStatusRequest request,
  ) async {
    final response = await _wrapApiCall(
      () => _api.getStatusesApi().updateStatus(
        id: statusId,
        updateStatusRequest: request,
      ),
    );
    final status = response.data;
    if (status == null) {
      throw StateError(
        'Mastodon returned an empty response for update of $statusId',
      );
    }
    return MastodonPostResult(
      statusId: status.id,
      url: status.url == null ? null : Uri.parse(status.url!),
      mediaIds: status.mediaAttachments.map((m) => m.id).toList(),
    );
  }

  Future<T> _wrapApiCall<T>(Future<T> Function() call) async {
    try {
      return await call();
    } on DioException catch (e) {
      if (e.response != null) {
        logger.error(
          'Mastodon API error: ${e.response?.statusCode} ${e.response?.statusMessage}',
          error: e.response?.data,
        );
      }
      rethrow;
    }
  }

  generated.StatusVisibilityEnum _visibilityFor(OrgSocialPost post) {
    final visibility = post.visibility?.toLowerCase();
    if (visibility == null) {
      return _visibility;
    }
    return switch (visibility) {
      'public' => generated.StatusVisibilityEnum.public,
      'mention' => generated.StatusVisibilityEnum.direct,
      _ => _visibility,
    };
  }

  generated.StatusVisibilityEnum _reblogVisibilityFor(OrgSocialPost post) {
    final visibility = _visibilityFor(post);
    return visibility == generated.StatusVisibilityEnum.direct
        ? generated.StatusVisibilityEnum.private
        : visibility;
  }

  generated.CreateStatusRequest _buildPollRequest(
    OrgSocialPost post,
    String statusText,
    int expiresIn, {
    String? inReplyToId,
    String? quoteId,
  }) {
    final poll = post.poll!;
    final pollParams = generated.UpdateStatusRequestPoll(
      (builder) => builder
        ..options.addAll(poll.options)
        ..expiresIn = expiresIn,
    );

    final pollStatus = generated.PollStatus(
      (builder) => builder
        ..poll = pollParams.toBuilder()
        ..status = statusText
        ..visibility = _visibilityFor(post)
        ..language = post.language ?? config.language
        ..spoilerText = post.contentWarning
        ..inReplyToId = inReplyToId
        ..quotedStatusId = quoteId,
    );

    return generated.CreateStatusRequest(
      (builder) => builder.oneOf =
          OneOf.fromValue3<
            generated.TextStatus,
            generated.MediaStatus,
            generated.PollStatus
          >(value: pollStatus),
    );
  }

  generated.CreateStatusRequest _buildTextRequest(
    OrgSocialPost post, {
    required String statusText,
    String? inReplyToId,
    String? quoteId,
  }) {
    final textStatus = generated.TextStatus(
      (builder) => builder
        ..status = statusText
        ..visibility = _visibilityFor(post)
        ..language = post.language ?? config.language
        ..spoilerText = post.contentWarning
        ..inReplyToId = inReplyToId
        ..quotedStatusId = quoteId,
    );
    final request = generated.CreateStatusRequest(
      (builder) => builder.oneOf =
          OneOf.fromValue3<
            generated.TextStatus,
            generated.MediaStatus,
            generated.PollStatus
          >(value: textStatus),
    );
    return request;
  }

  generated.CreateStatusRequest _buildMediaRequest(
    OrgSocialPost post,
    List<String> mediaIds, {
    required String statusText,
    String? inReplyToId,
    String? quoteId,
  }) {
    final mediaStatus = generated.MediaStatus(
      (builder) => builder
        ..mediaIds.addAll(mediaIds)
        ..status = statusText
        ..visibility = _visibilityFor(post)
        ..language = post.language ?? config.language
        ..spoilerText = post.contentWarning
        ..inReplyToId = inReplyToId
        ..quotedStatusId = quoteId,
    );
    return generated.CreateStatusRequest(
      (builder) => builder.oneOf =
          OneOf.fromValue3<
            generated.TextStatus,
            generated.MediaStatus,
            generated.PollStatus
          >(value: mediaStatus),
    );
  }

  generated.UpdateStatusRequest _buildUpdateRequest(
    OrgSocialPost post, {
    required String statusText,
    List<String>? mediaIds,
  }) {
    return generated.UpdateStatusRequest((builder) {
      builder
        ..status = statusText
        ..language = post.language ?? config.language
        ..spoilerText = post.contentWarning;
      if (mediaIds != null) {
        builder.mediaIds.addAll(mediaIds);
      }
    });
  }

  generated.UpdateStatusRequest _buildUpdatePollRequest(
    OrgSocialPost post,
    String statusText,
    int expiresIn,
  ) {
    final poll = post.poll!;
    final pollParams = generated.UpdateStatusRequestPoll(
      (builder) => builder
        ..options.addAll(poll.options)
        ..expiresIn = expiresIn,
    );

    return generated.UpdateStatusRequest(
      (builder) => builder
        ..poll = pollParams.toBuilder()
        ..status = statusText
        ..language = post.language ?? config.language
        ..spoilerText = post.contentWarning,
    );
  }

  MastodonPostResult _parsePostResult(
    String sourceId,
    generated.CreateStatus200Response? payload,
  ) {
    if (payload == null) {
      throw StateError('Mastodon returned an empty response for $sourceId');
    }
    final value = payload.oneOf.value;
    if (value is generated.Status) {
      logger.debug('Received immediate Mastodon status ${value.id}');
      return MastodonPostResult(
        statusId: value.id,
        url: value.url == null ? null : Uri.parse(value.url!),
        mediaIds: value.mediaAttachments.map((m) => m.id).toList(),
      );
    }
    if (value is generated.ScheduledStatus) {
      logger.debug('Received scheduled Mastodon status ${value.id}');
      final mediaIds =
          value.params.mediaIds?.toList().cast<String>() ?? const <String>[];
      return MastodonPostResult(
        statusId: value.id,
        url: null,
        mediaIds: mediaIds,
      );
    }
    throw StateError('Unexpected Mastodon response type ${value.runtimeType}');
  }

  Future<generated.MediaAttachment> _uploadMedia(
    OrgSocialMediaCandidate candidate,
  ) async {
    logger.debug('Downloading media candidate ${candidate.url}');
    final response = await _httpClient.get(candidate.url);
    if (response.statusCode < 200 || response.statusCode >= 300) {
      throw StateError(
        'Failed to fetch media ${candidate.url}: HTTP ${response.statusCode}',
      );
    }
    final filename = _filenameFor(candidate.url);
    final contentType = _contentTypeFor(response, filename);
    final multipartFile = MultipartFile.fromBytes(
      response.bodyBytes,
      filename: filename,
      contentType: contentType,
    );
    logger.debug(
      'Uploading ${candidate.kind.name} attachment ${candidate.url} as $filename '
      '(${response.bodyBytes.length} bytes; contentType=$contentType), altText=${candidate.altText}',
    );
    final uploadResponse = await _wrapApiCall(
      () => _api.getMediaApi().createMediaV2(
        file: multipartFile,
        description: candidate.altText,
      ),
    );
    final uploaded = uploadResponse.data;
    if (uploaded == null) {
      throw StateError(
        'Mastodon returned an empty media response for $filename',
      );
    }

    if (uploaded.url == null) {
      logger.debug('Media $filename is still processing; waiting...');
      return _waitForMedia(uploaded.id);
    }

    return uploaded;
  }

  Future<generated.MediaAttachment> _waitForMedia(String mediaId) async {
    const maxRetries = 15;

    for (var i = 0; i < maxRetries; i++) {
      await Future<void>.delayed(mediaPollDelay);
      final response = await _wrapApiCall(
        () => _api.getMediaApi().getMedia(id: mediaId),
      );
      final attachment = response.data;
      if (attachment == null) {
        throw StateError(
          'Mastodon returned an empty response for media $mediaId',
        );
      }
      if (attachment.url != null) {
        logger.debug('Media $mediaId processing complete');
        return attachment;
      }
      logger.debug(
        'Media $mediaId still processing (retry ${i + 1}/$maxRetries)...',
      );
    }

    throw StateError('Timed out waiting for media $mediaId to be processed');
  }

  String _filenameFor(Uri url) {
    final basename = path.basename(url.path);
    return basename.isEmpty ? 'attachment' : basename;
  }

  DioMediaType? _contentTypeFor(http.Response response, String filename) {
    final headerType = response.headers['content-type'];
    if (headerType != null &&
        headerType.isNotEmpty &&
        headerType != 'application/octet-stream') {
      return DioMediaType.parse(headerType);
    }

    final bytes = response.bodyBytes;
    if (bytes.length >= 4) {
      if (bytes[0] == 0xFF && bytes[1] == 0xD8 && bytes[2] == 0xFF) {
        return DioMediaType.parse('image/jpeg');
      }
      if (bytes[0] == 0x89 &&
          bytes[1] == 0x50 &&
          bytes[2] == 0x4E &&
          bytes[3] == 0x47) {
        return DioMediaType.parse('image/png');
      }
      if (bytes[0] == 0x47 && bytes[1] == 0x49 && bytes[2] == 0x46) {
        return DioMediaType.parse('image/gif');
      }
      if (bytes.length >= 12 &&
          bytes[0] == 0x52 &&
          bytes[1] == 0x49 &&
          bytes[2] == 0x46 &&
          bytes[3] == 0x46 &&
          bytes[8] == 0x57 &&
          bytes[9] == 0x45 &&
          bytes[10] == 0x42 &&
          bytes[11] == 0x50) {
        return DioMediaType.parse('image/webp');
      }
    }

    return MultipartFile.lookupMediaType(filename);
  }

  bool _listEquals(List<String> a, List<String> b) {
    if (a.length != b.length) return false;
    for (var i = 0; i < a.length; i++) {
      if (a[i] != b[i]) return false;
    }
    return true;
  }

  @override
  Future<void> verifyCredentials() async {
    logger.debug('Calling Mastodon verify_credentials');
    final response = await _wrapApiCall(
      () => _api.getAccountsApi().getAccountsVerifyCredentials(),
    );
    if (response.data == null) {
      throw StateError('Mastodon credential verification returned no account');
    }
  }
}
