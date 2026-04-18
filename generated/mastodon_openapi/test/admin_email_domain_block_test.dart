import 'package:test/test.dart';
import 'package:mastodon_openapi/mastodon_openapi.dart';

// tests for AdminEmailDomainBlock
void main() {
  final instance = AdminEmailDomainBlockBuilder();
  // TODO add properties to the builder and call build()

  group(AdminEmailDomainBlock, () {
    // When the email domain was disallowed from signups.
    // DateTime createdAt
    test('to test the property `createdAt`', () async {
      // TODO
    });

    // The email domain that is not allowed to be used for signups.
    // String domain
    test('to test the property `domain`', () async {
      // TODO
    });

    // Usage statistics for given days (typically the past week).
    // BuiltList<AdminEmailDomainBlockHistory> history
    test('to test the property `history`', () async {
      // TODO
    });

    // The ID of the EmailDomainBlock in the database.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });
  });
}
