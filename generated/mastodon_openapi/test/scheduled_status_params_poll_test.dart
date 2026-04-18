import 'package:test/test.dart';
import 'package:mastodon_openapi/mastodon_openapi.dart';

// tests for ScheduledStatusParamsPoll
void main() {
  final instance = ScheduledStatusParamsPollBuilder();
  // TODO add properties to the builder and call build()

  group(ScheduledStatusParamsPoll, () {
    // The poll options to be used.
    // BuiltList<String> options
    test('to test the property `options`', () async {
      // TODO
    });

    // How many seconds the poll should last before closing.
    // int expiresIn
    test('to test the property `expiresIn`', () async {
      // TODO
    });

    // Whether the poll allows multiple choices.
    // bool multiple
    test('to test the property `multiple`', () async {
      // TODO
    });

    // Whether the poll should hide total votes until after voting has ended.
    // bool hideTotals
    test('to test the property `hideTotals`', () async {
      // TODO
    });
  });
}
