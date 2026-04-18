import 'package:test/test.dart';
import 'package:mastodon_openapi/mastodon_openapi.dart';

// tests for PutPushSubscriptionRequestDataAlerts
void main() {
  final instance = PutPushSubscriptionRequestDataAlertsBuilder();
  // TODO add properties to the builder and call build()

  group(PutPushSubscriptionRequestDataAlerts, () {
    // Receive mention notifications? Defaults to false.
    // bool mention
    test('to test the property `mention`', () async {
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
