import 'package:test/test.dart';
import 'package:mastodon_openapi/mastodon_openapi.dart';

// tests for CreatePushSubscriptionRequestSubscription
void main() {
  final instance = CreatePushSubscriptionRequestSubscriptionBuilder();
  // TODO add properties to the builder and call build()

  group(CreatePushSubscriptionRequestSubscription, () {
    // CreatePushSubscriptionRequestSubscriptionKeys keys
    test('to test the property `keys`', () async {
      // TODO
    });

    // The endpoint URL that is called when a notification event occurs.
    // String endpoint
    test('to test the property `endpoint`', () async {
      // TODO
    });

    // Follow standardized webpush (RFC8030+RFC8291+RFC8292) ? Else follow legacy webpush (unpublished version, 4th draft of RFC8291 and 1st draft of RFC8292). Defaults to false.
    // bool standard
    test('to test the property `standard`', () async {
      // TODO
    });
  });
}
