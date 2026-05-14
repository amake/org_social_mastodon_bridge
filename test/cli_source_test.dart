import 'dart:io';

import 'package:org_social_mastodon_bridge/org_social_mastodon_bridge.dart';
import 'package:org_social_mastodon_bridge/src/org_social/source.dart';
import 'package:test/test.dart';

class MockMastodonClient implements MastodonClient {
  @override
  Future<MastodonInstanceLimits> getInstanceLimits() async =>
      MastodonInstanceLimits.defaultLimits;

  @override
  Future<MastodonPostResult> boostStatus(
    OrgSocialPost post, {
    required String statusId,
  }) => throw UnimplementedError();

  @override
  Future<void> pinStatus(String statusId) => throw UnimplementedError();

  @override
  Future<MastodonPostResult> postStatus(
    OrgSocialPost post, {
    String? inReplyToId,
    String? quoteId,
  }) => throw UnimplementedError();

  @override
  Future<void> unpinStatus(String statusId) => throw UnimplementedError();

  @override
  Future<MastodonPostResult> updateStatus(
    String statusId,
    OrgSocialPost post, {
    List<String>? existingMediaIds,
    List<String>? existingSelectedMedia,
  }) => throw UnimplementedError();

  @override
  Future<void> verifyCredentials() => throw UnimplementedError();
}

void main() {
  group('CLI Source Support', () {
    late OrgSocialService feedService;
    late MockMastodonClient mastodonClient;
    late SyncService syncService;

    setUp(() {
      feedService = OrgSocialService();
      mastodonClient = MockMastodonClient();
      syncService = SyncService(
        feedService: feedService,
        mastodonClient: mastodonClient,
        stateStore: FakeStateStore(),
      );
    });

    test('can load from local file', () async {
      final tempFile = File('test_social.org');
      await tempFile.writeAsString('''
* Posts
** 2024-05-14T12:00:00Z
Hello from local file!
''');

      try {
        final posts = await feedService.fetchSource(FileSource(tempFile.path));
        expect(posts, hasLength(1));
        expect(posts.first.text, contains('Hello from local file!'));
      } finally {
        await tempFile.delete();
      }
    });

    test('can lint local file', () async {
      final tempFile = File('test_lint.org');
      await tempFile.writeAsString('''
* Posts
** 2024-05-14T12:00:00Z
${'A' * 600}
''');

      try {
        final result = await syncService.lintSource(
          FileSource(tempFile.path),
          includeSourceLink: false,
        );
        expect(result.hasErrors, isTrue);
        expect(result.findings.first.code, equals('character_limit_exceeded'));
      } finally {
        await tempFile.delete();
      }
    });

    test('can preview local file', () async {
      final tempFile = File('test_preview.org');
      await tempFile.writeAsString('''
* Posts
** 2024-05-14T12:00:00Z
Preview me!
''');

      try {
        final result = await syncService.previewSource(
          FileSource(tempFile.path),
          includeSourceLink: false,
        );
        expect(result.posts, hasLength(1));
        expect(result.posts.first.text, contains('Preview me!'));
      } finally {
        await tempFile.delete();
      }
    });

    test('preview from local file works without a config file', () async {
      final tempFile = File('test_preview_no_config.org');
      await tempFile.writeAsString('''
* Posts
** 2024-05-14T12:00:00Z
No config needed.
''');

      try {
        final runner = BridgeRunner();
        final result = await runner.previewSource(
          FileSource(tempFile.path),
          configPath: 'does-not-exist.json',
        );
        expect(result.posts, hasLength(1));
        expect(result.posts.first.text, contains('No config needed.'));
      } finally {
        await tempFile.delete();
      }
    });

    test('preview from local file surfaces malformed config errors', () async {
      final tempFile = File('test_preview_bad_config.org');
      final badConfig = File('bad_config.json');
      await tempFile.writeAsString('''
* Posts
** 2024-05-14T12:00:00Z
Bad config should not be ignored.
''');
      await badConfig.writeAsString('{not valid json');

      try {
        final runner = BridgeRunner();
        await expectLater(
          () => runner.previewSource(
            FileSource(tempFile.path),
            configPath: badConfig.path,
          ),
          throwsA(isA<FormatException>()),
        );
      } finally {
        await tempFile.delete();
        await badConfig.delete();
      }
    });
  });
}

class FakeStateStore implements StateStore {
  @override
  Future<SyncState> load() async => SyncState.empty();
  @override
  Future<void> save(SyncState state) async {}
}
