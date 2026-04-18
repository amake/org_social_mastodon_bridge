import 'package:test/test.dart';
import 'package:mastodon_openapi/mastodon_openapi.dart';

// tests for PostStatusTranslateRequest
void main() {
  final instance = PostStatusTranslateRequestBuilder();
  // TODO add properties to the builder and call build()

  group(PostStatusTranslateRequest, () {
    // String (ISO 639-1 language code). The status content will be translated into this language. Defaults to the user's current locale (which in turn falls back to server default).
    // String lang
    test('to test the property `lang`', () async {
      // TODO
    });
  });
}
