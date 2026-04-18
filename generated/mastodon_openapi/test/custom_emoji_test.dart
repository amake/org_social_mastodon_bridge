import 'package:test/test.dart';
import 'package:mastodon_openapi/mastodon_openapi.dart';

// tests for CustomEmoji
void main() {
  final instance = CustomEmojiBuilder();
  // TODO add properties to the builder and call build()

  group(CustomEmoji, () {
    // The name of the custom emoji.
    // String shortcode
    test('to test the property `shortcode`', () async {
      // TODO
    });

    // A link to a static copy of the custom emoji.
    // String staticUrl
    test('to test the property `staticUrl`', () async {
      // TODO
    });

    // A link to the custom emoji.
    // String url
    test('to test the property `url`', () async {
      // TODO
    });

    // Whether this Emoji should be visible in the picker or unlisted.
    // bool visibleInPicker
    test('to test the property `visibleInPicker`', () async {
      // TODO
    });

    // Used for sorting custom emoji in the picker.
    // String category
    test('to test the property `category`', () async {
      // TODO
    });
  });
}
