import 'dart:convert';
import 'dart:io';

import 'package:org_social_mastodon_bridge/org_social_mastodon_bridge.dart';

Future<void> main(List<String> arguments) async {
  if (arguments.isEmpty) {
    print(
      'Usage: dart run bin/provision.dart <config.json> [local_state.json]',
    );
    exit(1);
  }

  final configPath = arguments[0];
  final configJson =
      json.decode(await File(configPath).readAsString())
          as Map<String, Object?>;
  final config = AppConfig.fromJson(configJson);

  // 1. Identify the effective remote state
  final remoteState = config.remoteState ?? config.state;
  if (remoteState is! S3StateConfig) {
    print('Error: No S3 state configuration found.');
    print(
      'Please add a "remote_state" of type "s3" to your config.json, or update "state" to be "s3".',
    );
    exit(1);
  }

  final s3Config = remoteState;
  final lambdaConfig = config.lambda;

  if (lambdaConfig.functionName == null) {
    print('Error: config.lambda.function_name must be set in config.json.');
    exit(1);
  }

  // 2. Identify the local state file to upload
  String? localStatePath = arguments.length > 1 ? arguments[1] : null;
  if (localStatePath == null) {
    final stateJson = configJson['state'];
    if (stateJson is Map &&
        stateJson['type'] == 'file' &&
        stateJson['path'] is String) {
      localStatePath = stateJson['path'] as String;
    }
  }
  localStatePath ??= 'state.json';

  // 3. Push state to S3
  final stateFile = File(localStatePath);
  if (await stateFile.exists()) {
    print(
      'Uploading local state from $localStatePath to s3://${s3Config.bucket}/${s3Config.key}...',
    );
    final result = await Process.run('aws', [
      's3',
      'cp',
      localStatePath,
      's3://${s3Config.bucket}/${s3Config.key}',
      '--region',
      s3Config.region,
      '--acl',
      'private',
      '--sse',
      'AES256',
    ]);

    if (result.exitCode != 0) {
      print('Error uploading state to S3: ${result.stderr}');
      exit(1);
    }
    print('State uploaded successfully.');
  } else {
    print('No local state file found at $localStatePath; skipping S3 upload.');
  }

  // 4. Update Lambda environment variables with "flattened" config
  print(
    'Updating Lambda function ${lambdaConfig.functionName} configuration...',
  );

  // Manually construct the map to ensure remote_state is truly gone and state is remote.
  final configMap = config.toJson();
  configMap['state'] = remoteState.toJson();
  configMap.remove('remote_state');

  final fullConfigJson = json.encode(configMap);

  // Use full JSON structure for --environment to avoid shell/CLI parsing issues with shorthand.
  final envJson = json.encode({
    'Variables': {'ORG_SOCIAL_MASTODON_BRIDGE_CONFIG_JSON': fullConfigJson},
  });

  final envResult = await Process.run('aws', [
    'lambda',
    'update-function-configuration',
    '--function-name',
    lambdaConfig.functionName!,
    '--region',
    s3Config.region,
    '--environment',
    envJson,
  ]);

  if (envResult.exitCode != 0) {
    print('Error updating Lambda configuration: ${envResult.stderr}');
    exit(1);
  }
  print('Lambda configuration updated successfully.');
  print(
    '\nTransition complete! Your Lambda is now configured to use S3 state.',
  );
  print(
    'You can now run "make deploy" to push the code, or "make invoke" to test.',
  );
}
