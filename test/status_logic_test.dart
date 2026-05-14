import 'package:org_social_mastodon_bridge/org_social_mastodon_bridge.dart';
import 'package:test/test.dart';

void main() {
  test('composes mood and tags into final status text', () {
    final post = OrgSocialPost(
      sourceId: 'post',
      text: 'Hello world',
      publishedAt: DateTime.utc(2025, 4, 28, 12),
      headline: 'post',
      orgMarkup: '* post',
      mood: 'focused',
      tags: const ['org', 'mastodon'],
    );

    final composed = composeMastodonStatus(post);

    expect(composed.text, 'Hello world\n\nMood: focused\n\n#org #mastodon');
    expect(composed.pollHandling, MastodonPollHandling.none);
  });

  test('falls back to appending poll options when poll is expired', () {
    final post = OrgSocialPost(
      sourceId: 'poll',
      text: 'Question',
      publishedAt: DateTime.utc(2025, 4, 28, 12),
      headline: 'poll',
      orgMarkup: '* poll',
      poll: OrgSocialPoll(
        endsAt: DateTime.utc(2025, 4, 28, 12),
        options: const ['A', 'B'],
      ),
    );

    final composed = composeMastodonStatus(
      post,
      now: DateTime.utc(2025, 4, 28, 12, 1),
    );

    expect(composed.pollHandling, MastodonPollHandling.appendToText);
    expect(composed.text, 'Question\n\n- [ ] A\n- [ ] B');
  });

  test('counts URLs using instance reserved length', () {
    final count = countMastodonCharacters(
      'Look https://example.com/test).',
      charactersReservedPerUrl: 23,
    );

    expect(count, 'Look '.runes.length + 23 + 2);
  });
}
