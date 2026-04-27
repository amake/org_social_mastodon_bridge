import 'dart:convert';
import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart';
import 'package:mastodon_openapi/mastodon_openapi.dart' as generated;
import 'package:org_social_mastodon_bridge/org_social_mastodon_bridge.dart';

const _redirectUri = 'urn:ietf:wg:oauth:2.0:oob';
const _scopes = 'write:statuses profile';
const _defaultAppName = 'org_social_mastodon_bridge';

Future<void> main(List<String> arguments) async {
  logger.debug('Auth CLI arguments: $arguments');
  final configPath = arguments.firstWhere(
    (argument) => !argument.startsWith('--'),
    orElse: () =>
        Platform.environment['ORG_SOCIAL_MASTODON_BRIDGE_CONFIG'] ??
        'config.json',
  );
  final recreateApp = arguments.contains('--recreate-app');

  final configFile = File(configPath);
  if (!await configFile.exists()) {
    throw FileSystemException('Config file not found', configPath);
  }

  final decoded = json.decode(await configFile.readAsString());
  if (decoded case {
    'mastodon': Map<Object?, Object?> _,
    'source': Map<Object?, Object?> _,
  }) {
    final root = (decoded as Map<Object?, Object?>).cast<String, Object?>();
    final mastodon = (root['mastodon'] as Map<Object?, Object?>)
        .cast<String, Object?>();
    final source = (root['source'] as Map<Object?, Object?>)
        .cast<String, Object?>();
    final baseUrl = Uri.parse(_requireString(mastodon, 'base_url'));
    final appName = switch (mastodon) {
      {'app_name': String appName} when appName.trim().isNotEmpty =>
        appName.trim(),
      _ => _defaultAppName,
    };
    final website = switch (source) {
      {'feed_url': String feedUrl} when feedUrl.trim().isNotEmpty =>
        feedUrl.trim(),
      _ => null,
    };

    final client = generated.MastodonOpenapi(
      basePathOverride: baseUrl.toString(),
      dio: Dio(
        BaseOptions(
          baseUrl: baseUrl.toString(),
          connectTimeout: const Duration(seconds: 10),
          receiveTimeout: const Duration(seconds: 10),
        ),
      ),
    );

    var clientId = recreateApp ? null : _optionalString(mastodon, 'client_id');
    var clientSecret = recreateApp
        ? null
        : _optionalString(mastodon, 'client_secret');

    if (clientId == null || clientSecret == null) {
      logger.info('Registering Mastodon application on $baseUrl');
      stdout.writeln('Registering Mastodon application on $baseUrl');
      final response = await client.getAppsApi().createApp(
        createAppRequest: generated.CreateAppRequest(
          (builder) => builder
            ..clientName = appName
            ..redirectUris.replace(BuiltList<String>([_redirectUri]))
            ..scopes = _scopes
            ..website = website,
        ),
      );
      final app = response.data;
      if (app == null) {
        throw StateError('App registration returned no credentials');
      }
      clientId = app.clientId;
      clientSecret = app.clientSecret;
      mastodon['client_id'] = clientId;
      mastodon['client_secret'] = clientSecret;
      mastodon['app_name'] = appName;
      await _writeConfig(configFile, root);
      logger.debug('Stored client_id and client_secret in $configPath');
    }

    final authorizationUri = baseUrl
        .resolve('/oauth/authorize')
        .replace(
          queryParameters: {
            'client_id': clientId,
            'redirect_uri': _redirectUri,
            'response_type': 'code',
            'scope': _scopes,
          },
        );

    stdout.writeln('Visit the URL below and approve access:');
    stdout.writeln(authorizationUri);
    stdout.write('Authorization code: ');
    final code = stdin.readLineSync()?.trim();
    if (code == null || code.isEmpty) {
      throw const FormatException('Authorization code is required');
    }

    final tokenResponse = await client.getOauthApi().postOauthToken(
      postOauthTokenRequest: generated.PostOauthTokenRequest(
        (builder) => builder
          ..clientId = clientId
          ..clientSecret = clientSecret
          ..code = code
          ..grantType = 'authorization_code'
          ..redirectUri = _redirectUri,
      ),
    );
    final token = tokenResponse.data;
    if (token == null) {
      throw StateError('OAuth token exchange returned no token');
    }

    mastodon['access_token'] = token.accessToken;
    mastodon['client_id'] = clientId;
    mastodon['client_secret'] = clientSecret;
    mastodon['app_name'] = appName;
    await _writeConfig(configFile, root);

    logger.info('Updated $configPath with Mastodon credentials');
    stdout.writeln('Updated $configPath with Mastodon credentials.');
    return;
  }
  throw const FormatException(
    'Config root must contain mastodon and source objects',
  );
}

Future<void> _writeConfig(File configFile, Map<String, Object?> root) {
  return configFile.writeAsString(
    const JsonEncoder.withIndent('  ').convert(root),
  );
}

String _requireString(Map<String, Object?> json, String key) {
  final value = _optionalString(json, key);
  if (value != null) {
    return value;
  }
  throw FormatException('Expected non-empty string "$key"');
}

String? _optionalString(Map<String, Object?> json, String key) {
  final value = json[key];
  if (value is String) {
    final trimmed = value.trim();
    if (trimmed.isNotEmpty) {
      return trimmed;
    }
  }
  return null;
}
