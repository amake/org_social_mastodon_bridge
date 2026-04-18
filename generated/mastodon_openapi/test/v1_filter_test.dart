import 'package:test/test.dart';
import 'package:mastodon_openapi/mastodon_openapi.dart';

// tests for V1Filter
void main() {
  final instance = V1FilterBuilder();
  // TODO add properties to the builder and call build()

  group(V1Filter, () {
    // The contexts in which the filter should be applied.
    // BuiltList<FilterContextEnum> context
    test('to test the property `context`', () async {
      // TODO
    });

    // The ID of the filter in the database.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // Should matching entities in home and notifications be dropped by the server? See [implementation guidelines for filters]({{< relref \"api/guidelines#filters\" >}}).
    // bool irreversible
    test('to test the property `irreversible`', () async {
      // TODO
    });

    // The text to be filtered.
    // String phrase
    test('to test the property `phrase`', () async {
      // TODO
    });

    // Should the filter consider word boundaries? See [implementation guidelines for filters]({{< relref \"api/guidelines#filters\" >}}).
    // bool wholeWord
    test('to test the property `wholeWord`', () async {
      // TODO
    });

    // When the filter should no longer be applied.
    // DateTime expiresAt
    test('to test the property `expiresAt`', () async {
      // TODO
    });
  });
}
