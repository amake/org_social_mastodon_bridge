import 'package:test/test.dart';
import 'package:mastodon_openapi/mastodon_openapi.dart';

// tests for FeaturedTag
void main() {
  final instance = FeaturedTagBuilder();
  // TODO add properties to the builder and call build()

  group(FeaturedTag, () {
    // The ID of the featured tag.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // The name of the hashtag being featured.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // The number of authored statuses containing this hashtag.
    // String statusesCount
    test('to test the property `statusesCount`', () async {
      // TODO
    });

    // A link to all statuses by a user that contain this hashtag.
    // String url
    test('to test the property `url`', () async {
      // TODO
    });

    // The date of the last authored status containing this hashtag.
    // Date lastStatusAt
    test('to test the property `lastStatusAt`', () async {
      // TODO
    });
  });
}
