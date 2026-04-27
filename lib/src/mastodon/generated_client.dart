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
    final selectedMedia = _selectMediaCandidates(post.mediaCandidates);
    final request = selectedMedia.isEmpty
        ? _buildTextRequest(post)
        : await _buildMediaRequest(post, selectedMedia);
    logger.debug(
      'Posting ${post.sourceId} with ${selectedMedia.length} media attachment(s)',
    );
    final response = await _api.getStatusesApi().createStatus(
      createStatusRequest: request,
      idempotencyKey: JsonObject(post.sourceId),
    );
    return _parsePostResult(post.sourceId, response.data);
  }

  generated.CreateStatusRequest _buildTextRequest(OrgSocialPost post) {
    final textStatus = generated.TextStatus(
      (builder) => builder
        ..status = post.text
        ..visibility = _visibility
        ..language = post.language ?? config.language
        ..spoilerText = post.contentWarning,
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

  Future<generated.CreateStatusRequest> _buildMediaRequest(
    OrgSocialPost post,
    List<OrgSocialMediaCandidate> selectedMedia,
  ) async {
    final mediaIds = <String>[];
    for (final candidate in selectedMedia) {
      final uploaded = await _uploadMedia(candidate);
      mediaIds.add(uploaded.id);
    }
    final mediaStatus = generated.MediaStatus(
      (builder) => builder
        ..mediaIds.addAll(mediaIds)
        ..status = post.text
        ..visibility = _visibility
        ..language = post.language ?? config.language
        ..spoilerText = post.contentWarning,
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
      '(${response.bodyBytes.length} bytes)',
    );
    final uploadResponse = await _api.getMediaApi().createMediaV2(
      file: multipartFile,
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
    final contentType = response.headers['content-type'];
    if (contentType != null && contentType.isNotEmpty) {
      return DioMediaType.parse(contentType);
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
