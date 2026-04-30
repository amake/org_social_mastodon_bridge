import '../org_social/post.dart';

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
  Future<MastodonPostResult> postStatus(OrgSocialPost post);

  Future<MastodonPostResult> updateStatus(
    String statusId,
    OrgSocialPost post, {
    List<String>? existingMediaIds,
  });

  Future<void> pinStatus(String statusId);

  Future<void> unpinStatus(String statusId);

  Future<void> verifyCredentials();
}
