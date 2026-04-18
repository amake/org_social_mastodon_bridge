import 'package:test/test.dart';
import 'package:mastodon_openapi/mastodon_openapi.dart';

// tests for UpdateFilterRequest
void main() {
  final instance = UpdateFilterRequestBuilder();
  // TODO add properties to the builder and call build()

  group(UpdateFilterRequest, () {
    // Specify at least one of `home`, `notifications`, `public`, `thread`, `account`.
    // BuiltList<FilterContextEnum> context
    test('to test the property `context`', () async {
      // TODO
    });

    // The text to be filtered.
    // String phrase
    test('to test the property `phrase`', () async {
      // TODO
    });

    // Number of seconds from now that the filter should expire. Otherwise, `null` for a filter that doesn't expire.
    // int expiresIn
    test('to test the property `expiresIn`', () async {
      // TODO
    });

    // Should the server irreversibly drop matching entities from home and notifications? Defaults to false.
    // bool irreversible (default value: false)
    test('to test the property `irreversible`', () async {
      // TODO
    });

    // Should the filter consider word boundaries? Defaults to false.
    // bool wholeWord (default value: false)
    test('to test the property `wholeWord`', () async {
      // TODO
    });
  });
}
