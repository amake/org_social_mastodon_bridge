import 'package:test/test.dart';
import 'package:mastodon_openapi/mastodon_openapi.dart';

// tests for PartialAccountWithAvatar
void main() {
  final instance = PartialAccountWithAvatarBuilder();
  // TODO add properties to the builder and call build()

  group(PartialAccountWithAvatar, () {
    // The WebFinger account URI. Equal to `username` for local users, or `username@domain` for remote users.
    // String acct
    test('to test the property `acct`', () async {
      // TODO
    });

    // An image icon that is shown next to statuses and in the profile.
    // String avatar
    test('to test the property `avatar`', () async {
      // TODO
    });

    // A static version of the avatar. Equal to `avatar` if its value is a static image; different if `avatar` is an animated GIF.
    // String avatarStatic
    test('to test the property `avatarStatic`', () async {
      // TODO
    });

    // Indicates that the account may perform automated actions, may not be monitored, or identifies as a robot.
    // bool bot
    test('to test the property `bot`', () async {
      // TODO
    });

    // The account id.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // Whether the account manually approves follow requests.
    // bool locked
    test('to test the property `locked`', () async {
      // TODO
    });

    // The location of the user's profile page.
    // String url
    test('to test the property `url`', () async {
      // TODO
    });
  });
}
