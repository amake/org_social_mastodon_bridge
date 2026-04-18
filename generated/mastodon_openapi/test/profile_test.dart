import 'package:test/test.dart';
import 'package:mastodon_openapi/mastodon_openapi.dart';

// tests for Profile
void main() {
  final instance = ProfileBuilder();
  // TODO add properties to the builder and call build()

  group(Profile, () {
    // Domains of websites allowed to credit the account.
    // BuiltList<String> attributionDomains
    test('to test the property `attributionDomains`', () async {
      // TODO
    });

    // A textual description of the avatar, to be used for the visually impaired or when avatars do not load.
    // String avatarDescription
    test('to test the property `avatarDescription`', () async {
      // TODO
    });

    // Indicates that the account may perform automated actions, may not be monitored, or identifies as a robot. This is determined by the account's `actor_type` being set to 'Application' or 'Service'.
    // bool bot
    test('to test the property `bot`', () async {
      // TODO
    });

    // The profile's display name.
    // String displayName
    test('to test the property `displayName`', () async {
      // TODO
    });

    // Metadata about the account. Those contain the raw unprocessed names and values.
    // BuiltList<Field> fields
    test('to test the property `fields`', () async {
      // TODO
    });

    // A textual description of the profile header, to be used for the visually impaired or when avatars do not load.
    // String headerDescription
    test('to test the property `headerDescription`', () async {
      // TODO
    });

    // The account id.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // Whether the account allows indexing by search engines.
    // bool indexable
    test('to test the property `indexable`', () async {
      // TODO
    });

    // Whether the account manually approves follow requests.
    // bool locked
    test('to test the property `locked`', () async {
      // TODO
    });

    // The profile's bio or description. Unlike for [Account]({{< relref \"entities/Account\">}}), this is the raw unprocessed text, not the rendered HTML.
    // String note
    test('to test the property `note`', () async {
      // TODO
    });

    // Whether the account wishes to have a “Featured” tab on their profile.
    // bool showFeatured
    test('to test the property `showFeatured`', () async {
      // TODO
    });

    // Whether the account wishes to have a “Media” tab with media attachments on their profile.
    // bool showMedia
    test('to test the property `showMedia`', () async {
      // TODO
    });

    // Whether the account wishes to have replies in the “Media” tab on their profile.
    // bool showMediaReplies
    test('to test the property `showMediaReplies`', () async {
      // TODO
    });

    // An image icon that is shown next to statuses and in the profile. Unlike for [Account]({{< relref \"entities/Account\">}}), this is nullable and will be null if the avatar is unset.
    // String avatar
    test('to test the property `avatar`', () async {
      // TODO
    });

    // A static version of the avatar. Unlike for [Account]({{< relref \"entities/Account\">}}), this is nullable and will be null if the avatar is unset.
    // String avatarStatic
    test('to test the property `avatarStatic`', () async {
      // TODO
    });

    // Whether the account has opted into discovery features such as the profile directory.
    // bool discoverable
    test('to test the property `discoverable`', () async {
      // TODO
    });

    // An image banner that is shown above the profile and in profile cards. Unlike for [Account]({{< relref \"entities/Account\">}}), this is nullable and will be null if the header is unset.
    // String header
    test('to test the property `header`', () async {
      // TODO
    });

    // A static version of the header. Unlike for [Account]({{< relref \"entities/Account\">}}), this is nullable and will be null if the header is unset.
    // String headerStatic
    test('to test the property `headerStatic`', () async {
      // TODO
    });

    // Whether the user hides the contents of their follows and followers collections.
    // bool hideCollections
    test('to test the property `hideCollections`', () async {
      // TODO
    });
  });
}
