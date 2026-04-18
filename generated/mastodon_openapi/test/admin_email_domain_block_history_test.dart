import 'package:test/test.dart';
import 'package:mastodon_openapi/mastodon_openapi.dart';

// tests for AdminEmailDomainBlockHistory
void main() {
  final instance = AdminEmailDomainBlockHistoryBuilder();
  // TODO add properties to the builder and call build()

  group(AdminEmailDomainBlockHistory, () {
    // The counted accounts signup attempts using that email domain within that day.
    // String accounts
    test('to test the property `accounts`', () async {
      // TODO
    });

    // UNIX timestamp on midnight of the given day.
    // String day
    test('to test the property `day`', () async {
      // TODO
    });

    // The counted IP signup attempts of that email domain within that day.
    // String uses
    test('to test the property `uses`', () async {
      // TODO
    });
  });
}
