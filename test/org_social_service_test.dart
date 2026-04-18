import 'package:org_social_mastodon_bridge/org_social_mastodon_bridge.dart';
import 'package:test/test.dart';

void main() {
  test('extracts posts from posts section and sorts them chronologically', () {
    const content = '''
#+TITLE: Example
* Posts
** 2025-04-28T12:05:00+0100
:PROPERTIES:
:ID: 2025-04-28T12:05:00+0100
:LANG: en
:END:

Second

** 2025-04-28T12:00:00+0100
:PROPERTIES:
:ID: 2025-04-28T12:00:00+0100
:END:

First
''';

    final service = OrgSocialService();
    final posts = service.parsePosts(
      feedUrl: Uri.parse('https://example.com/social.org'),
      content: content,
    );

    expect(posts, hasLength(2));
    expect(posts.first.text, 'First');
    expect(posts.last.text, 'Second');
    expect(posts.last.language, 'en');
  });

  test('falls back to deterministic source ids when ID is absent', () {
    const content = '''
* Posts
** 2025-04-28T12:00:00+0100

Hello world
''';

    final service = OrgSocialService();
    final posts = service.parsePosts(
      feedUrl: Uri.parse('https://example.com/social.org'),
      content: content,
    );

    expect(posts.single.sourceId, startsWith('sha256:'));
  });
}
