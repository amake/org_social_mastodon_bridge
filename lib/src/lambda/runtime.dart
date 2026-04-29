import 'dart:convert';
import 'dart:io';

import '../config/config.dart';
import '../logging/logging.dart';
import '../runner/bridge_runner.dart';

class LambdaRuntime {
  LambdaRuntime({BridgeRunner? runner}) : _runner = runner ?? BridgeRunner();

  final BridgeRunner _runner;

  Future<void> runLoop() async {
    final runtimeApi = Platform.environment['AWS_LAMBDA_RUNTIME_API'];
    if (runtimeApi == null || runtimeApi.isEmpty) {
      throw StateError('AWS_LAMBDA_RUNTIME_API is not set');
    }
    logger.info('Starting Lambda runtime loop against $runtimeApi');

    final client = HttpClient();
    try {
      while (true) {
        final invocation = await _nextInvocation(client, runtimeApi);
        logger.info('Received Lambda invocation ${invocation.requestId}');
        try {
          final event = _decodeJson(invocation.body);
          logger.debug('Invocation event: ${json.encode(event)}');

          AppConfig? envConfig;
          final configJson = Platform.environment['ORG_SOCIAL_MASTODON_BRIDGE_CONFIG_JSON'];
          if (configJson != null && configJson.isNotEmpty) {
            logger.debug('Loading config from environment variable');
            envConfig = AppConfig.fromJson(json.decode(configJson).cast<String, Object?>());
          }

          final result = await _runner.run(
            configPath: envConfig == null ? _configPathFromEvent(event) : null,
            config: envConfig,
            dryRunOverride: _dryRunFromEvent(event),
          );
          logger.info(
            'Invocation ${invocation.requestId} succeeded '
            '(seen=${result.seenPosts} posted=${result.postedPosts})',
          );
          await _postResponse(client, runtimeApi, invocation.requestId, {
            'seen_posts': result.seenPosts,
            'new_posts': result.newPosts,
            'posted_posts': result.postedPosts,
            'dry_run': result.dryRun,
          });
        } catch (error, stackTrace) {
          logger.error(
            'Invocation ${invocation.requestId} failed',
            error: error,
            stackTrace: stackTrace,
          );
          await _postError(
            client,
            runtimeApi,
            invocation.requestId,
            error,
            stackTrace,
          );
        }
      }
    } finally {
      client.close(force: true);
    }
  }

  Future<_Invocation> _nextInvocation(
    HttpClient client,
    String runtimeApi,
  ) async {
    final request = await client.getUrl(
      Uri.http(runtimeApi, '/2018-06-01/runtime/invocation/next'),
    );
    final response = await request.close();
    final requestId = response.headers.value('Lambda-Runtime-Aws-Request-Id');
    if (requestId == null || requestId.isEmpty) {
      throw StateError('Lambda runtime API did not return a request id');
    }
    final body = await utf8.decoder.bind(response).join();
    logger.debug('Fetched next invocation payload (${body.length} bytes)');
    return _Invocation(requestId: requestId, body: body);
  }

  Future<void> _postResponse(
    HttpClient client,
    String runtimeApi,
    String requestId,
    Object body,
  ) async {
    final request = await client.postUrl(
      Uri.http(
        runtimeApi,
        '/2018-06-01/runtime/invocation/$requestId/response',
      ),
    );
    request.headers.contentType = ContentType.json;
    request.write(json.encode(body));
    await (await request.close()).drain<void>();
  }

  Future<void> _postError(
    HttpClient client,
    String runtimeApi,
    String requestId,
    Object error,
    StackTrace stackTrace,
  ) async {
    final request = await client.postUrl(
      Uri.http(runtimeApi, '/2018-06-01/runtime/invocation/$requestId/error'),
    );
    request.headers.contentType = ContentType.json;
    request.headers.set('Lambda-Runtime-Function-Error-Type', 'Unhandled');
    request.write(
      json.encode({
        'errorType': error.runtimeType.toString(),
        'errorMessage': error.toString(),
        'stackTrace': stackTrace.toString(),
      }),
    );
    await (await request.close()).drain<void>();
  }

  Map<String, Object?> _decodeJson(String body) {
    if (body.trim().isEmpty) {
      return const {};
    }
    final decoded = json.decode(body);
    if (decoded is Map<Object?, Object?>) {
      return decoded.cast<String, Object?>();
    }
    return const {};
  }

  String _configPathFromEvent(Map<String, Object?> event) {
    return (event['config_path'] as String?) ?? 'config.json';
  }

  bool? _dryRunFromEvent(Map<String, Object?> event) =>
      event['dry_run'] as bool?;
}

final class _Invocation {
  const _Invocation({required this.requestId, required this.body});

  final String requestId;
  final String body;
}
