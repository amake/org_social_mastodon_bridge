import 'package:test/test.dart';
import 'package:mastodon_openapi/mastodon_openapi.dart';

// tests for UpdateStatusInteractionPolicyRequest
void main() {
  final instance = UpdateStatusInteractionPolicyRequestBuilder();
  // TODO add properties to the builder and call build()

  group(UpdateStatusInteractionPolicyRequest, () {
    // String (Enumerable, oneOf). Sets who is allowed to quote the status. Ignored if `visibility` is `private` or `direct`, in which case the policy will always be set to `nobody`. Changing the policy does not invalidate past quotes.
    // String quoteApprovalPolicy
    test('to test the property `quoteApprovalPolicy`', () async {
      // TODO
    });
  });
}
