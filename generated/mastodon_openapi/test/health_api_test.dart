import 'package:test/test.dart';
import 'package:mastodon_openapi/mastodon_openapi.dart';

/// tests for HealthApi
void main() {
  final instance = MastodonOpenapi().getHealthApi();

  group(HealthApi, () {
    // Get basic health status as JSON
    //
    // Version history:  3.0.0 - added
    //
    //Future getHealth() async
    test('test getHealth', () async {
      // TODO
    });
  });
}
