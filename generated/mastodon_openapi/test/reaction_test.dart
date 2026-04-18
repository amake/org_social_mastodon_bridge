import 'package:test/test.dart';
import 'package:mastodon_openapi/mastodon_openapi.dart';

// tests for Reaction
void main() {
  final instance = ReactionBuilder();
  // TODO add properties to the builder and call build()

  group(Reaction, () {
    // The total number of users who have added this reaction.
    // int count
    test('to test the property `count`', () async {
      // TODO
    });

    // The emoji used for the reaction. Either a unicode emoji, or a custom emoji's shortcode.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // If there is a currently authorized user: Have you added this reaction?
    // bool me
    test('to test the property `me`', () async {
      // TODO
    });

    // If the reaction is a custom emoji: A link to a non-animated version of the custom emoji.
    // String staticUrl
    test('to test the property `staticUrl`', () async {
      // TODO
    });

    // If the reaction is a custom emoji: A link to the custom emoji.
    // String url
    test('to test the property `url`', () async {
      // TODO
    });
  });
}
