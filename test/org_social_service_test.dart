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

  test('preserves link urls and basic inline markup', () {
    const content = '''
* Posts
** 2025-04-28T12:00:00+0100

Hello *bold*, /italic/, and ~code~.
See [[https://example.com][Example website]] and https://example.net.
''';

    final service = OrgSocialService();
    final posts = service.parsePosts(
      feedUrl: Uri.parse('https://example.com/social.org'),
      content: content,
    );

    expect(
      posts.single.text,
      'Hello *bold*, _italic_, and `code`.\n'
      'See Example website (https://example.com) and https://example.net.',
    );
  });

  test('collects media candidates while keeping links in body text', () {
    const content = '''
* Posts
** 2025-04-28T12:00:00+0100

Photos:
- [[https://example.com/a.jpg][A]]
- https://example.com/b.png
- https://example.com/c.mp4
''';

    final service = OrgSocialService();
    final posts = service.parsePosts(
      feedUrl: Uri.parse('https://example.com/social.org'),
      content: content,
    );

    expect(posts.single.text, contains('[Image 1]'));
    expect(posts.single.text, contains('[Image 2]'));
    // Third one is video, and since we have images, only the images are selected.
    // So the third one remains as a URL.
    expect(posts.single.text, contains('https://example.com/c.mp4'));
    expect(
      posts.single.mediaCandidates.map((candidate) => candidate.url.toString()),
      [
        'https://example.com/a.jpg',
        'https://example.com/b.png',
        'https://example.com/c.mp4',
      ],
    );
    expect(posts.single.mediaCandidates.map((candidate) => candidate.kind), [
      OrgSocialMediaKind.image,
      OrgSocialMediaKind.image,
      OrgSocialMediaKind.video,
    ]);
  });

  test('removes media links at the end of the post', () {
    const content = '''
* Posts
** 2025-04-28T12:00:00+0100

Look at this:
[[https://example.com/image.jpg]]
''';

    final service = OrgSocialService();
    final posts = service.parsePosts(
      feedUrl: Uri.parse('https://example.com/social.org'),
      content: content,
    );

    expect(posts.single.text, 'Look at this:');
    expect(posts.single.mediaCandidates, hasLength(1));
  });

  test('restores original rendering for unselected media', () {
    const content = '''
* Posts
** 2025-04-28T12:00:00+0100

Photos:
- [[https://example.com/1.jpg][One]]
- [[https://example.com/2.jpg][Two]]
- [[https://example.com/3.jpg][Three]]
- [[https://example.com/4.jpg][Four]]
- [[https://example.com/5.jpg][Five]]
''';

    final service = OrgSocialService();
    final posts = service.parsePosts(
      feedUrl: Uri.parse('https://example.com/social.org'),
      content: content,
    );

    final post = posts.single;
    expect(post.mediaCandidates, hasLength(5));
    // First 4 are selected and become placeholders/removed
    // 5th is unselected and should be restored
    expect(post.text, contains('Five (https://example.com/5.jpg)'));
    expect(post.text, isNot(contains('One (https://example.com/1.jpg)')));
    expect(post.text, contains('[Image 1]'));
  });

  test('uses headline timestamp as canonical source id when present', () {
    const content = '''
* Posts
** 2025-04-28T12:00:00+0100
:PROPERTIES:
:ID: 2024-01-01T00:00:00+0000
:END:

Hello world
''';

    final service = OrgSocialService();
    final posts = service.parsePosts(
      feedUrl: Uri.parse('https://example.com/social.org'),
      content: content,
    );

    expect(posts.single.sourceId, '2025-04-28T12:00:00+0100');
    expect(posts.single.headlineId, '2025-04-28T12:00:00+0100');
  });

  test('uses :ID: timestamp when headline is not a timestamp', () {
    const content = '''
* Posts
** Hello
:PROPERTIES:
:ID: 2025-04-28T12:00:00+0100
:END:

Hello world
''';

    final service = OrgSocialService();
    final posts = service.parsePosts(
      feedUrl: Uri.parse('https://example.com/social.org'),
      content: content,
    );

    expect(posts.single.sourceId, '2025-04-28T12:00:00+0100');
    expect(posts.single.headlineId, isNull);
  });

  test('skips posts without any valid timestamp id', () {
    const content = '''
* Posts
** Hello

Should be skipped
''';

    final service = OrgSocialService();
    final posts = service.parsePosts(
      feedUrl: Uri.parse('https://example.com/social.org'),
      content: content,
    );

    expect(posts, isEmpty);
  });

  test(
    'extracts poll information when :POLL_END: and checkbox list are present',
    () {
      const content = '''
* Posts
** 2025-04-28T12:00:00+0100
:PROPERTIES:
:POLL_END: 2025-04-29T12:00:00+0100
:END:

What is your favorite color?

- [ ] Red
- [ ] Blue
- [ ] Green
''';

      final service = OrgSocialService();
      final posts = service.parsePosts(
        feedUrl: Uri.parse('https://example.com/social.org'),
        content: content,
      );

      final post = posts.single;
      expect(post.poll, isNotNull);
      expect(
        post.poll!.endsAt.isAtSameMomentAs(
          DateTime.parse('2025-04-29T11:00:00Z'),
        ),
        isTrue,
      );
      expect(post.poll!.options, ['Red', 'Blue', 'Green']);
      expect(post.text, 'What is your favorite color?');
    },
  );

  test(
    'extracts alt text from #+CAPTION: and prefers it over link description',
    () {
      const content = '''
* Posts
** 2025-04-28T12:00:00+0100

#+CAPTION: A majestic cat
[[https://example.com/cat.jpg][cat]]

#+CAPTION: A playful dog
https://example.com/dog.png

[[https://example.com/bird.gif][A singing bird]]
''';

      final service = OrgSocialService();
      final posts = service.parsePosts(
        feedUrl: Uri.parse('https://example.com/social.org'),
        content: content,
      );

      final candidates = posts.single.mediaCandidates;
      expect(candidates, hasLength(3));
      expect(candidates[0].altText, 'A majestic cat');
      expect(candidates[1].altText, 'A playful dog');
      expect(candidates[2].altText, 'A singing bird');
      // Ensure #+CAPTION: is not in the body text
      expect(posts.single.text, isNot(contains('#+CAPTION:')));
    },
  );

  test('extracts :VISIBILITY: property', () {
    const content = '''
* Posts
** 2025-04-28T12:00:00+0100
:PROPERTIES:
:VISIBILITY: mention
:END:

Private message
''';

    final service = OrgSocialService();
    final posts = service.parsePosts(
      feedUrl: Uri.parse('https://example.com/social.org'),
      content: content,
    );

    expect(posts.single.visibility, 'mention');
  });

  test('extracts :TAGS: and :MOOD: properties', () {
    const content = '''
* Posts
** 2025-04-28T12:00:00+0100
:PROPERTIES:
:TAGS: emacs org-mode
:MOOD: Happy
:END:

Hello world
''';

    final service = OrgSocialService();
    final posts = service.parsePosts(
      feedUrl: Uri.parse('https://example.com/social.org'),
      content: content,
    );

    expect(posts.single.tags, ['emacs', 'org-mode']);
    expect(posts.single.mood, 'Happy');
  });

  test('does not include drawers in post text', () {
    const content = '''
* Posts
** 2025-04-28T12:00:00+0100
:PROPERTIES:
:ID: 123
:END:
:LOGBOOK:
- Note
:END:
Main content
''';

    final service = OrgSocialService();
    final posts = service.parsePosts(
      feedUrl: Uri.parse('https://example.com/social.org'),
      content: content,
    );

    expect(posts.single.text, 'Main content');
    expect(posts.single.text, isNot(contains(':PROPERTIES:')));
    expect(posts.single.text, isNot(contains(':ID:')));
    expect(posts.single.text, isNot(contains(':LOGBOOK:')));
  });

  test('marks posts as pinned based on #+PINNED: global metadata', () {
    const content = '''
#+PINNED: 2025-04-28T12:00:00+0100

* Posts
** 2025-04-28T12:00:00+0100
Pinned

** 2025-04-28T12:05:00+0100
Not pinned
''';

    final service = OrgSocialService();
    final posts = service.parsePosts(
      feedUrl: Uri.parse('https://example.com/social.org'),
      content: content,
    );

    expect(posts, hasLength(2));
    expect(posts.first.sourceId, '2025-04-28T12:00:00+0100');
    expect(posts.first.pinned, isTrue);
    expect(posts.last.sourceId, '2025-04-28T12:05:00+0100');
    expect(posts.last.pinned, isFalse);
  });

  test('extracts :REPLY_TO: property and parses it as a fragment', () {
    const content = '''
* Posts
** 2025-04-28T12:00:00+0100
Parent

** 2025-04-28T12:05:00+0100
:PROPERTIES:
:REPLY_TO: https://example.com/social.org#2025-04-28T12:00:00+0100
:END:
Child
''';

    final service = OrgSocialService();
    final posts = service.parsePosts(
      feedUrl: Uri.parse('https://example.com/social.org'),
      content: content,
    );

    expect(posts, hasLength(2));
    expect(posts.first.sourceId, '2025-04-28T12:00:00+0100');
    expect(posts.first.replyTo, isNull);
    expect(posts.last.sourceId, '2025-04-28T12:05:00+0100');
    expect(posts.last.replyTo, '2025-04-28T12:00:00+0100');
  });

  test('extracts :REPLY_TO: even if other drawer content is present', () {
    const content = '''
* Posts
** 2025-04-28T12:00:00+0100
:PROPERTIES:
:MOOD:
:REPLY_TO: https://example.com/social.org#2025-04-28T12:00:00+0100
:END:

Parent

** 2025-04-28T12:05:00+0100
:PROPERTIES:
foobar
:REPLY_TO: https://example.com/social.org#2025-04-28T12:00:00+0100
:END:
Child
''';

    final service = OrgSocialService();
    final posts = service.parsePosts(
      feedUrl: Uri.parse('https://example.com/social.org'),
      content: content,
    );

    expect(posts, hasLength(2));
    expect(posts.first.sourceId, '2025-04-28T12:00:00+0100');
    expect(posts.first.replyTo, '2025-04-28T12:00:00+0100');
    expect(posts.last.sourceId, '2025-04-28T12:05:00+0100');
    expect(posts.last.replyTo, '2025-04-28T12:00:00+0100');
  });

  test('ignores :REPLY_TO: if it points to a different feed', () {
    const content = '''
* Posts
** 2025-04-28T12:05:00+0100
:PROPERTIES:
:REPLY_TO: https://other.com/social.org#some-id
:END:
Child
''';

    final service = OrgSocialService();
    final posts = service.parsePosts(
      feedUrl: Uri.parse('https://example.com/social.org'),
      content: content,
    );

    expect(posts.single.replyTo, isNull);
  });
}
