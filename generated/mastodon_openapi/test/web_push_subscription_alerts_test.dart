import 'package:test/test.dart';
import 'package:mastodon_openapi/mastodon_openapi.dart';

// tests for WebPushSubscriptionAlerts
void main() {
  final instance = WebPushSubscriptionAlertsBuilder();
  // TODO add properties to the builder and call build()

  group(WebPushSubscriptionAlerts, () {
    // Receive a push notification when a new report has been filed?
    // bool adminPeriodReport
    test('to test the property `adminPeriodReport`', () async {
      // TODO
    });

    // Receive a push notification when a new user has signed up?
    // bool adminPeriodSignUp
    test('to test the property `adminPeriodSignUp`', () async {
      // TODO
    });

    // Receive a push notification when a status you created has been favourited by someone else?
    // bool favourite
    test('to test the property `favourite`', () async {
      // TODO
    });

    // Receive a push notification when someone has followed you?
    // bool follow
    test('to test the property `follow`', () async {
      // TODO
    });

    // Receive a push notification when someone has requested to followed you?
    // bool followRequest
    test('to test the property `followRequest`', () async {
      // TODO
    });

    // Receive a push notification when someone else has mentioned you in a status?
    // bool mention
    test('to test the property `mention`', () async {
      // TODO
    });

    // Receive a push notification when a poll you voted in or created has ended?
    // bool poll
    test('to test the property `poll`', () async {
      // TODO
    });

    // Receive a push notification when a status you created has been boosted by someone else?
    // bool reblog
    test('to test the property `reblog`', () async {
      // TODO
    });

    // Receive a push notification when a subscribed account posts a status?
    // bool status
    test('to test the property `status`', () async {
      // TODO
    });

    // Receive a push notification when a status you interacted with has been edited?
    // bool update
    test('to test the property `update`', () async {
      // TODO
    });
  });
}
