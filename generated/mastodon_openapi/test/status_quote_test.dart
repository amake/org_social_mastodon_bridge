import 'package:test/test.dart';
import 'package:mastodon_openapi/mastodon_openapi.dart';

// tests for StatusQuote
void main() {
  final instance = StatusQuoteBuilder();
  // TODO add properties to the builder and call build()

  group(StatusQuote, () {
    // The state of the quote. Unknown values should be treated as `unauthorized`.
    // QuoteStateEnum state
    test('to test the property `state`', () async {
      // TODO
    });

    // Status quotedStatus
    test('to test the property `quotedStatus`', () async {
      // TODO
    });

    // The identifier of the status being quoted. This will be `null`, unless the `state` attribute is one of `accepted`, `blocked_account`, `blocked_domain` or `muted_account`, or the wrapping [Status]({{< relref \"entities/status\" >}}) entity has been obtained by calling `DELETE /api/v1/statuses/:id`.
    // String quotedStatusId
    test('to test the property `quotedStatusId`', () async {
      // TODO
    });
  });
}
