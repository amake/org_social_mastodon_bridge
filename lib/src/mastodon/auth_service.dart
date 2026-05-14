import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart';
import 'package:mastodon_openapi/mastodon_openapi.dart' as generated;

import '../logging/logging.dart';

const defaultScopes = 'write:statuses write:media write:accounts profile';
const defaultRedirectUri = 'urn:ietf:wg:oauth:2.0:oob';

final class MastodonAuthCredentials {
  const MastodonAuthCredentials({
    required this.clientId,
    required this.clientSecret,
    this.accessToken,
  });

  final String clientId;
  final String clientSecret;
  final String? accessToken;
}

class MastodonAuthService {
  MastodonAuthService(this.baseUrl);

  final Uri baseUrl;

  generated.MastodonOpenapi _createClient() {
    return generated.MastodonOpenapi(
      basePathOverride: baseUrl.toString(),
      dio: Dio(
        BaseOptions(
          baseUrl: baseUrl.toString(),
          connectTimeout: const Duration(seconds: 10),
          receiveTimeout: const Duration(seconds: 10),
        ),
      ),
    );
  }

  Future<MastodonAuthCredentials> registerApp({
    required String appName,
    required String appWebsite,
    String scopes = defaultScopes,
    String redirectUri = defaultRedirectUri,
  }) async {
    final client = _createClient();
    logger.info('Registering Mastodon application on $baseUrl');
    final response = await client.getAppsApi().createApp(
      createAppRequest: generated.CreateAppRequest(
        (builder) => builder
          ..clientName = appName
          ..redirectUris.replace(BuiltList<String>([redirectUri]))
          ..scopes = scopes
          ..website = appWebsite,
      ),
    );
    final app = response.data;
    if (app == null) {
      throw StateError('App registration returned no credentials');
    }
    return MastodonAuthCredentials(
      clientId: app.clientId,
      clientSecret: app.clientSecret,
    );
  }

  Uri getAuthorizationUri({
    required String clientId,
    String scopes = defaultScopes,
    String redirectUri = defaultRedirectUri,
  }) {
    return baseUrl
        .resolve('/oauth/authorize')
        .replace(
          queryParameters: {
            'client_id': clientId,
            'redirect_uri': redirectUri,
            'response_type': 'code',
            'scope': scopes,
          },
        );
  }

  Future<String> exchangeCode({
    required String clientId,
    required String clientSecret,
    required String code,
    String redirectUri = defaultRedirectUri,
  }) async {
    final client = _createClient();
    final tokenResponse = await client.getOauthApi().postOauthToken(
      postOauthTokenRequest: generated.PostOauthTokenRequest(
        (builder) => builder
          ..clientId = clientId
          ..clientSecret = clientSecret
          ..code = code
          ..grantType = 'authorization_code'
          ..redirectUri = redirectUri,
      ),
    );
    final token = tokenResponse.data;
    if (token == null) {
      throw StateError('OAuth token exchange returned no token');
    }
    return token.accessToken;
  }
}
