import 'package:test/test.dart';
import 'package:mastodon_openapi/mastodon_openapi.dart';

// tests for V1InstanceStats
void main() {
  final instance = V1InstanceStatsBuilder();
  // TODO add properties to the builder and call build()

  group(V1InstanceStats, () {
    // Total domains discovered by this instance.
    // int domainCount
    test('to test the property `domainCount`', () async {
      // TODO
    });

    // Total statuses on this instance.
    // int statusCount
    test('to test the property `statusCount`', () async {
      // TODO
    });

    // Total users on this instance.
    // int userCount
    test('to test the property `userCount`', () async {
      // TODO
    });
  });
}
