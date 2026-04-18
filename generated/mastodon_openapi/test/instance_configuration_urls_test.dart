import 'package:test/test.dart';
import 'package:mastodon_openapi/mastodon_openapi.dart';

// tests for InstanceConfigurationUrls
void main() {
  final instance = InstanceConfigurationUrlsBuilder();
  // TODO add properties to the builder and call build()

  group(InstanceConfigurationUrls, () {
    // The URL of the server's about page.
    // String about
    test('to test the property `about`', () async {
      // TODO
    });

    // The URL of the server's privacy policy.
    // String privacyPolicy
    test('to test the property `privacyPolicy`', () async {
      // TODO
    });

    // The URL of the server's status page, if configured.
    // String status
    test('to test the property `status`', () async {
      // TODO
    });

    // The Websockets URL for connecting to the streaming API.
    // String streaming
    test('to test the property `streaming`', () async {
      // TODO
    });

    // The URL of the server's current terms of service, if any.
    // String termsOfService
    test('to test the property `termsOfService`', () async {
      // TODO
    });
  });
}
