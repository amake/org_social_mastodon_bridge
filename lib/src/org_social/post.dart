final class OrgSocialPost {
  const OrgSocialPost({
    required this.sourceId,
    required this.text,
    required this.publishedAt,
    required this.headline,
    this.language,
    this.contentWarning,
    this.canonicalUrl,
  });

  final String sourceId;
  final String text;
  final DateTime publishedAt;
  final String headline;
  final String? language;
  final String? contentWarning;
  final Uri? canonicalUrl;
}
