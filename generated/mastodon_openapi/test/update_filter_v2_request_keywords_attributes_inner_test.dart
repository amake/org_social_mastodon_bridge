import 'package:test/test.dart';
import 'package:mastodon_openapi/mastodon_openapi.dart';

// tests for UpdateFilterV2RequestKeywordsAttributesInner
void main() {
  final instance = UpdateFilterV2RequestKeywordsAttributesInnerBuilder();
  // TODO add properties to the builder and call build()

  group(UpdateFilterV2RequestKeywordsAttributesInner, () {
    // A keyword to be added to the newly-created filter group.
    // String keyword
    test('to test the property `keyword`', () async {
      // TODO
    });

    // Whether the keyword should consider word boundaries.
    // bool wholeWord
    test('to test the property `wholeWord`', () async {
      // TODO
    });

    // Provide the ID of an existing keyword to modify it, instead of creating a new keyword.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // If true, will remove the keyword with the given ID.
    // bool destroy
    test('to test the property `destroy`', () async {
      // TODO
    });
  });
}
