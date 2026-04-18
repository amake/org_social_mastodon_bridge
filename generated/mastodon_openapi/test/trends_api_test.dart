import 'package:test/test.dart';
import 'package:mastodon_openapi/mastodon_openapi.dart';

/// tests for TrendsApi
void main() {
  final instance = MastodonOpenapi().getTrendsApi();

  group(TrendsApi, () {
    // View trending links
    //
    // Links that have been shared more than others.  Version history:  3.5.0 - added
    //
    //Future<BuiltList<TrendsLink>> getTrendLinks({ int limit, int offset }) async
    test('test getTrendLinks', () async {
      // TODO
    });

    // View trending statuses
    //
    // Statuses that have been interacted with more than others.  Version history:  3.5.0 - added
    //
    //Future<BuiltList<Status>> getTrendStatuses({ int limit, int offset }) async
    test('test getTrendStatuses', () async {
      // TODO
    });

    // View trending tags
    //
    // Tags that are being used more frequently within the past week.  Version history:  3.0.0 - added\\ 3.5.0 - method signature changed from `GET /api/v1/trends` to `GET /api/v1/trends/tags`. The former is a deprecated alias that may be removed in the future.
    //
    //Future<BuiltList<Tag>> getTrendTags({ int limit, int offset }) async
    test('test getTrendTags', () async {
      // TODO
    });
  });
}
