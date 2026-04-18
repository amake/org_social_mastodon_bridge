import 'package:test/test.dart';
import 'package:mastodon_openapi/mastodon_openapi.dart';

// tests for FilterKeyword
void main() {
  final instance = FilterKeywordBuilder();
  // TODO add properties to the builder and call build()

  group(FilterKeyword, () {
    // The ID of the FilterKeyword in the database.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // The phrase to be matched against.
    // String keyword
    test('to test the property `keyword`', () async {
      // TODO
    });

    // Should the filter consider word boundaries? See [implementation guidelines for filters]({{< relref \"api/guidelines#filters\" >}}).
    // bool wholeWord
    test('to test the property `wholeWord`', () async {
      // TODO
    });
  });
}
