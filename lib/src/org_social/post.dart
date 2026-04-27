enum OrgSocialMediaKind { image, video }

final class OrgSocialMediaCandidate {
  const OrgSocialMediaCandidate({
    required this.url,
    required this.kind,
    this.altText,
  });

  final Uri url;
  final OrgSocialMediaKind kind;
  final String? altText;
}

final class OrgSocialPoll {
  const OrgSocialPoll({
    required this.endsAt,
    required this.options,
    this.question,
  });

  final DateTime endsAt;
  final List<String> options;
  final String? question;
}

final class OrgSocialPost {
  const OrgSocialPost({
    required this.sourceId,
    required this.text,
    required this.publishedAt,
    required this.headline,
    this.headlineId,
    this.language,
    this.contentWarning,
    this.visibility,
    this.tags = const [],
    this.mood,
    this.canonicalUrl,
    this.mediaCandidates = const [],
    this.poll,
  });

  final String sourceId;
  final String text;
  final DateTime publishedAt;
  final String headline;
  final String? headlineId;
  final String? language;
  final String? contentWarning;
  final String? visibility;
  final List<String> tags;
  final String? mood;
  final Uri? canonicalUrl;
  final List<OrgSocialMediaCandidate> mediaCandidates;
  final OrgSocialPoll? poll;
}
