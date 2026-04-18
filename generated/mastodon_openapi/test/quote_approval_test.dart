import 'package:test/test.dart';
import 'package:mastodon_openapi/mastodon_openapi.dart';

// tests for QuoteApproval
void main() {
  final instance = QuoteApprovalBuilder();
  // TODO add properties to the builder and call build()

  group(QuoteApproval, () {
    // Describes who is expected to be able to quote that status and have the quote automatically authorized. An empty list means that nobody is expected to be able to quote this post. Other values may be added in the future, so unknown values should be treated as `unsupported_policy`.
    // BuiltList<QuoteApprovalAutomaticEnum> automatic
    test('to test the property `automatic`', () async {
      // TODO
    });

    // Describes how this status' quote policy applies to the current user.
    // QuoteApprovalCurrentUserEnum currentUser
    test('to test the property `currentUser`', () async {
      // TODO
    });

    // Describes who is expected to have their quotes of this status be manually reviewed by the author before being accepted. An empty list means that nobody is expected to be able to quote this post. Other values may be added in the future, so unknown values should be treated as `unsupported_policy`.
    // BuiltList<QuoteApprovalAutomaticEnum> manual
    test('to test the property `manual`', () async {
      // TODO
    });
  });
}
