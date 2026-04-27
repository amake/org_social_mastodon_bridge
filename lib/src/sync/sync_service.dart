import '../config/config.dart';
import '../logging/logging.dart';
import '../mastodon/client.dart';
import '../org_social/post.dart';
import '../org_social/service.dart';
import '../state/state_store.dart';

final class SyncResult {
  const SyncResult({
    required this.seenPosts,
    required this.newPosts,
    required this.postedPosts,
    required this.dryRun,
  });

  final int seenPosts;
  final int newPosts;
  final int postedPosts;
  final bool dryRun;
}

class SyncService {
  const SyncService({
    required this.feedService,
    required this.mastodonClient,
    required this.stateStore,
  });

  final OrgSocialService feedService;
  final MastodonClient mastodonClient;
  final StateStore stateStore;

  Future<SyncResult> run(AppConfig config) async {
    logger.info('Starting sync run');
    final existingState = await stateStore.load();
    final posts = await feedService.fetchPosts(config.source);
    final unseen = posts
        .where((post) => !existingState.containsSourceId(post.sourceId))
        .take(config.sync.maxPostsPerRun)
        .toList(growable: false);
    logger.info(
      'Loaded ${posts.length} posts, found ${unseen.length} unseen '
      '(dry_run=${config.sync.dryRun})',
    );

    if (!config.sync.dryRun) {
      logger.debug('Verifying Mastodon credentials');
      await mastodonClient.verifyCredentials();
    }

    var state = existingState;
    var postedCount = 0;

    for (final post in unseen) {
      if (config.sync.dryRun) {
        logger.info('Dry run: would post ${post.sourceId} (${post.headline})');
        continue;
      }
      logger.info('Posting ${post.sourceId} (${post.headline})');
      final result = await mastodonClient.postStatus(
        _withOptionalLink(post, config.sync.includeLink),
      );
      state = state.withRecord(
        SyncRecord(
          sourceId: post.sourceId,
          mastodonStatusId: result.statusId,
          mastodonUrl: result.url?.toString(),
          postedAt: DateTime.now().toUtc(),
        ),
      );
      await stateStore.save(state);
      postedCount += 1;
      logger.info(
        'Posted ${post.sourceId} as Mastodon status ${result.statusId}',
      );
    }

    logger.info(
      'Sync finished: seen=${posts.length} unseen=${unseen.length} '
      'posted=$postedCount dry_run=${config.sync.dryRun}',
    );
    return SyncResult(
      seenPosts: posts.length,
      newPosts: unseen.length,
      postedPosts: postedCount,
      dryRun: config.sync.dryRun,
    );
  }

  OrgSocialPost _withOptionalLink(OrgSocialPost post, bool includeLink) {
    if (!includeLink || post.canonicalUrl == null) {
      return post;
    }
    return OrgSocialPost(
      sourceId: post.sourceId,
      headline: post.headline,
      headlineId: post.headlineId,
      publishedAt: post.publishedAt,
      language: post.language,
      contentWarning: post.contentWarning,
      canonicalUrl: post.canonicalUrl,
      mediaCandidates: post.mediaCandidates,
      poll: post.poll,
      text: '${post.text}\n\n${post.canonicalUrl}',
    );
  }
}
