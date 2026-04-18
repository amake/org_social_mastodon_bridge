import 'package:test/test.dart';
import 'package:mastodon_openapi/mastodon_openapi.dart';

// tests for AdminCohort
void main() {
  final instance = AdminCohortBuilder();
  // TODO add properties to the builder and call build()

  group(AdminCohort, () {
    // Retention data for users who registered during the given period.
    // BuiltList<CohortData> data
    test('to test the property `data`', () async {
      // TODO
    });

    // The size of the bucket for the returned data.
    // AdminCohortFrequencyEnum frequency
    test('to test the property `frequency`', () async {
      // TODO
    });

    // The timestamp for the start of the period, at midnight.
    // DateTime period
    test('to test the property `period`', () async {
      // TODO
    });
  });
}
