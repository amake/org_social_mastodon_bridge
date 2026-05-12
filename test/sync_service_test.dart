import 'package:org_social_mastodon_bridge/org_social_mastodon_bridge.dart';
import 'package:test/test.dart';

void main() {
  test('posts only unseen items and updates state incrementally', () async {
    final feedService = _FakeFeedService([
      OrgSocialPost(
        sourceId: 'old',
        text: 'Old text',
        publishedAt: DateTime.utc(2025, 4, 28, 11),
        headline: 'old',
        orgMarkup: '* old',
      ),
      OrgSocialPost(
        sourceId: 'new',
        text: 'New text',
        publishedAt: DateTime.utc(2025, 4, 28, 12),
        headline: 'new',
        orgMarkup: '* new',
      ),
    ]);
    final mastodon = _FakeMastodonClient();
    final stateStore = _MemoryStateStore(
      SyncState({
        'old': SyncRecord(
          sourceId: 'old',
          mastodonStatusId: '1',
          postedAt: DateTime.utc(2025, 4, 28, 11),
          contentHash: OrgSocialPost(
            sourceId: 'old',
            text: 'Old text',
            publishedAt: DateTime.utc(2025, 4, 28, 11),
            headline: 'old',
            orgMarkup: '* old',
          ).contentHash,
          renderedHash: OrgSocialPost(
            sourceId: 'old',
            text: 'Old text',
            publishedAt: DateTime.utc(2025, 4, 28, 11),
            headline: 'old',
            orgMarkup: '* old',
          ).renderedHash,
          selectedMedia: const [],
        ),
      }),
    );

    final service = SyncService(
      feedService: feedService,
      mastodonClient: mastodon,
      stateStore: stateStore,
    );

    final result = await service.run(
      AppConfig.fromJson({
        'source': {'feed_url': 'https://example.com/social.org'},
        'mastodon': {
          'base_url': 'https://mastodon.social',
          'access_token': 'token',
        },
        'sync': {'dry_run': false, 'max_posts_per_run': 10},
        'state': {'type': 'file', 'path': 'state.json'},
      }),
    );

    expect(result.seenPosts, 2);
    expect(result.candidatePosts, 1);
    expect(result.postedPosts, 1);
    expect(mastodon.postedTexts, ['New text']);
    expect(stateStore.state.containsSourceId('new'), isTrue);
  });

  test('dry run does not post or persist', () async {
    final feedService = _FakeFeedService([
      OrgSocialPost(
        sourceId: 'new',
        text: 'New text',
        publishedAt: DateTime.utc(2025, 4, 28, 12),
        headline: 'new',
        orgMarkup: '* new',
      ),
    ]);
    final mastodon = _FakeMastodonClient();
    final stateStore = _MemoryStateStore(SyncState.empty());

    final service = SyncService(
      feedService: feedService,
      mastodonClient: mastodon,
      stateStore: stateStore,
    );

    final result = await service.run(
      AppConfig.fromJson({
        'source': {'feed_url': 'https://example.com/social.org'},
        'mastodon': {
          'base_url': 'https://mastodon.social',
          'access_token': 'token',
        },
        'sync': {'dry_run': true, 'max_posts_per_run': 10},
        'state': {'type': 'file', 'path': 'state.json'},
      }),
    );

    expect(result.candidatePosts, 1);
    expect(result.postedPosts, 0);
    expect(mastodon.postedTexts, isEmpty);
    expect(stateStore.saveCalls, 0);
  });

  test('syncs posts with polls', () async {
    final poll = OrgSocialPoll(
      endsAt: DateTime.now().add(const Duration(days: 1)),
      options: ['Yes', 'No'],
    );
    final feedService = _FakeFeedService([
      OrgSocialPost(
        sourceId: 'poll',
        text: 'Do you like polls?',
        publishedAt: DateTime.utc(2025, 4, 28, 12),
        headline: 'poll',
        poll: poll,
        orgMarkup: '* poll',
      ),
    ]);
    final mastodon = _FakeMastodonClient();
    final stateStore = _MemoryStateStore(SyncState.empty());

    final service = SyncService(
      feedService: feedService,
      mastodonClient: mastodon,
      stateStore: stateStore,
    );

    await service.run(
      AppConfig.fromJson({
        'source': {'feed_url': 'https://example.com/social.org'},
        'mastodon': {
          'base_url': 'https://mastodon.social',
          'access_token': 'token',
        },
        'sync': {'dry_run': false, 'max_posts_per_run': 10},
        'state': {'type': 'file', 'path': 'state.json'},
      }),
    );

    expect(mastodon.postedPosts.single.poll, isNotNull);
    expect(mastodon.postedPosts.single.poll!.options, ['Yes', 'No']);
  });

  test('syncs edited posts by updating', () async {
    final originalPost = OrgSocialPost(
      sourceId: 'edit-me',
      text: 'Original',
      publishedAt: DateTime.utc(2025, 4, 28, 11),
      headline: 'edit-me',
      orgMarkup: '* edit-me\nOriginal',
    );
    final editedPost = OrgSocialPost(
      sourceId: 'edit-me',
      text: 'Edited',
      publishedAt: DateTime.utc(2025, 4, 28, 11),
      headline: 'edit-me',
      orgMarkup: '* edit-me\nEdited',
    );

    final feedService = _FakeFeedService([editedPost]);
    final mastodon = _FakeMastodonClient();
    final stateStore = _MemoryStateStore(
      SyncState({
        'edit-me': SyncRecord(
          sourceId: 'edit-me',
          mastodonStatusId: 'original-id',
          postedAt: DateTime.utc(2025, 4, 28, 11),
          contentHash: originalPost.contentHash,
          renderedHash: originalPost.renderedHash,
          selectedMedia: const [],
          pinned: originalPost.pinned,
        ),
      }),
    );

    final service = SyncService(
      feedService: feedService,
      mastodonClient: mastodon,
      stateStore: stateStore,
    );

    await service.run(
      AppConfig.fromJson({
        'source': {'feed_url': 'https://example.com/social.org'},
        'mastodon': {
          'base_url': 'https://mastodon.social',
          'access_token': 'token',
        },
        'sync': {'dry_run': false, 'max_posts_per_run': 10},
        'state': {'type': 'file', 'path': 'state.json'},
      }),
    );

    expect(mastodon.updateCalls, 1);
    expect(mastodon.postedPosts.single.text, 'Edited');
    expect(
      stateStore.state.records['edit-me']!.contentHash,
      editedPost.contentHash,
    );
  });

  test('syncs posts when rendering changes but source does not', () async {
    final post = OrgSocialPost(
      sourceId: 'render-change',
      text: 'Old rendering',
      publishedAt: DateTime.utc(2025, 4, 28, 11),
      headline: 'render-change',
      orgMarkup: '* render-change',
    );

    final mastodon = _FakeMastodonClient();
    final stateStore = _MemoryStateStore(
      SyncState({
        'render-change': SyncRecord(
          sourceId: 'render-change',
          mastodonStatusId: 'id',
          postedAt: DateTime.utc(2025, 4, 28, 11),
          contentHash: post.contentHash,
          renderedHash: 'old-rendered-hash',
          selectedMedia: const [],
        ),
      }),
    );

    final service = SyncService(
      feedService: _FakeFeedService([post]),
      mastodonClient: mastodon,
      stateStore: stateStore,
    );

    await service.run(
      AppConfig.fromJson({
        'source': {'feed_url': 'https://example.com/social.org'},
        'mastodon': {
          'base_url': 'https://mastodon.social',
          'access_token': 'token',
        },
        'sync': {'dry_run': false, 'max_posts_per_run': 10},
        'state': {'type': 'file', 'path': 'state.json'},
      }),
    );

    expect(mastodon.updateCalls, 1);
    expect(
      stateStore.state.records['render-change']!.renderedHash,
      post.renderedHash,
    );
  });

  test('pins and unpins posts when pinned status changes', () async {
    final originalPost = OrgSocialPost(
      sourceId: 'pin-change',
      text: 'Text',
      publishedAt: DateTime.utc(2025, 4, 28, 11),
      headline: 'pin-change',
      orgMarkup: '* pin-change',
      pinned: false,
    );
    final pinnedPost = OrgSocialPost(
      sourceId: 'pin-change',
      text: 'Text',
      publishedAt: DateTime.utc(2025, 4, 28, 11),
      headline: 'pin-change',
      orgMarkup: '* pin-change',
      pinned: true,
    );

    final mastodon = _FakeMastodonClient();
    final stateStore = _MemoryStateStore(
      SyncState({
        'pin-change': SyncRecord(
          sourceId: 'pin-change',
          mastodonStatusId: 'status-id',
          postedAt: DateTime.utc(2025, 4, 28, 11),
          contentHash: originalPost.contentHash,
          renderedHash: originalPost.renderedHash,
          selectedMedia: const [],
          pinned: originalPost.pinned,
        ),
      }),
    );

    final feedService = _FakeFeedService([pinnedPost]);
    final service = SyncService(
      feedService: feedService,
      mastodonClient: mastodon,
      stateStore: stateStore,
    );

    // Sync to pin
    await service.run(
      AppConfig.fromJson({
        'source': {'feed_url': 'https://example.com/social.org'},
        'mastodon': {
          'base_url': 'https://mastodon.social',
          'access_token': 'token',
        },
        'sync': {'dry_run': false, 'max_posts_per_run': 10},
        'state': {'type': 'file', 'path': 'state.json'},
      }),
    );

    expect(mastodon.pinCalls, 1);
    expect(mastodon.unpinCalls, 0);
    expect(
      stateStore.state.records['pin-change']!.renderedHash,
      pinnedPost.renderedHash,
    );

    // Sync to unpin
    feedService.posts = [originalPost];
    await service.run(
      AppConfig.fromJson({
        'source': {'feed_url': 'https://example.com/social.org'},
        'mastodon': {
          'base_url': 'https://mastodon.social',
          'access_token': 'token',
        },
        'sync': {'dry_run': false, 'max_posts_per_run': 10},
        'state': {'type': 'file', 'path': 'state.json'},
      }),
    );

    expect(mastodon.unpinCalls, 1);
  });

  test('syncs replies using in_reply_to_id', () async {
    final parent = OrgSocialPost(
      sourceId: 'parent',
      text: 'Parent post',
      publishedAt: DateTime.utc(2025, 4, 28, 11),
      headline: 'parent',
      orgMarkup: '* parent',
    );
    final child = OrgSocialPost(
      sourceId: 'child',
      text: 'Child reply',
      publishedAt: DateTime.utc(2025, 4, 28, 12),
      headline: 'child',
      orgMarkup: '* child',
      replyTo: 'parent',
    );

    final mastodon = _FakeMastodonClient();
    final stateStore = _MemoryStateStore(SyncState.empty());

    final service = SyncService(
      feedService: _FakeFeedService([parent, child]),
      mastodonClient: mastodon,
      stateStore: stateStore,
    );

    await service.run(
      AppConfig.fromJson({
        'source': {'feed_url': 'https://example.com/social.org'},
        'mastodon': {
          'base_url': 'https://mastodon.social',
          'access_token': 'token',
        },
        'sync': {'dry_run': false, 'max_posts_per_run': 10},
        'state': {'type': 'file', 'path': 'state.json'},
      }),
    );

    expect(mastodon.postedPosts, hasLength(2));
    expect(mastodon.postedPosts[0].sourceId, 'parent');
    expect(mastodon.postedPosts[1].sourceId, 'child');
    expect(mastodon.inReplyToIds[1], mastodon.statusIds[0]);
  });

  test('preserves candidate count semantics for modified posts', () async {
    final originalPost = OrgSocialPost(
      sourceId: 'edit-me',
      text: 'Original',
      publishedAt: DateTime.utc(2025, 4, 28, 11),
      headline: 'edit-me',
      orgMarkup: '* edit-me\nOriginal',
    );
    final editedPost = OrgSocialPost(
      sourceId: 'edit-me',
      text: 'Edited',
      publishedAt: DateTime.utc(2025, 4, 28, 11),
      headline: 'edit-me',
      orgMarkup: '* edit-me\nEdited',
    );

    final service = SyncService(
      feedService: _FakeFeedService([editedPost]),
      mastodonClient: _FakeMastodonClient(),
      stateStore: _MemoryStateStore(
        SyncState({
          'edit-me': SyncRecord(
            sourceId: 'edit-me',
            mastodonStatusId: 'original-id',
            postedAt: DateTime.utc(2025, 4, 28, 11),
            contentHash: originalPost.contentHash,
            renderedHash: originalPost.renderedHash,
            selectedMedia: const [],
          ),
        }),
      ),
    );

    final result = await service.run(
      AppConfig.fromJson({
        'source': {'feed_url': 'https://example.com/social.org'},
        'mastodon': {
          'base_url': 'https://mastodon.social',
          'access_token': 'token',
        },
        'sync': {'dry_run': true, 'max_posts_per_run': 10},
        'state': {'type': 'file', 'path': 'state.json'},
      }),
    );

    expect(result.candidatePosts, 1);
  });

  test('appends :INCLUDE: URL to the status text', () async {
    final post = OrgSocialPost(
      sourceId: 'boost',
      text: 'Check this out!',
      publishedAt: DateTime.utc(2025, 4, 28, 12),
      headline: 'boost',
      include: 'https://alice.com/social.org#2025-04-28T10:00:00+0000',
      orgMarkup: '* boost',
    );
    final feedService = _FakeFeedService([post]);
    final mastodon = _FakeMastodonClient();
    final stateStore = _MemoryStateStore(SyncState.empty());

    final service = SyncService(
      feedService: feedService,
      mastodonClient: mastodon,
      stateStore: stateStore,
    );

    await service.run(
      AppConfig.fromJson({
        'source': {'feed_url': 'https://example.com/social.org'},
        'mastodon': {
          'base_url': 'https://mastodon.social',
          'access_token': 'token',
        },
        'sync': {'dry_run': false, 'max_posts_per_run': 10},
        'state': {'type': 'file', 'path': 'state.json'},
      }),
    );

    expect(
      mastodon.postedTexts.single,
      'Check this out!\n\n🔁 https://alice.com/social.org#2025-04-28T10:00:00+0000',
    );
  });

  test('boosts an internal :INCLUDE: post with no body text', () async {
    final parent = OrgSocialPost(
      sourceId: '2025-04-28T10:00:00+0000',
      text: 'Original post',
      publishedAt: DateTime.utc(2025, 4, 28, 10),
      headline: 'parent',
      orgMarkup: '* parent',
    );
    final post = OrgSocialPost(
      sourceId: 'boost-empty',
      text: '',
      publishedAt: DateTime.utc(2025, 4, 28, 12),
      headline: 'boost-empty',
      include: 'https://example.com/social.org#2025-04-28T10:00:00+0000',
      orgMarkup: '* boost-empty',
    );
    final feedService = _FakeFeedService([parent, post]);
    final mastodon = _FakeMastodonClient();
    final stateStore = _MemoryStateStore(SyncState.empty());

    final service = SyncService(
      feedService: feedService,
      mastodonClient: mastodon,
      stateStore: stateStore,
    );

    await service.run(
      AppConfig.fromJson({
        'source': {'feed_url': 'https://example.com/social.org'},
        'mastodon': {
          'base_url': 'https://mastodon.social',
          'access_token': 'token',
        },
        'sync': {'dry_run': false, 'max_posts_per_run': 10},
        'state': {'type': 'file', 'path': 'state.json'},
      }),
    );

    expect(mastodon.postedTexts, ['Original post']);
    expect(mastodon.boostedStatusIds, ['1']);
  });

  test('defers unresolved internal :INCLUDE: posts', () async {
    final post = OrgSocialPost(
      sourceId: 'deferred',
      text: '',
      publishedAt: DateTime.utc(2025, 4, 28, 12),
      headline: 'deferred',
      include: 'https://example.com/social.org#2025-04-28T10:00:00+0000',
      orgMarkup: '* deferred',
    );
    final mastodon = _FakeMastodonClient();
    final stateStore = _MemoryStateStore(SyncState.empty());

    final service = SyncService(
      feedService: _FakeFeedService([post]),
      mastodonClient: mastodon,
      stateStore: stateStore,
    );

    final result = await service.run(
      AppConfig.fromJson({
        'source': {'feed_url': 'https://example.com/social.org'},
        'mastodon': {
          'base_url': 'https://mastodon.social',
          'access_token': 'token',
        },
        'sync': {'dry_run': false, 'max_posts_per_run': 10},
        'state': {'type': 'file', 'path': 'state.json'},
      }),
    );

    expect(result.candidatePosts, 1);
    expect(result.postedPosts, 0);
    expect(mastodon.postedPosts, isEmpty);
    expect(mastodon.boostedStatusIds, isEmpty);
  });

  test('quotes a post if it is internal', () async {
    final parent = OrgSocialPost(
      sourceId: '2025-04-28T10:00:00+0000',
      text: 'Original post',
      publishedAt: DateTime.utc(2025, 4, 28, 10),
      headline: 'parent',
      orgMarkup: '* parent',
    );
    final post = OrgSocialPost(
      sourceId: '2025-04-28T12:00:00+0000',
      text: 'Quoting original',
      publishedAt: DateTime.utc(2025, 4, 28, 12),
      headline: 'quoter',
      include: 'https://example.com/social.org#2025-04-28T10:00:00+0000',
      orgMarkup: '* quoter',
    );
    final feedService = _FakeFeedService([parent, post]);
    final mastodon = _FakeMastodonClient();
    final stateStore = _MemoryStateStore(SyncState.empty());

    final service = SyncService(
      feedService: feedService,
      mastodonClient: mastodon,
      stateStore: stateStore,
    );

    await service.run(
      AppConfig.fromJson({
        'source': {'feed_url': 'https://example.com/social.org'},
        'mastodon': {
          'base_url': 'https://mastodon.social',
          'access_token': 'token',
        },
        'sync': {'dry_run': false, 'max_posts_per_run': 10},
        'state': {'type': 'file', 'path': 'state.json'},
      }),
    );

    expect(mastodon.postedPosts.length, 2);
    expect(mastodon.postedTexts[0], 'Original post');
    expect(mastodon.postedTexts[1], 'Quoting original');
    expect(mastodon.quoteIds[0], isNull);
    expect(mastodon.quoteIds[1], '1'); // ID of the first post
  });
}

final class _FakeFeedService extends OrgSocialService {
  _FakeFeedService(this.posts);

  List<OrgSocialPost> posts;

  @override
  Future<List<OrgSocialPost>> fetchPosts(SourceConfig config) async => posts;
}

final class _FakeMastodonClient implements MastodonClient {
  final List<OrgSocialPost> postedPosts = [];
  final List<String?> inReplyToIds = [];
  final List<String?> quoteIds = [];
  final List<String> boostedStatusIds = [];
  final List<String> statusIds = [];

  List<String> get postedTexts => postedPosts.map((p) => p.text).toList();
  int updateCalls = 0;
  int pinCalls = 0;
  int unpinCalls = 0;

  @override
  Future<MastodonPostResult> postStatus(
    OrgSocialPost post, {
    String? inReplyToId,
    String? quoteId,
  }) async {
    postedPosts.add(post);
    inReplyToIds.add(inReplyToId);
    quoteIds.add(quoteId);
    final statusId = '${statusIds.length + 1}';
    statusIds.add(statusId);
    return MastodonPostResult(statusId: statusId, url: null);
  }

  @override
  Future<MastodonPostResult> boostStatus(
    OrgSocialPost post, {
    required String statusId,
  }) async {
    boostedStatusIds.add(statusId);
    this.statusIds.add(statusId);
    return MastodonPostResult(statusId: statusId, url: null);
  }

  @override
  Future<MastodonPostResult> updateStatus(
    String statusId,
    OrgSocialPost post, {
    List<String>? existingMediaIds,
    List<String>? existingSelectedMedia,
  }) async {
    updateCalls += 1;
    postedPosts.add(post);
    inReplyToIds.add(null);
    statusIds.add(statusId);
    return MastodonPostResult(statusId: statusId, url: null);
  }

  @override
  Future<void> pinStatus(String statusId) async {
    pinCalls += 1;
  }

  @override
  Future<void> unpinStatus(String statusId) async {
    unpinCalls += 1;
  }

  @override
  Future<void> verifyCredentials() async {}
}

final class _MemoryStateStore implements StateStore {
  _MemoryStateStore(this.state);

  SyncState state;
  int saveCalls = 0;

  @override
  Future<SyncState> load() async => state;

  @override
  Future<void> save(SyncState state) async {
    this.state = state;
    saveCalls += 1;
  }
}
