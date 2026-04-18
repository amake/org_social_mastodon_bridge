import 'package:test/test.dart';
import 'package:mastodon_openapi/mastodon_openapi.dart';

// tests for InstanceConfigurationPolls
void main() {
  final instance = InstanceConfigurationPollsBuilder();
  // TODO add properties to the builder and call build()

  group(InstanceConfigurationPolls, () {
    // Each poll option is allowed to have this many characters.
    // int maxCharactersPerOption
    test('to test the property `maxCharactersPerOption`', () async {
      // TODO
    });

    // The longest allowed poll duration, in seconds.
    // int maxExpiration
    test('to test the property `maxExpiration`', () async {
      // TODO
    });

    // Each poll is allowed to have up to this many options.
    // int maxOptions
    test('to test the property `maxOptions`', () async {
      // TODO
    });

    // The shortest allowed poll duration, in seconds.
    // int minExpiration
    test('to test the property `minExpiration`', () async {
      // TODO
    });
  });
}
