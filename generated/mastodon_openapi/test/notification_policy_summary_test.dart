import 'package:test/test.dart';
import 'package:mastodon_openapi/mastodon_openapi.dart';

// tests for NotificationPolicySummary
void main() {
  final instance = NotificationPolicySummaryBuilder();
  // TODO add properties to the builder and call build()

  group(NotificationPolicySummary, () {
    // Number of total non-dismissed filtered notifications. May be inaccurate.
    // int pendingNotificationsCount
    test('to test the property `pendingNotificationsCount`', () async {
      // TODO
    });

    // Number of different accounts from which the user has non-dismissed filtered notifications. Capped at 100.
    // int pendingRequestsCount
    test('to test the property `pendingRequestsCount`', () async {
      // TODO
    });
  });
}
