import 'package:built_value/json_object.dart';
import 'package:dio/dio.dart';
import 'package:mastodon_openapi/mastodon_openapi.dart' as generated;
import 'package:one_of/one_of.dart';

import '../config/config.dart';
import '../logging/logging.dart';
import '../org_social/post.dart';
import 'client.dart';

class GeneratedMastodonClient implements MastodonClient {
  GeneratedMastodonClient(this.config)
    : _api = generated.MastodonOpenapi(
        basePathOverride: config.baseUrl.toString(),
        dio: Dio(
          BaseOptions(
            baseUrl: config.baseUrl.toString(),
            connectTimeout: const Duration(seconds: 10),
            receiveTimeout: const Duration(seconds: 10),
          ),
        ),
      ) {
    logger.debug('Configured Mastodon client for ${config.baseUrl}');
    _api.setOAuthToken('OAuth2', config.accessToken);
  }

  final MastodonConfig config;
  final generated.MastodonOpenapi _api;

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
    final response = await _api.getStatusesApi().createStatus(
      createStatusRequest: request,
      idempotencyKey: JsonObject(post.sourceId),
    );
    final payload = response.data;
    if (payload == null) {
      throw StateError(
        'Mastodon returned an empty response for ${post.sourceId}',
      );
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

  @override
  Future<void> verifyCredentials() async {
    logger.debug('Calling Mastodon verify_credentials');
    final response = await _api.getAccountsApi().getAccountsVerifyCredentials();
    if (response.data == null) {
      throw StateError('Mastodon credential verification returned no account');
    }
  }
}
