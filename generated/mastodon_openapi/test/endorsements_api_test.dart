import 'package:test/test.dart';
import 'package:mastodon_openapi/mastodon_openapi.dart';

/// tests for EndorsementsApi
void main() {
  final instance = MastodonOpenapi().getEndorsementsApi();

  group(EndorsementsApi, () {
    // View currently featured profiles
    //
    // Accounts that the user is currently featuring on their profile.  Version history:  2.5.0 - added
    //
    //Future<BuiltList<Account>> getEndorsements({ int limit, String maxId, String sinceId }) async
    test('test getEndorsements', () async {
      // TODO
    });
  });
}
