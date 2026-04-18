import 'package:test/test.dart';
import 'package:mastodon_openapi/mastodon_openapi.dart';

// tests for Rule
void main() {
  final instance = RuleBuilder();
  // TODO add properties to the builder and call build()

  group(Rule, () {
    // An identifier for the rule.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // The rule to be followed.
    // String text
    test('to test the property `text`', () async {
      // TODO
    });

    // Longer-form description of the rule.
    // String hint
    test('to test the property `hint`', () async {
      // TODO
    });

    // Available translations for this rule's `text` and `hint`, as a Hash where keys are locale codes and values are hashes with `text` and `hint` keys.
    // JsonObject translations
    test('to test the property `translations`', () async {
      // TODO
    });
  });
}
