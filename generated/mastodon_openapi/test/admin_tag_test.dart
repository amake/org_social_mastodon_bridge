import 'package:test/test.dart';
import 'package:mastodon_openapi/mastodon_openapi.dart';

// tests for AdminTag
void main() {
  final instance = AdminTagBuilder();
  // TODO add properties to the builder and call build()

  group(AdminTag, () {
    // Whether the hashtag has not been reviewed yet to approve or deny its trending.
    // bool requiresReview
    test('to test the property `requiresReview`', () async {
      // TODO
    });

    // Whether the hashtag has been approved to trend.
    // bool trendable
    test('to test the property `trendable`', () async {
      // TODO
    });

    // Whether the hashtag has not been disabled from auto-linking.
    // bool usable
    test('to test the property `usable`', () async {
      // TODO
    });
  });
}
