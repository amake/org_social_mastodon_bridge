import '../org_social/post.dart';
import 'status_logic.dart';

final class MastodonPostResult {
  const MastodonPostResult({
    required this.statusId,
    required this.url,
    this.mediaIds = const [],
  });

  final String statusId;
  final Uri? url;
  final List<String> mediaIds;
}

abstract interface class MastodonClient {
  Future<MastodonInstanceLimits> getInstanceLimits();

  Future<MastodonPostResult> postStatus(
    OrgSocialPost post, {
    String? inReplyToId,
    String? quoteId,
  });

  Future<MastodonPostResult> boostStatus(
    OrgSocialPost post, {
    required String statusId,
  });

  Future<MastodonPostResult> updateStatus(
    String statusId,
    OrgSocialPost post, {
    List<String>? existingMediaIds,
    List<String>? existingSelectedMedia,
  });

  Future<void> pinStatus(String statusId);

  Future<void> unpinStatus(String statusId);

  Future<void> verifyCredentials();
}
