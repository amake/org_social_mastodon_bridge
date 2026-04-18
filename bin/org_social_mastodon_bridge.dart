import 'dart:io';

import 'package:org_social_mastodon_bridge/org_social_mastodon_bridge.dart';

Future<void> main(List<String> arguments) async {
  final configPath = arguments.firstWhere(
    (argument) => !argument.startsWith('--'),
    orElse: () =>
        Platform.environment['ORG_SOCIAL_MASTODON_BRIDGE_CONFIG'] ??
        'config.json',
  );
  final dryRun = arguments.contains('--dry-run');

  final result = await BridgeRunner().run(
    configPath: configPath,
    dryRunOverride: dryRun ? true : null,
  );

  stdout.writeln(
    'seen=${result.seenPosts} new=${result.newPosts} '
    'posted=${result.postedPosts} dry_run=${result.dryRun}',
  );
}
