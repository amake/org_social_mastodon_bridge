import 'package:test/test.dart';
import 'package:mastodon_openapi/mastodon_openapi.dart';

// tests for CreateAccountRequest
void main() {
  final instance = CreateAccountRequestBuilder();
  // TODO add properties to the builder and call build()

  group(CreateAccountRequest, () {
    // Whether the user agrees to the local rules, terms, and policies. These should be presented to the user in order to allow them to consent before setting this parameter to TRUE.
    // bool agreement
    test('to test the property `agreement`', () async {
      // TODO
    });

    // The email address to be used for login
    // String email
    test('to test the property `email`', () async {
      // TODO
    });

    // The language of the confirmation email that will be sent.
    // String locale
    test('to test the property `locale`', () async {
      // TODO
    });

    // The password to be used for login
    // String password
    test('to test the property `password`', () async {
      // TODO
    });

    // The desired username for the account
    // String username
    test('to test the property `username`', () async {
      // TODO
    });

    // String ([Date]), required if the server has a minimum age requirement.
    // Date dateOfBirth
    test('to test the property `dateOfBirth`', () async {
      // TODO
    });

    // If registrations require manual approval, this text will be reviewed by moderators.
    // String reason
    test('to test the property `reason`', () async {
      // TODO
    });
  });
}
