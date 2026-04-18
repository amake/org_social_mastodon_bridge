import 'package:test/test.dart';
import 'package:mastodon_openapi/mastodon_openapi.dart';

// tests for TrendsLinkHistoryInner
void main() {
  final instance = TrendsLinkHistoryInnerBuilder();
  // TODO add properties to the builder and call build()

  group(TrendsLinkHistoryInner, () {
    // The counted accounts using the link within that day.
    // String accounts
    test('to test the property `accounts`', () async {
      // TODO
    });

    // UNIX timestamp on midnight of the given day.
    // String day
    test('to test the property `day`', () async {
      // TODO
    });

    // The counted statuses using the link within that day.
    // String uses
    test('to test the property `uses`', () async {
      // TODO
    });
  });
}
