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
      ),
      OrgSocialPost(
        sourceId: 'new',
        text: 'New text',
        publishedAt: DateTime.utc(2025, 4, 28, 12),
        headline: 'new',
      ),
    ]);
    final mastodon = _FakeMastodonClient();
    final stateStore = _MemoryStateStore(
      SyncState({
        'old': SyncRecord(
          sourceId: 'old',
          mastodonStatusId: '1',
          postedAt: DateTime.utc(2025, 4, 28, 11),
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

  @override
  Future<MastodonPostResult> postStatus(OrgSocialPost post) async {
    postedPosts.add(post);
    return MastodonPostResult(statusId: '${postedPosts.length}', url: null);
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
