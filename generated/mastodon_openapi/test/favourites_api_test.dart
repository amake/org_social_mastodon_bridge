import 'package:test/test.dart';
import 'package:mastodon_openapi/mastodon_openapi.dart';

/// tests for FavouritesApi
void main() {
  final instance = MastodonOpenapi().getFavouritesApi();

  group(FavouritesApi, () {
    // View favourited statuses
    //
    // Statuses the user has favourited.
    //
    //Future<BuiltList<Status>> getFavourites({ int limit, String maxId, String minId, String sinceId }) async
    test('test getFavourites', () async {
      // TODO
    });
  });
}
