import 'package:org_social_mastodon_bridge/org_social_mastodon_bridge.dart';
import 'package:test/test.dart';

void main() {
  test('loads file state config', () {
    final config = AppConfig.fromJson({
      'source': {'feed_url': 'https://example.com/social.org'},
      'mastodon': {
        'base_url': 'https://mastodon.social',
        'access_token': 'token',
      },
      'state': {'type': 'file', 'path': 'state.json'},
    });

    expect(config.source.feedUrl.toString(), 'https://example.com/social.org');
    expect(config.mastodon.visibility, 'public');
    expect(config.state, isA<FileStateConfig>());
  });

  test('loads s3 state config', () {
    final config = AppConfig.fromJson({
      'source': {'feed_url': 'https://example.com/social.org'},
      'mastodon': {
        'base_url': 'https://mastodon.social',
        'access_token': 'token',
      },
      'state': {
        'type': 's3',
        'bucket': 'bucket',
        'key': 'state.json',
        'region': 'us-east-1',
      },
    });

    expect(config.state, isA<S3StateConfig>());
  });

  test('loads dual-state config', () {
    final config = AppConfig.fromJson({
      'source': {'feed_url': 'https://example.com/social.org'},
      'mastodon': {
        'base_url': 'https://mastodon.social',
        'access_token': 'token',
      },
      'state': {'type': 'file', 'path': 'state.json'},
      'remote_state': {
        'type': 's3',
        'bucket': 'bucket',
        'key': 'state.json',
        'region': 'us-east-1',
      },
    });

    expect(config.state, isA<FileStateConfig>());
    expect(config.remoteState, isA<S3StateConfig>());
  });
}
