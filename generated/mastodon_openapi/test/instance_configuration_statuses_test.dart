import 'package:test/test.dart';
import 'package:mastodon_openapi/mastodon_openapi.dart';

// tests for InstanceConfigurationStatuses
void main() {
  final instance = InstanceConfigurationStatusesBuilder();
  // TODO add properties to the builder and call build()

  group(InstanceConfigurationStatuses, () {
    // Each URL in a status will be assumed to be exactly this many characters.
    // int charactersReservedPerUrl
    test('to test the property `charactersReservedPerUrl`', () async {
      // TODO
    });

    // The maximum number of allowed characters per status.
    // int maxCharacters
    test('to test the property `maxCharacters`', () async {
      // TODO
    });

    // The maximum number of media attachments that can be added to a status.
    // int maxMediaAttachments
    test('to test the property `maxMediaAttachments`', () async {
      // TODO
    });
  });
}
