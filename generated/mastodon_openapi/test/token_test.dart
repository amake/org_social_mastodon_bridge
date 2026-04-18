import 'package:test/test.dart';
import 'package:mastodon_openapi/mastodon_openapi.dart';

// tests for Token
void main() {
  final instance = TokenBuilder();
  // TODO add properties to the builder and call build()

  group(Token, () {
    // An OAuth token to be used for authorization.
    // String accessToken
    test('to test the property `accessToken`', () async {
      // TODO
    });

    // When the token was generated.
    // num createdAt
    test('to test the property `createdAt`', () async {
      // TODO
    });

    // The OAuth scopes granted by this token, space-separated.
    // String scope
    test('to test the property `scope`', () async {
      // TODO
    });

    // The OAuth token type. Mastodon uses `Bearer` tokens.
    // String tokenType
    test('to test the property `tokenType`', () async {
      // TODO
    });
  });
}
