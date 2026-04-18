import 'package:test/test.dart';
import 'package:mastodon_openapi/mastodon_openapi.dart';

// tests for TagHistory
void main() {
  final instance = TagHistoryBuilder();
  // TODO add properties to the builder and call build()

  group(TagHistory, () {
    // The total of accounts using the tag within that day.
    // String accounts
    test('to test the property `accounts`', () async {
      // TODO
    });

    // UNIX timestamp on midnight of the given day.
    // String day
    test('to test the property `day`', () async {
      // TODO
    });

    // The counted usage of the tag within that day.
    // String uses
    test('to test the property `uses`', () async {
      // TODO
    });
  });
}
