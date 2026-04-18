import 'package:test/test.dart';
import 'package:mastodon_openapi/mastodon_openapi.dart';

// tests for InstanceApiVersions
void main() {
  final instance = InstanceApiVersionsBuilder();
  // TODO add properties to the builder and call build()

  group(InstanceApiVersions, () {
    // API version number that increments with substantial API changes. Clients can use this value to determine API compatibility rather than parsing complex version strings like \"4.4+hometown-123\" from forks or nightly builds. This number increases independently of the human-readable version number.
    // int mastodon
    test('to test the property `mastodon`', () async {
      // TODO
    });
  });
}
