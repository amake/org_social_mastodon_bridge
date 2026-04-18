import 'package:test/test.dart';
import 'package:mastodon_openapi/mastodon_openapi.dart';

// tests for DomainBlock
void main() {
  final instance = DomainBlockBuilder();
  // TODO add properties to the builder and call build()

  group(DomainBlock, () {
    // The SHA256 hash digest of the domain string.
    // String digest
    test('to test the property `digest`', () async {
      // TODO
    });

    // The domain which is blocked. This may be obfuscated or partially censored.
    // String domain
    test('to test the property `domain`', () async {
      // TODO
    });

    // The level to which the domain is blocked.
    // DomainBlockSeverityEnum severity
    test('to test the property `severity`', () async {
      // TODO
    });

    // An optional reason for the domain block.
    // String comment
    test('to test the property `comment`', () async {
      // TODO
    });
  });
}
