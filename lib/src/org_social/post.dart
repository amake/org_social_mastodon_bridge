import 'dart:convert';
import 'package:crypto/crypto.dart';

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
    required this.orgMarkup,
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
  final String orgMarkup;
  final String? headlineId;
  final String? language;
  final String? contentWarning;
  final String? visibility;
  final List<String> tags;
  final String? mood;
  final Uri? canonicalUrl;
  final List<OrgSocialMediaCandidate> mediaCandidates;
  final OrgSocialPoll? poll;

  String get contentHash => sha256.convert(utf8.encode(orgMarkup)).toString();

  String get renderedHash {
    final data = {
      'text': text,
      'lang': language,
      'cw': contentWarning,
      'vis': visibility,
      'tags': tags,
      'mood': mood,
      'poll': poll == null
          ? null
          : {
              'options': poll!.options,
              'endsAt': poll!.endsAt.toUtc().toIso8601String(),
            },
      'media': mediaCandidates
          .map((m) => {'url': m.url.toString(), 'alt': m.altText})
          .toList(),
    };
    return sha256.convert(utf8.encode(json.encode(data))).toString();
  }

  static List<OrgSocialMediaCandidate> selectMediaCandidates(
    List<OrgSocialMediaCandidate> candidates,
  ) {
    final selected = <OrgSocialMediaCandidate>[];
    for (final candidate in candidates) {
      if (selected.isEmpty) {
        selected.add(candidate);
        if (candidate.kind == OrgSocialMediaKind.video) {
          break;
        }
        continue;
      }

      final selectedKind = selected.first.kind;
      if (selectedKind == OrgSocialMediaKind.video) {
        break;
      }
      if (candidate.kind == OrgSocialMediaKind.video) {
        continue;
      }
      if (selected.length >= 4) {
        continue;
      }
      selected.add(candidate);
    }
    return selected;
  }
}
