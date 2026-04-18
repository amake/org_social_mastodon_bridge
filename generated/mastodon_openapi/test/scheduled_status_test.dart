import 'package:test/test.dart';
import 'package:mastodon_openapi/mastodon_openapi.dart';

// tests for ScheduledStatus
void main() {
  final instance = ScheduledStatusBuilder();
  // TODO add properties to the builder and call build()

  group(ScheduledStatus, () {
    // ID of the scheduled status in the database.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // Media that will be attached when the status is posted.
    // BuiltList<MediaAttachment> mediaAttachments
    test('to test the property `mediaAttachments`', () async {
      // TODO
    });

    // ScheduledStatusParams params
    test('to test the property `params`', () async {
      // TODO
    });

    // The timestamp for when the status will be posted.
    // DateTime scheduledAt
    test('to test the property `scheduledAt`', () async {
      // TODO
    });
  });
}
