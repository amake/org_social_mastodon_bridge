import 'package:test/test.dart';
import 'package:mastodon_openapi/mastodon_openapi.dart';

// tests for StatusEdit
void main() {
  final instance = StatusEditBuilder();
  // TODO add properties to the builder and call build()

  group(StatusEdit, () {
    // The account that published this revision.
    // Account account
    test('to test the property `account`', () async {
      // TODO
    });

    // The content of the status at this revision.
    // String content
    test('to test the property `content`', () async {
      // TODO
    });

    // The timestamp of when the revision was published.
    // DateTime createdAt
    test('to test the property `createdAt`', () async {
      // TODO
    });

    // Any custom emoji that are used in the current revision.
    // BuiltList<CustomEmoji> emojis
    test('to test the property `emojis`', () async {
      // TODO
    });

    // The current state of the media attachments at this revision.
    // BuiltList<MediaAttachment> mediaAttachments
    test('to test the property `mediaAttachments`', () async {
      // TODO
    });

    // Whether the status was marked sensitive at this revision.
    // bool sensitive
    test('to test the property `sensitive`', () async {
      // TODO
    });

    // The content of the subject or content warning at this revision.
    // String spoilerText
    test('to test the property `spoilerText`', () async {
      // TODO
    });

    // StatusEditPoll poll
    test('to test the property `poll`', () async {
      // TODO
    });

    // StatusQuote quote
    test('to test the property `quote`', () async {
      // TODO
    });
  });
}
