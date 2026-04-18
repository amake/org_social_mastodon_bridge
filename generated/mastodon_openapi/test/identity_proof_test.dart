import 'package:test/test.dart';
import 'package:mastodon_openapi/mastodon_openapi.dart';

// tests for IdentityProof
void main() {
  final instance = IdentityProofBuilder();
  // TODO add properties to the builder and call build()

  group(IdentityProof, () {
    // The account owner's profile URL on the identity provider.
    // String profileUrl
    test('to test the property `profileUrl`', () async {
      // TODO
    });

    // A link to a statement of identity proof, hosted by the identity provider.
    // String proofUrl
    test('to test the property `proofUrl`', () async {
      // TODO
    });

    // The name of the identity provider.
    // String provider
    test('to test the property `provider`', () async {
      // TODO
    });

    // The account owner's username on the identity provider's service.
    // String providerUsername
    test('to test the property `providerUsername`', () async {
      // TODO
    });

    // When the identity proof was last updated.
    // DateTime updatedAt
    test('to test the property `updatedAt`', () async {
      // TODO
    });
  });
}
