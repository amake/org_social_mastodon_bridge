import 'package:test/test.dart';
import 'package:mastodon_openapi/mastodon_openapi.dart';

// tests for PostAccountMuteRequest
void main() {
  final instance = PostAccountMuteRequestBuilder();
  // TODO add properties to the builder and call build()

  group(PostAccountMuteRequest, () {
    // How long the mute should last, in seconds. Defaults to 0 (indefinite).
    // int duration (default value: 0)
    test('to test the property `duration`', () async {
      // TODO
    });

    // Mute notifications in addition to statuses? Defaults to true.
    // bool notifications (default value: true)
    test('to test the property `notifications`', () async {
      // TODO
    });
  });
}
