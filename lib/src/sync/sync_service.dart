import '../config/config.dart';
import '../logging/logging.dart';
import '../mastodon/client.dart';
import '../org_social/post.dart';
import '../org_social/service.dart';
import '../state/state_store.dart';

final class SyncResult {
  const SyncResult({
    required this.seenPosts,
    required this.candidatePosts,
    required this.postedPosts,
    required this.dryRun,
  });

  final int seenPosts;
  final int candidatePosts;
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
        .where((post) {
          final record = existingState.records[post.sourceId];
          if (record == null) return true;
          final currentPost = _withOptionalLink(post, config.sync.includeLink);
          if (record.contentHash != currentPost.contentHash) return true;
          if (record.renderedHash != currentPost.renderedHash) {
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

    // Track Mastodon IDs created in this run to support replies to posts created in same run
    final newMastodonIds = <String, String>{};

    for (final post in unseen) {
      if (postedCount >= config.sync.maxPostsPerRun) {
        logger.info('Reached max posts per run limit, stopping');
        break;
      }

      final currentPost = _withOptionalLink(post, config.sync.includeLink);
      final existingRecord = state.records[post.sourceId];

      if (existingRecord != null) {
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
          existingSelectedMedia: existingRecord.selectedMedia,
        );

        if (currentPost.pinned != existingRecord.pinned) {
          if (currentPost.pinned) {
            await mastodonClient.pinStatus(result.statusId);
          } else {
            await mastodonClient.unpinStatus(result.statusId);
          }
        }

        state = state.withRecord(
          SyncRecord(
            sourceId: post.sourceId,
            mastodonStatusId: result.statusId,
            postedAt: DateTime.now().toUtc(),
            mastodonUrl: result.url?.toString(),
            contentHash: currentPost.contentHash,
            renderedHash: currentPost.renderedHash,
            mediaIds: result.mediaIds,
            selectedMedia: _selectedMediaKeys(currentPost),
            pinned: currentPost.pinned,
          ),
        );
        postedCount += 1;
        logger.info('Updated status as Mastodon ID ${result.statusId}');
      } else {
        if (config.sync.dryRun) {
          logger.info('Dry run: would post ${post.sourceId}');
          continue;
        }

        String? inReplyToId;
        if (post.replyTo != null) {
          inReplyToId =
              newMastodonIds[post.replyTo] ??
              state.records[post.replyTo]?.mastodonStatusId;
          if (inReplyToId != null) {
            logger.debug(
              'Post ${post.sourceId} is a reply to Mastodon status $inReplyToId',
            );
          } else {
            logger.warning(
              'Post ${post.sourceId} specifies REPLY_TO ${post.replyTo} but parent was not found',
            );
          }
        }

        logger.info('Posting new status for ${post.sourceId}');
        final result = await mastodonClient.postStatus(
          currentPost,
          inReplyToId: inReplyToId,
        );

        if (currentPost.pinned) {
          await mastodonClient.pinStatus(result.statusId);
        }

        newMastodonIds[post.sourceId] = result.statusId;
        state = state.withRecord(
          SyncRecord(
            sourceId: post.sourceId,
            mastodonStatusId: result.statusId,
            postedAt: DateTime.now().toUtc(),
            mastodonUrl: result.url?.toString(),
            contentHash: currentPost.contentHash,
            renderedHash: currentPost.renderedHash,
            mediaIds: result.mediaIds,
            selectedMedia: _selectedMediaKeys(currentPost),
            pinned: currentPost.pinned,
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
      candidatePosts: unseen.length,
      postedPosts: postedCount,
      dryRun: config.sync.dryRun,
    );
  }

  List<String> _selectedMediaKeys(
    OrgSocialPost post,
  ) => OrgSocialPost.selectMediaCandidates(post.mediaCandidates)
      .map(
        (candidate) =>
            '${candidate.kind.name}:${candidate.url}:${candidate.altText ?? ''}',
      )
      .toList(growable: false);

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
      replyTo: post.replyTo,
      orgMarkup: post.orgMarkup,
      text: '${post.text}\n\n${post.canonicalUrl}',
    );
  }
}
