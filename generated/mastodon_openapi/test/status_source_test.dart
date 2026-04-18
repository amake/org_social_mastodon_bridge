import 'package:test/test.dart';
import 'package:mastodon_openapi/mastodon_openapi.dart';

// tests for StatusSource
void main() {
  final instance = StatusSourceBuilder();
  // TODO add properties to the builder and call build()

  group(StatusSource, () {
    // ID of the status in the database.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // The plain text used to compose the status's subject or content warning.
    // String spoilerText
    test('to test the property `spoilerText`', () async {
      // TODO
    });

    // The plain text used to compose the status.
    // String text
    test('to test the property `text`', () async {
      // TODO
    });
  });
}
