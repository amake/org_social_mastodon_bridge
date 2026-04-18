import 'package:test/test.dart';
import 'package:mastodon_openapi/mastodon_openapi.dart';

// tests for CreatePushSubscriptionRequestDataAlerts
void main() {
  final instance = CreatePushSubscriptionRequestDataAlertsBuilder();
  // TODO add properties to the builder and call build()

  group(CreatePushSubscriptionRequestDataAlerts, () {
    // Receive mention notifications? Defaults to false.
    // bool mention
    test('to test the property `mention`', () async {
      // TODO
    });

    // Receive quote notifications? Defaults to false.
    // bool quote
    test('to test the property `quote`', () async {
      // TODO
    });

    // Receive new subscribed account notifications? Defaults to false.
    // bool status
    test('to test the property `status`', () async {
      // TODO
    });

    // Receive reblog notifications? Defaults to false.
    // bool reblog
    test('to test the property `reblog`', () async {
      // TODO
    });

    // Receive follow notifications? Defaults to false.
    // bool follow
    test('to test the property `follow`', () async {
      // TODO
    });

    // Receive follow request notifications? Defaults to false.
    // bool followRequest
    test('to test the property `followRequest`', () async {
      // TODO
    });

    // Receive favourite notifications? Defaults to false.
    // bool favourite
    test('to test the property `favourite`', () async {
      // TODO
    });

    // Receive poll notifications? Defaults to false.
    // bool poll
    test('to test the property `poll`', () async {
      // TODO
    });

    // Receive status edited notifications? Defaults to false.
    // bool update
    test('to test the property `update`', () async {
      // TODO
    });

    // Receive quoted status edit notifications? Defaults to false.
    // bool quotedUpdate
    test('to test the property `quotedUpdate`', () async {
      // TODO
    });

    // Receive new user signup notifications? Defaults to false. Must have a role with the appropriate permissions.
    // bool adminPeriodSignUp
    test('to test the property `adminPeriodSignUp`', () async {
      // TODO
    });

    // Receive new report notifications? Defaults to false. Must have a role with the appropriate permissions.
    // bool adminPeriodReport
    test('to test the property `adminPeriodReport`', () async {
      // TODO
    });
  });
}
