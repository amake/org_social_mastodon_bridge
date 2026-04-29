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
    expect(result.newPosts, 1);
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

    expect(result.newPosts, 1);
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
}

final class _FakeFeedService extends OrgSocialService {
  _FakeFeedService(this.posts);

  final List<OrgSocialPost> posts;

  @override
  Future<List<OrgSocialPost>> fetchPosts(SourceConfig config) async => posts;
}

final class _FakeMastodonClient implements MastodonClient {
  final List<OrgSocialPost> postedPosts = [];
  List<String> get postedTexts => postedPosts.map((p) => p.text).toList();
  int updateCalls = 0;

  @override
  Future<MastodonPostResult> postStatus(OrgSocialPost post) async {
    postedPosts.add(post);
    return MastodonPostResult(statusId: '${postedPosts.length}', url: null);
  }

  @override
  Future<MastodonPostResult> updateStatus(
    String statusId,
    OrgSocialPost post, {
    List<String>? existingMediaIds,
  }) async {
    updateCalls += 1;
    postedPosts.clear();
    postedPosts.add(post);
    return MastodonPostResult(statusId: statusId, url: null);
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
