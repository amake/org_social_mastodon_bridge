import 'package:test/test.dart';
import 'package:mastodon_openapi/mastodon_openapi.dart';

/// tests for FollowRequestsApi
void main() {
  final instance = MastodonOpenapi().getFollowRequestsApi();

  group(FollowRequestsApi, () {
    // View pending follow requests
    //
    // Version history:  0.0.0 - added
    //
    //Future<BuiltList<Account>> getFollowRequests({ int limit, String maxId, String sinceId }) async
    test('test getFollowRequests', () async {
      // TODO
    });

    // Accept follow request
    //
    // Version history:  0.0.0 - added\\ 3.0.0 - now returns Relationship instead of nothing
    //
    //Future<Relationship> postFollowRequestAuthorize(String accountId) async
    test('test postFollowRequestAuthorize', () async {
      // TODO
    });

    // Reject follow request
    //
    // Version history:  0.0.0 - added\\ 3.0.0 - now returns Relationship instead of nothing
    //
    //Future<Relationship> postFollowRequestReject(String accountId) async
    test('test postFollowRequestReject', () async {
      // TODO
    });
  });
}
