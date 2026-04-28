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

    final unseen =
        posts
            .where((post) {
              final record = existingState.records[post.sourceId];
              if (record == null) return true;
              final currentPost = _withOptionalLink(post, config.sync.includeLink);
              if (record.contentHash != currentPost.contentHash) return true;
              if (record.renderedHash != null &&
                  record.renderedHash != currentPost.renderedHash) {
                return true;
              }
              return false;
            })
            .toList(growable: false);

    logger.info(
      'Loaded ${posts.length} posts, found ${unseen.length} unseen or modified '
      '(dry_run=${config.sync.dryRun})',
    );

    if (!config.sync.dryRun && unseen.isNotEmpty) {
      logger.debug('Verifying Mastodon credentials');
      await mastodonClient.verifyCredentials();
    }

    var state = existingState;
    var postedCount = 0;

    for (final post in unseen) {
      if (config.sync.maxPostsPerRun != null &&
          postedCount >= config.sync.maxPostsPerRun!) {
        logger.info('Reached max posts per run limit, stopping');
        break;
      }

      final currentPost = _withOptionalLink(post, config.sync.includeLink);
      final existingRecord = state.records[post.sourceId];

      if (existingRecord != null) {
        if (existingRecord.contentHash == null ||
            existingRecord.renderedHash == null) {
          logger.debug('Initializing missing hashes for ${post.sourceId}');
          state = state.withRecord(
            SyncRecord(
              sourceId: existingRecord.sourceId,
              mastodonStatusId: existingRecord.mastodonStatusId,
              postedAt: existingRecord.postedAt,
              mastodonUrl: existingRecord.mastodonUrl,
              contentHash: currentPost.contentHash,
              renderedHash: currentPost.renderedHash,
              mediaIds: existingRecord.mediaIds,
            ),
          );
          await stateStore.save(state);
          continue;
        }

        if (config.sync.dryRun) {
          logger.info('Dry run: would update ${post.sourceId}');
          continue;
        }

        logger.info(
          'Updating status ${existingRecord.mastodonStatusId} for ${post.sourceId}',
        );
        final result = await mastodonClient.updateStatus(
          existingRecord.mastodonStatusId,
          currentPost,
          existingMediaIds: existingRecord.mediaIds,
        );

        state = state.withRecord(
          SyncRecord(
            sourceId: post.sourceId,
            mastodonStatusId: result.statusId,
            postedAt: DateTime.now().toUtc(),
            mastodonUrl: result.url?.toString(),
            contentHash: currentPost.contentHash,
            renderedHash: currentPost.renderedHash,
            mediaIds: result.mediaIds,
          ),
        );
        postedCount += 1;
        logger.info('Updated status as Mastodon ID ${result.statusId}');
      } else {
        if (config.sync.dryRun) {
          logger.info('Dry run: would post ${post.sourceId}');
          continue;
        }

        logger.info('Posting new status for ${post.sourceId}');
        final result = await mastodonClient.postStatus(currentPost);

        state = state.withRecord(
          SyncRecord(
            sourceId: post.sourceId,
            mastodonStatusId: result.statusId,
            postedAt: DateTime.now().toUtc(),
            mastodonUrl: result.url?.toString(),
            contentHash: currentPost.contentHash,
            renderedHash: currentPost.renderedHash,
            mediaIds: result.mediaIds,
          ),
        );
        postedCount += 1;
        logger.info('Posted as Mastodon ID ${result.statusId}');
      }

      await stateStore.save(state);
    }

    logger.info(
      'Sync finished: seen=${posts.length} candidates=${unseen.length} '
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
      visibility: post.visibility,
      tags: post.tags,
      mood: post.mood,
      orgMarkup: post.orgMarkup,
      text: '${post.text}\n\n${post.canonicalUrl}',
    );
  }
}
