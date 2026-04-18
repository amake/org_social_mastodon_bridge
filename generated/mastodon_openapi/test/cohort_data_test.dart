import 'package:test/test.dart';
import 'package:mastodon_openapi/mastodon_openapi.dart';

// tests for CohortData
void main() {
  final instance = CohortDataBuilder();
  // TODO add properties to the builder and call build()

  group(CohortData, () {
    // The timestamp for the start of the bucket, at midnight.
    // DateTime date
    test('to test the property `date`', () async {
      // TODO
    });

    // The percentage rate of users who registered in the specified `period` and were active for the given `date` bucket.
    // num rate
    test('to test the property `rate`', () async {
      // TODO
    });

    // How many users registered in the specified `period` and were active for the given `date` bucket.
    // String value
    test('to test the property `value`', () async {
      // TODO
    });
  });
}
