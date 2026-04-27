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

class GeneratedMastodonClient implements MastodonClient {
  GeneratedMastodonClient(this.config, {Dio? dio, http.Client? httpClient})
    : _api = generated.MastodonOpenapi(
        basePathOverride: config.baseUrl.toString(),
        dio: dio ??
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
  Future<MastodonPostResult> postStatus(OrgSocialPost post) async {
    logger.debug('Creating Mastodon status for ${post.sourceId}');

    final poll = post.poll;
    if (poll != null) {
      final expiresIn = poll.endsAt.difference(DateTime.now()).inSeconds;
      if (expiresIn <= 0) {
        logger.warning(
          'Post ${post.sourceId} has an expired poll (endsAt=${poll.endsAt}). '
          'Falling back to text-only post.',
        );
      } else if (poll.options.length > 4) {
        logger.warning(
          'Post ${post.sourceId} has too many poll options (${poll.options.length}). '
          'Mastodon usually limits to 4. Falling back to text-only post.',
        );
      } else {
        if (post.mediaCandidates.isNotEmpty) {
          logger.warning(
            'Post ${post.sourceId} has both poll and media candidates. '
            'Mastodon does not support both; prioritizing poll.',
          );
        }
        final request = _buildPollRequest(post, expiresIn);
        return _sendRequest(post.sourceId, request);
      }
    }

    final selectedMedia = _selectMediaCandidates(post.mediaCandidates);
    final request =
        selectedMedia.isEmpty
            ? _buildTextRequest(post, appendPollOptions: poll != null)
            : await _buildMediaRequest(
              post,
              selectedMedia,
              appendPollOptions: poll != null,
            );

    return _sendRequest(post.sourceId, request);
  }

  Future<MastodonPostResult> _sendRequest(
    String sourceId,
    generated.CreateStatusRequest request,
  ) async {
    final response = await _api.getStatusesApi().createStatus(
      createStatusRequest: request,
      idempotencyKey: JsonObject(sourceId),
    );
    return _parsePostResult(sourceId, response.data);
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

  generated.CreateStatusRequest _buildPollRequest(
    OrgSocialPost post,
    int expiresIn,
  ) {
    final poll = post.poll!;
    final pollParams = generated.UpdateStatusRequestPoll(
      (builder) =>
          builder
            ..options.addAll(poll.options)
            ..expiresIn = expiresIn,
    );

    final pollStatus = generated.PollStatus(
      (builder) =>
          builder
            ..poll = pollParams.toBuilder()
            ..status = _buildFinalStatusText(post)
            ..visibility = _visibilityFor(post)
            ..language = post.language ?? config.language
            ..spoilerText = post.contentWarning,
    );

    return generated.CreateStatusRequest(
      (builder) =>
          builder.oneOf = OneOf.fromValue3<
            generated.TextStatus,
            generated.MediaStatus,
            generated.PollStatus
          >(value: pollStatus),
    );
  }

  generated.CreateStatusRequest _buildTextRequest(
    OrgSocialPost post, {
    bool appendPollOptions = false,
  }) {
    final textStatus = generated.TextStatus(
      (builder) =>
          builder
            ..status = _buildFinalStatusText(post, appendPollOptions: appendPollOptions)
            ..visibility = _visibilityFor(post)
            ..language = post.language ?? config.language
            ..spoilerText = post.contentWarning,
    );
    final request = generated.CreateStatusRequest(
      (builder) =>
          builder.oneOf = OneOf.fromValue3<
            generated.TextStatus,
            generated.MediaStatus,
            generated.PollStatus
          >(value: textStatus),
    );
    return request;
  }

  Future<generated.CreateStatusRequest> _buildMediaRequest(
    OrgSocialPost post,
    List<OrgSocialMediaCandidate> selectedMedia, {
    bool appendPollOptions = false,
  }) async {
    final mediaIds = <String>[];
    for (final candidate in selectedMedia) {
      final uploaded = await _uploadMedia(candidate);
      mediaIds.add(uploaded.id);
    }
    final mediaStatus = generated.MediaStatus(
      (builder) =>
          builder
            ..mediaIds.addAll(mediaIds)
            ..status = _buildFinalStatusText(post, appendPollOptions: appendPollOptions)
            ..visibility = _visibilityFor(post)
            ..language = post.language ?? config.language
            ..spoilerText = post.contentWarning,
    );
    return generated.CreateStatusRequest(
      (builder) =>
          builder.oneOf = OneOf.fromValue3<
            generated.TextStatus,
            generated.MediaStatus,
            generated.PollStatus
          >(value: mediaStatus),
    );
  }

  String _buildFinalStatusText(OrgSocialPost post, {bool appendPollOptions = false}) {
    final buffer = StringBuffer(post.text);

    if (appendPollOptions && post.poll != null) {
      if (buffer.isNotEmpty) buffer.write('\n\n');
      buffer.write(post.poll!.options.map((o) => '- [ ] $o').join('\n'));
    }

    if (post.mood != null && post.mood!.isNotEmpty) {
      if (buffer.isNotEmpty) buffer.write('\n\n');
      buffer.write('Mood: ${post.mood}');
    }

    if (post.tags.isNotEmpty) {
      if (buffer.isNotEmpty) buffer.write('\n\n');
      buffer.write(post.tags.map((t) => '#$t').join(' '));
    }

    return buffer.toString();
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
      );
    }
    if (value is generated.ScheduledStatus) {
      logger.debug('Received scheduled Mastodon status ${value.id}');
      return MastodonPostResult(statusId: value.id, url: null);
    }
    throw StateError('Unexpected Mastodon response type ${value.runtimeType}');
  }

  List<OrgSocialMediaCandidate> _selectMediaCandidates(
    List<OrgSocialMediaCandidate> candidates,
  ) {
    final selected = <OrgSocialMediaCandidate>[];
    for (final candidate in candidates) {
      if (selected.isEmpty) {
        selected.add(candidate);
        logger.debug(
          'Accepted ${candidate.kind.name} attachment ${candidate.url}',
        );
        if (candidate.kind == OrgSocialMediaKind.video) {
          break;
        }
        continue;
      }

      final selectedKind = selected.first.kind;
      if (selectedKind == OrgSocialMediaKind.video) {
        logger.debug('Rejected ${candidate.url}: video already selected');
        break;
      }
      if (candidate.kind == OrgSocialMediaKind.video) {
        logger.debug(
          'Rejected ${candidate.url}: cannot mix video with prior images',
        );
        continue;
      }
      if (selected.length >= 4) {
        logger.debug('Rejected ${candidate.url}: image attachment limit reached');
        continue;
      }
      selected.add(candidate);
      logger.debug('Accepted image attachment ${candidate.url}');
    }
    return selected;
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
    final multipartFile = MultipartFile.fromBytes(
      response.bodyBytes,
      filename: filename,
      contentType: _contentTypeFor(response, filename),
    );
    logger.debug(
      'Uploading ${candidate.kind.name} attachment ${candidate.url} as $filename '
      '(${response.bodyBytes.length} bytes), altText=${candidate.altText}',
    );
    final uploadResponse = await _api.getMediaApi().createMediaV2(
      file: multipartFile,
      description: candidate.altText,
    );
    final uploaded = uploadResponse.data;
    if (uploaded == null) {
      throw StateError('Mastodon returned an empty media response for $filename');
    }
    return uploaded;
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

  @override
  Future<void> verifyCredentials() async {
    logger.debug('Calling Mastodon verify_credentials');
    final response = await _api.getAccountsApi().getAccountsVerifyCredentials();
    if (response.data == null) {
      throw StateError('Mastodon credential verification returned no account');
    }
  }
}
