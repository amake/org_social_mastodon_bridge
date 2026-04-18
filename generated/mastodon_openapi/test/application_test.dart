import 'package:test/test.dart';
import 'package:mastodon_openapi/mastodon_openapi.dart';

// tests for Application
void main() {
  final instance = ApplicationBuilder();
  // TODO add properties to the builder and call build()

  group(Application, () {
    // The numeric ID of the application.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // The name of the application.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // The registered redirection URI(s) for the application stored as a single string. Multiple URIs are separated by whitespace characters. May contain `\\n` characters when multiple redirect URIs are registered.
    // String redirectUri
    test('to test the property `redirectUri`', () async {
      // TODO
    });

    // The registered redirection URI(s) for the application.
    // BuiltList<String> redirectUris
    test('to test the property `redirectUris`', () async {
      // TODO
    });

    // Array of OAuth scopes
    // BuiltList<OAuthScope> scopes
    test('to test the property `scopes`', () async {
      // TODO
    });

    // Used for Push Streaming API. Returned with [POST /api/v1/apps]({{< relref \"methods/apps#create\" >}}). Equivalent to [WebPushSubscription#server_key]({{< relref \"entities/WebPushSubscription#server_key\" >}}) and [Instance#vapid_public_key]({{< relref \"entities/Instance#vapid_public_key\" >}})
    // String vapidKey
    test('to test the property `vapidKey`', () async {
      // TODO
    });

    // The website associated with the application.
    // String website
    test('to test the property `website`', () async {
      // TODO
    });
  });
}
