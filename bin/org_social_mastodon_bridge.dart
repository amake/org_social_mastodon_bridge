import 'dart:io';

import 'package:org_social_mastodon_bridge/org_social_mastodon_bridge.dart';

Future<void> main(List<String> arguments) async {
  logger.debug('CLI arguments: $arguments');
  final previewMode =
      arguments.contains('--preview') ||
      arguments.any((argument) => argument == 'preview');
  final filteredArguments = arguments
      .where((argument) => argument != '--preview' && argument != 'preview')
      .toList(growable: false);
  final configPath = arguments.firstWhere(
    (argument) => !argument.startsWith('--') && argument != 'preview',
    orElse: () =>
        Platform.environment['ORG_SOCIAL_MASTODON_BRIDGE_CONFIG'] ??
        'config.json',
  );
  final dryRun = filteredArguments.contains('--dry-run');

  if (previewMode) {
    final result = await BridgeRunner().preview(configPath: configPath);
    stdout.writeln(
      'limit=${result.limits.maxCharacters} '
      'reserved_url=${result.limits.charactersReservedPerUrl}',
    );
    for (final post in result.posts) {
      final status = post.deferred
          ? 'DEFER'
          : post.exceedsLimit
          ? 'TOO_LONG'
          : 'OK';
      stdout.writeln(
        '${post.sourceId} ${post.action} ${post.publicationMode} '
        '${post.characterCount}/${post.maxCharacters} $status',
      );
      if (post.text.isNotEmpty) {
        stdout.writeln(post.text);
      }
      stdout.writeln('');
    }
    return;
  }

  final result = await BridgeRunner().run(
    configPath: configPath,
    dryRunOverride: dryRun ? true : null,
  );

  logger.info(
    'Run result: seen=${result.seenPosts} candidates=${result.candidatePosts} '
    'posted=${result.postedPosts} dry_run=${result.dryRun}',
  );
  stdout.writeln(
    'seen=${result.seenPosts} candidates=${result.candidatePosts} '
    'posted=${result.postedPosts} dry_run=${result.dryRun}',
  );
}
