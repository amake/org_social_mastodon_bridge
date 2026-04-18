import 'package:test/test.dart';
import 'package:mastodon_openapi/mastodon_openapi.dart';

// tests for CreatePushSubscriptionRequestSubscriptionKeys
void main() {
  final instance = CreatePushSubscriptionRequestSubscriptionKeysBuilder();
  // TODO add properties to the builder and call build()

  group(CreatePushSubscriptionRequestSubscriptionKeys, () {
    // User agent public key. Base64 encoded string of a public key from a ECDH keypair using the `prime256v1` curve.
    // String p256dh
    test('to test the property `p256dh`', () async {
      // TODO
    });

    // Auth secret. Base64 encoded string of 16 bytes of random data.
    // String auth
    test('to test the property `auth`', () async {
      // TODO
    });
  });
}
