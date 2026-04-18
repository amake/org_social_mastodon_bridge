import 'package:test/test.dart';
import 'package:mastodon_openapi/mastodon_openapi.dart';

// tests for Conversation
void main() {
  final instance = ConversationBuilder();
  // TODO add properties to the builder and call build()

  group(Conversation, () {
    // Participants in the conversation.
    // BuiltList<Account> accounts
    test('to test the property `accounts`', () async {
      // TODO
    });

    // The ID of the conversation in the database.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // Is the conversation currently marked as unread?
    // bool unread
    test('to test the property `unread`', () async {
      // TODO
    });

    // Status lastStatus
    test('to test the property `lastStatus`', () async {
      // TODO
    });
  });
}
