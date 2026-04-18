import '../org_social/post.dart';

final class MastodonPostResult {
  const MastodonPostResult({required this.statusId, required this.url});

  final String statusId;
  final Uri? url;
}

abstract interface class MastodonClient {
  Future<MastodonPostResult> postStatus(OrgSocialPost post);

  Future<void> verifyCredentials();
}
