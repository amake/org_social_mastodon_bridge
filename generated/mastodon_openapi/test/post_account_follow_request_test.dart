import 'package:test/test.dart';
import 'package:mastodon_openapi/mastodon_openapi.dart';

// tests for PostAccountFollowRequest
void main() {
  final instance = PostAccountFollowRequestBuilder();
  // TODO add properties to the builder and call build()

  group(PostAccountFollowRequest, () {
    // Array of String (ISO 639-1 language two-letter code). Filter received statuses for these languages. If not provided, you will receive this account's posts in all languages.
    // BuiltList<String> languages
    test('to test the property `languages`', () async {
      // TODO
    });

    // Receive notifications when this account posts a status? Defaults to false.
    // bool notify (default value: false)
    test('to test the property `notify`', () async {
      // TODO
    });

    // Receive this account's reblogs in home timeline? Defaults to true.
    // bool reblogs (default value: true)
    test('to test the property `reblogs`', () async {
      // TODO
    });
  });
}
