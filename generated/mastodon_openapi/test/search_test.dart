import 'package:test/test.dart';
import 'package:mastodon_openapi/mastodon_openapi.dart';

// tests for Search
void main() {
  final instance = SearchBuilder();
  // TODO add properties to the builder and call build()

  group(Search, () {
    // Accounts which match the given query
    // BuiltList<Account> accounts
    test('to test the property `accounts`', () async {
      // TODO
    });

    // Hashtags which match the given query
    // BuiltList<Tag> hashtags
    test('to test the property `hashtags`', () async {
      // TODO
    });

    // Statuses which match the given query
    // BuiltList<Status> statuses
    test('to test the property `statuses`', () async {
      // TODO
    });
  });
}
