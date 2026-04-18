import 'package:test/test.dart';
import 'package:mastodon_openapi/mastodon_openapi.dart';

/// tests for DirectoryApi
void main() {
  final instance = MastodonOpenapi().getDirectoryApi();

  group(DirectoryApi, () {
    // View profile directory
    //
    // List accounts visible in the directory.  Version history:  3.0.0 - added
    //
    //Future<BuiltList<Account>> getDirectory({ int limit, bool local, int offset, String order }) async
    test('test getDirectory', () async {
      // TODO
    });
  });
}
