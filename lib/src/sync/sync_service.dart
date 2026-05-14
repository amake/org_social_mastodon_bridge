import 'dart:io';

import '../config/config.dart';
import '../logging/logging.dart';
import '../mastodon/client.dart';
import '../mastodon/status_logic.dart';
import '../org_social/post.dart';
import '../org_social/service.dart';
import '../org_social/source.dart';
import '../state/state_store.dart';
import 'lint.dart';

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

final class SyncPreviewResult {
  const SyncPreviewResult({required this.limits, required this.posts});

  final MastodonInstanceLimits limits;
  final List<SyncPostPreview> posts;
}

final class SyncPostPreview {
  const SyncPostPreview({
    required this.sourceId,
    required this.action,
    required this.publicationMode,
    required this.text,
    required this.characterCount,
    required this.maxCharacters,
    required this.deferred,
  });

  final String sourceId;
  final String action;
  final String publicationMode;
  final String text;
  final int characterCount;
  final int maxCharacters;
  final bool deferred;

  bool get exceedsLimit => characterCount > maxCharacters;
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

  static const _statusMode = 'status';
  static const _quoteMode = 'quote';
  static const _boostMode = 'boost';

  Future<SyncResult> run(AppConfig config) async {
    logger.info('Starting sync run');
    final existingState = await stateStore.load();
    final posts = await feedService.fetchPosts(config.source);
    final unseen = _findCandidatePosts(
      posts,
      existingState: existingState,
      includeSourceLink: config.sync.includeSourceLink,
      feedUrl: config.source.feedUrl,
    );

    logger.info(
      'Loaded ${posts.length} posts, found ${unseen.length} unseen or modified '
      '(dry_run=${config.sync.dryRun})',
    );

    if (unseen.isNotEmpty) {
      await _validateCandidateLengths(
        unseen,
        existingState: existingState,
        config: config,
      );
    }

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

      final existingRecord = state.records[post.sourceId];
      final publication = _resolvePublication(
        post,
        record: existingRecord,
        state: state,
        newMastodonIds: newMastodonIds,
        includeSourceLink: config.sync.includeSourceLink,
        feedUrl: config.source.feedUrl,
      );
      final currentPost = publication.preparedPost;

      if (existingRecord == null && publication.shouldDefer) {
        logger.info(
          'Deferring ${post.sourceId} until included status ${post.include} '
          'has a known Mastodon ID',
        );
        continue;
      }

      if (existingRecord != null) {
        if (publication.modeChanged) {
          logger.warning(
            'Post ${post.sourceId} changed publication mode from '
            '${publication.existingMode} to ${publication.desiredMode}, '
            'but Mastodon does not support changing that via edit. '
            'Keeping the existing mode.',
          );
        }

        if (publication.effectiveMode == _boostMode) {
          logger.warning(
            'Post ${post.sourceId} is already represented as a Mastodon boost '
            'and cannot be edited. Updating local state only.',
          );
          state = state.withRecord(
            SyncRecord(
              sourceId: post.sourceId,
              mastodonStatusId: existingRecord.mastodonStatusId,
              postedAt: DateTime.now().toUtc(),
              mastodonUrl: existingRecord.mastodonUrl,
              contentHash: currentPost.contentHash,
              renderedHash: currentPost.renderedHash,
              mediaIds: existingRecord.mediaIds,
              selectedMedia: existingRecord.selectedMedia,
              pinned: existingRecord.pinned,
              quotedStatusId: existingRecord.quotedStatusId,
              boostedStatusId: existingRecord.boostedStatusId,
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
            quotedStatusId: publication.effectiveMode == _quoteMode
                ? publication.targetStatusId
                : null,
            boostedStatusId: null,
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
        final result = switch (publication.effectiveMode) {
          _boostMode => await mastodonClient.boostStatus(
            currentPost,
            statusId: publication.targetStatusId!,
          ),
          _ => await mastodonClient.postStatus(
            currentPost,
            inReplyToId: inReplyToId,
            quoteId: publication.effectiveMode == _quoteMode
                ? publication.targetStatusId
                : null,
          ),
        };

        if (currentPost.pinned && publication.effectiveMode != _boostMode) {
          await mastodonClient.pinStatus(result.statusId);
        } else if (currentPost.pinned &&
            publication.effectiveMode == _boostMode) {
          logger.warning(
            'Post ${post.sourceId} requested pinning, but Mastodon boosts '
            'are not pinned by this bridge.',
          );
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
            quotedStatusId: publication.effectiveMode == _quoteMode
                ? publication.targetStatusId
                : null,
            boostedStatusId: publication.effectiveMode == _boostMode
                ? publication.targetStatusId
                : null,
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

  Future<SyncPreviewResult> preview(AppConfig config) async {
    logger.info('Starting preview run');
    final state = await stateStore.load();
    final posts = await feedService.fetchPosts(config.source);
    final limits = await mastodonClient.getInstanceLimits();
    final previews = <SyncPostPreview>[];
    final simulatedNewMastodonIds = <String, String>{};

    for (final post in posts) {
      final record = state.records[post.sourceId];
      final publication = _resolvePublication(
        post,
        record: record,
        state: state,
        newMastodonIds: simulatedNewMastodonIds,
        includeSourceLink: config.sync.includeSourceLink,
        feedUrl: config.source.feedUrl,
      );
      final action = _candidateReason(record, publication.preparedPost);
      final preview = previewMastodonStatus(publication.preparedPost, limits);
      previews.add(
        SyncPostPreview(
          sourceId: post.sourceId,
          action: action,
          publicationMode: publication.effectiveMode,
          text: preview.text,
          characterCount: publication.effectiveMode == _boostMode
              ? 0
              : preview.characterCount,
          maxCharacters: limits.maxCharacters,
          deferred: publication.shouldDefer,
        ),
      );
      if (record == null && !publication.shouldDefer) {
        simulatedNewMastodonIds[post.sourceId] = 'preview-${post.sourceId}';
      }
    }

    return SyncPreviewResult(limits: limits, posts: previews);
  }

  Future<SyncPreviewResult> previewSource(
    OrgSocialSource source, {
    required bool includeSourceLink,
    MastodonInstanceLimits? limits,
    SyncState? state,
  }) async {
    final resolvedLimits =
        limits ??
        (await _safeGetInstanceLimits()) ??
        MastodonInstanceLimits.defaultLimits;
    final posts = await feedService.fetchSource(source);
    final resolvedState = state ?? SyncState.empty();
    final previews = <SyncPostPreview>[];
    final simulatedNewMastodonIds = <String, String>{};

    final feedUrl = switch (source) {
      UrlSource(url: final url) => url,
      FileSource(path: final path) => File(path).absolute.uri,
    };

    for (final post in posts) {
      final record = resolvedState.records[post.sourceId];
      final publication = _resolvePublication(
        post,
        record: record,
        state: resolvedState,
        newMastodonIds: simulatedNewMastodonIds,
        includeSourceLink: includeSourceLink,
        feedUrl: feedUrl,
      );
      final action = _candidateReason(record, publication.preparedPost);
      final preview = previewMastodonStatus(
        publication.preparedPost,
        resolvedLimits,
      );
      previews.add(
        SyncPostPreview(
          sourceId: post.sourceId,
          action: action,
          publicationMode: publication.effectiveMode,
          text: preview.text,
          characterCount: publication.effectiveMode == _boostMode
              ? 0
              : preview.characterCount,
          maxCharacters: resolvedLimits.maxCharacters,
          deferred: publication.shouldDefer,
        ),
      );
      if (record == null && !publication.shouldDefer) {
        simulatedNewMastodonIds[post.sourceId] = 'preview-${post.sourceId}';
      }
    }

    return SyncPreviewResult(limits: resolvedLimits, posts: previews);
  }

  Future<LintResult> lintSource(
    OrgSocialSource source, {
    required bool includeSourceLink,
    MastodonInstanceLimits? limits,
    SyncState? state,
  }) async {
    final posts = await feedService.fetchSource(source);
    final feedUrl = switch (source) {
      UrlSource(url: final url) => url,
      FileSource(path: final path) => File(path).absolute.uri,
    };
    return lintPosts(
      posts,
      feedUrl: feedUrl,
      includeSourceLink: includeSourceLink,
      limits: limits,
      state: state,
    );
  }

  Future<LintResult> lintPosts(
    List<OrgSocialPost> posts, {
    required Uri feedUrl,
    required bool includeSourceLink,
    MastodonInstanceLimits? limits,
    SyncState? state,
  }) async {
    final resolvedLimits =
        limits ??
        (await _safeGetInstanceLimits()) ??
        MastodonInstanceLimits.defaultLimits;
    final resolvedState = state ?? SyncState.empty();
    final findings = <LintFinding>[];
    final simulatedNewMastodonIds = <String, String>{};

    for (final post in posts) {
      final record = resolvedState.records[post.sourceId];
      final publication = _resolvePublication(
        post,
        record: record,
        state: resolvedState,
        newMastodonIds: simulatedNewMastodonIds,
        includeSourceLink: includeSourceLink,
        feedUrl: feedUrl,
      );

      final status = composeMastodonStatus(publication.preparedPost);
      final charCount = countMastodonCharacters(
        status.text,
        charactersReservedPerUrl: resolvedLimits.charactersReservedPerUrl,
      );

      if (publication.effectiveMode != _boostMode &&
          charCount > resolvedLimits.maxCharacters) {
        findings.add(
          LintFinding(
            severity: LintSeverity.error,
            code: 'character_limit_exceeded',
            message:
                'Post exceeds character limit: $charCount/${resolvedLimits.maxCharacters}',
            sourceId: post.sourceId,
          ),
        );
      }

      if (status.pollHasTooManyOptions) {
        findings.add(
          LintFinding(
            severity: LintSeverity.warning,
            code: 'poll_too_many_options',
            message:
                'Poll has ${post.poll?.options.length} options, but Mastodon supports only 4. '
                'It will be appended to the status text as checkboxes.',
            sourceId: post.sourceId,
          ),
        );
      }

      if (status.pollExpired) {
        findings.add(
          LintFinding(
            severity: LintSeverity.warning,
            code: 'poll_expired',
            message: 'Poll expiration date is in the past.',
            sourceId: post.sourceId,
          ),
        );
      }

      if (publication.modeChanged) {
        findings.add(
          LintFinding(
            severity: LintSeverity.warning,
            code: 'publication_mode_changed',
            message:
                'Post changed publication mode from ${publication.existingMode} '
                'to ${publication.desiredMode}, but Mastodon does not support '
                'changing that via edit. Keeping existing mode.',
            sourceId: post.sourceId,
          ),
        );
      }

      if (publication.shouldDefer) {
        findings.add(
          LintFinding(
            severity: LintSeverity.warning,
            code: 'deferred_publication',
            message:
                'Post includes ${post.include} which has no known Mastodon ID yet. '
                'Publication will be deferred.',
            sourceId: post.sourceId,
          ),
        );
      }

      if (record == null && !publication.shouldDefer) {
        simulatedNewMastodonIds[post.sourceId] = 'lint-${post.sourceId}';
      }
    }

    return LintResult(findings: findings);
  }

  Future<MastodonInstanceLimits?> _safeGetInstanceLimits() async {
    try {
      return await mastodonClient.getInstanceLimits();
    } catch (e) {
      logger.warning('Failed to fetch Mastodon instance limits: $e');
      return null;
    }
  }

  List<String> _selectedMediaKeys(
    OrgSocialPost post,
  ) => OrgSocialPost.selectMediaCandidates(post.mediaCandidates)
      .map(
        (candidate) =>
            '${candidate.kind.name}:${candidate.url}:${candidate.altText ?? ''}',
      )
      .toList(growable: false);

  List<OrgSocialPost> _findCandidatePosts(
    List<OrgSocialPost> posts, {
    required SyncState existingState,
    required bool includeSourceLink,
    required Uri feedUrl,
  }) => posts
      .where((post) {
        final record = existingState.records[post.sourceId];
        if (record == null) return true;
        final publication = _resolvePublication(
          post,
          record: record,
          state: existingState,
          newMastodonIds: const {},
          includeSourceLink: includeSourceLink,
          feedUrl: feedUrl,
        );
        return _candidateReason(record, publication.preparedPost) !=
            'unchanged';
      })
      .toList(growable: false);

  String _candidateReason(SyncRecord? record, OrgSocialPost preparedPost) {
    if (record == null) return 'new';
    if (record.contentHash != preparedPost.contentHash) return 'modified';
    if (record.renderedHash != preparedPost.renderedHash) return 'rerendered';
    return 'unchanged';
  }

  Future<void> _validateCandidateLengths(
    List<OrgSocialPost> candidates, {
    required SyncState existingState,
    required AppConfig config,
  }) async {
    final result = await lintPosts(
      candidates,
      feedUrl: config.source.feedUrl,
      includeSourceLink: config.sync.includeSourceLink,
      state: existingState,
    );

    if (result.hasErrors) {
      final errors = result.findings
          .where((f) => f.severity == LintSeverity.error)
          .join('\n\n');
      throw StateError(
        'One or more posts have lint errors for '
        '${config.mastodon.baseUrl}:\n\n$errors',
      );
    }
  }

  OrgSocialPost _prepareStatus(
    OrgSocialPost post, {
    required bool includeSourceLink,
    required String mode,
  }) {
    var text = post.text;
    if (post.include != null && mode == _statusMode) {
      if (text.isNotEmpty) {
        text += '\n\n';
      }
      text += '🔁 ${post.include}';
    }
    if (includeSourceLink && post.canonicalUrl != null) {
      if (text.isNotEmpty) {
        text += '\n\n';
      }
      text += post.canonicalUrl!.toString();
    }

    if (text == post.text) {
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
      include: post.include,
      mediaCandidates: post.mediaCandidates,
      poll: post.poll,
      visibility: post.visibility,
      tags: post.tags,
      mood: post.mood,
      replyTo: post.replyTo,
      orgMarkup: post.orgMarkup,
      text: text,
    );
  }

  String? _resolveInternalId(String include, Uri feedUrl) {
    final uri = Uri.tryParse(include);
    if (uri == null) return null;
    if (uri.removeFragment() != feedUrl.removeFragment()) return null;
    return uri.fragment.isEmpty ? null : uri.fragment;
  }

  _Publication _resolvePublication(
    OrgSocialPost post, {
    required SyncRecord? record,
    required SyncState state,
    required Map<String, String> newMastodonIds,
    required bool includeSourceLink,
    required Uri feedUrl,
  }) {
    final includeId = post.include == null
        ? null
        : _resolveInternalId(post.include!, feedUrl);
    final resolvedTargetId = includeId == null
        ? null
        : newMastodonIds[includeId] ??
              state.records[includeId]?.mastodonStatusId;

    final desiredMode = _desiredPublicationMode(
      post,
      resolvedTargetId: resolvedTargetId,
    );

    final existingMode = record?.boostedStatusId != null
        ? _boostMode
        : record?.quotedStatusId != null
        ? _quoteMode
        : _statusMode;
    final effectiveMode = record == null ? desiredMode : existingMode;
    final targetStatusId = switch (effectiveMode) {
      _quoteMode => record?.quotedStatusId ?? resolvedTargetId,
      _boostMode => record?.boostedStatusId ?? resolvedTargetId,
      _ => null,
    };

    if (resolvedTargetId != null) {
      logger.debug(
        'Post ${post.sourceId} includes ${post.include} which maps to '
        'Mastodon status $resolvedTargetId; desired mode=$desiredMode',
      );
    }

    return _Publication(
      desiredMode: desiredMode,
      existingMode: existingMode,
      effectiveMode: effectiveMode,
      targetStatusId: targetStatusId,
      shouldDefer:
          record == null && includeId != null && resolvedTargetId == null,
      modeChanged: record != null && desiredMode != existingMode,
      preparedPost: _prepareStatus(
        post,
        includeSourceLink: includeSourceLink,
        mode: effectiveMode,
      ),
    );
  }

  String _desiredPublicationMode(
    OrgSocialPost post, {
    required String? resolvedTargetId,
  }) {
    if (resolvedTargetId == null) {
      return _statusMode;
    }
    if (!_hasOwnContent(post)) {
      return _boostMode;
    }
    if (_canQuote(post)) {
      return _quoteMode;
    }
    logger.warning(
      'Post ${post.sourceId} references an internal :INCLUDE:, but quote posts '
      'cannot include media or polls. Falling back to a normal post with the '
      'included URL in the text.',
    );
    return _statusMode;
  }

  bool _hasOwnContent(OrgSocialPost post) =>
      post.text.trim().isNotEmpty ||
      post.mediaCandidates.isNotEmpty ||
      post.poll != null;

  bool _canQuote(OrgSocialPost post) =>
      post.text.trim().isNotEmpty &&
      post.mediaCandidates.isEmpty &&
      post.poll == null;
}

final class _Publication {
  const _Publication({
    required this.desiredMode,
    required this.existingMode,
    required this.effectiveMode,
    required this.targetStatusId,
    required this.shouldDefer,
    required this.modeChanged,
    required this.preparedPost,
  });

  final String desiredMode;
  final String existingMode;
  final String effectiveMode;
  final String? targetStatusId;
  final bool shouldDefer;
  final bool modeChanged;
  final OrgSocialPost preparedPost;
}
