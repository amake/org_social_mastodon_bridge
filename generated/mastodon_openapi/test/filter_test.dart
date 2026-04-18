import 'package:test/test.dart';
import 'package:mastodon_openapi/mastodon_openapi.dart';

// tests for Filter
void main() {
  final instance = FilterBuilder();
  // TODO add properties to the builder and call build()

  group(Filter, () {
    // The contexts in which the filter should be applied.
    // BuiltList<FilterContextEnum> context
    test('to test the property `context`', () async {
      // TODO
    });

    // The action to be taken when a status matches this filter.
    // FilterFilterActionEnum filterAction
    test('to test the property `filterAction`', () async {
      // TODO
    });

    // The ID of the Filter in the database.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // A title given by the user to name the filter.
    // String title
    test('to test the property `title`', () async {
      // TODO
    });

    // When the filter should no longer be applied.
    // DateTime expiresAt
    test('to test the property `expiresAt`', () async {
      // TODO
    });

    // The keywords grouped under this filter. Omitted when part of a [FilterResult]({{< relref \"entities/FilterResult\" >}}).
    // BuiltList<FilterKeyword> keywords
    test('to test the property `keywords`', () async {
      // TODO
    });

    // The statuses grouped under this filter. Omitted when part of a [FilterResult]({{< relref \"entities/FilterResult\" >}}).
    // BuiltList<FilterStatus> statuses
    test('to test the property `statuses`', () async {
      // TODO
    });
  });
}
