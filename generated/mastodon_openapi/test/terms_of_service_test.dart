import 'package:test/test.dart';
import 'package:mastodon_openapi/mastodon_openapi.dart';

// tests for TermsOfService
void main() {
  final instance = TermsOfServiceBuilder();
  // TODO add properties to the builder and call build()

  group(TermsOfService, () {
    // The rendered HTML content of the terms of service.
    // String content
    test('to test the property `content`', () async {
      // TODO
    });

    // Whether these terms of service are currently in effect.
    // bool effective
    test('to test the property `effective`', () async {
      // TODO
    });

    // The date these terms of service are coming or have come in effect.
    // Date effectiveDate
    test('to test the property `effectiveDate`', () async {
      // TODO
    });

    // If there are newer terms of service, their effective date.
    // Date succeededBy
    test('to test the property `succeededBy`', () async {
      // TODO
    });
  });
}
