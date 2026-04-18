import 'package:test/test.dart';
import 'package:mastodon_openapi/mastodon_openapi.dart';

/// tests for MutesApi
void main() {
  final instance = MastodonOpenapi().getMutesApi();

  group(MutesApi, () {
    // View muted accounts
    //
    // Accounts the user has muted.  Version history:  0.0.0 - added\\ 3.3.0 - added `mute_expires_at`
    //
    //Future<BuiltList<Account>> getMutes({ int limit, String maxId, String sinceId }) async
    test('test getMutes', () async {
      // TODO
    });
  });
}
