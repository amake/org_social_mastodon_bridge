import 'package:test/test.dart';
import 'package:mastodon_openapi/mastodon_openapi.dart';

// tests for GroupedNotificationsResults
void main() {
  final instance = GroupedNotificationsResultsBuilder();
  // TODO add properties to the builder and call build()

  group(GroupedNotificationsResults, () {
    // Accounts referenced by grouped notifications.
    // BuiltList<Account> accounts
    test('to test the property `accounts`', () async {
      // TODO
    });

    // The grouped notifications themselves.
    // BuiltList<NotificationGroup> notificationGroups
    test('to test the property `notificationGroups`', () async {
      // TODO
    });

    // Statuses referenced by grouped notifications.
    // BuiltList<Status> statuses
    test('to test the property `statuses`', () async {
      // TODO
    });

    // Partial accounts referenced by grouped notifications. Those are only returned when requesting grouped notifications with `expand_accounts=partial_avatars`.
    // BuiltList<PartialAccountWithAvatar> partialAccounts
    test('to test the property `partialAccounts`', () async {
      // TODO
    });
  });
}
