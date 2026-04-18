import 'package:test/test.dart';
import 'package:mastodon_openapi/mastodon_openapi.dart';

// tests for InstanceUsageUsers
void main() {
  final instance = InstanceUsageUsersBuilder();
  // TODO add properties to the builder and call build()

  group(InstanceUsageUsers, () {
    // The number of active users in the past 4 weeks. This is set to zero for server with `configuration[limited_federation]`.
    // int activeMonth
    test('to test the property `activeMonth`', () async {
      // TODO
    });
  });
}
