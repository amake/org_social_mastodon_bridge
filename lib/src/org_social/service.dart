import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:org_parser/org_parser.dart';

import '../config/config.dart';
import '../logging/logging.dart';
import 'post.dart';
import 'rendering/renderer.dart';

class OrgSocialService {
  OrgSocialService({http.Client? httpClient})
    : _httpClient = httpClient ?? http.Client(),
      _renderer = OrgSocialRenderer();

  final http.Client _httpClient;
  final OrgSocialRenderer _renderer;

  Future<List<OrgSocialPost>> fetchPosts(SourceConfig config) async {
    logger.debug('Fetching Org Social feed from ${config.feedUrl}');
    final response = await _httpClient.get(config.feedUrl);
    if (response.statusCode < 200 || response.statusCode >= 300) {
      throw StateError(
        'Failed to fetch ${config.feedUrl}: HTTP ${response.statusCode}',
      );
    }
    logger.debug(
      'Fetched ${response.body.length} bytes from ${config.feedUrl} '
      '(HTTP ${response.statusCode})',
    );
    return parsePosts(feedUrl: config.feedUrl, content: response.body);
  }

  List<OrgSocialPost> parsePosts({
    required Uri feedUrl,
    required String content,
  }) {
    logger.debug('Parsing Org Social feed from $feedUrl');
    final document = OrgDocument.parse(content);
    final postsSection = document.sections.firstWhere(
      (section) => section.headline.rawTitle?.trim().toLowerCase() == 'posts',
      orElse: () => throw const FormatException('No top-level "Posts" section'),
    );

    final posts = postsSection.sections
        .expand((section) {
          final post = _parsePost(section);
          return post == null ? const <OrgSocialPost>[] : [post];
        })
        .toList(growable: false);

    posts.sort((a, b) => a.publishedAt.compareTo(b.publishedAt));
    logger.debug('Parsed ${posts.length} post candidates from $feedUrl');
    return posts;
  }

  OrgSocialPost? _parsePost(OrgSection section) {
    final headline = section.headline.rawTitle?.trim();
    final propertyId = _firstProperty(section, ':ID:')?.trim();
    final pollEndStr = _firstProperty(section, ':POLL_END:')?.trim();
    final headlineId = _normalizedTimestampOrNull(headline);
    final propertyTimestamp = _normalizedTimestampOrNull(propertyId);
    final sourceId = headlineId ?? propertyTimestamp;
    if (sourceId == null) {
      logger.warning(
        'Skipping post with no valid timestamp ID '
        '(headline=${jsonEncode(headline)}, propertyId=${jsonEncode(propertyId)})',
      );
      return null;
    }

    DateTime? pollEndsAt;
    if (pollEndStr != null) {
      try {
        pollEndsAt = _parsePublishedAt(pollEndStr);
      } catch (e) {
        logger.warning('Malformed :POLL_END: property in post $sourceId: $e');
      }
    }

    final rendered = _renderer.renderSection(section, pollEndsAt: pollEndsAt);
    if (rendered.text.isEmpty && rendered.poll == null) {
      throw FormatException('Post "$sourceId" has no body text or poll');
    }

    if (pollEndsAt != null && rendered.poll == null) {
      logger.warning(
        'Post $sourceId has :POLL_END: but no valid checkbox list for poll',
      );
    }

    logger.debug(
      'Using source ID $sourceId '
      '(headline_preferred=${headlineId != null})',
    );
    return OrgSocialPost(
      sourceId: sourceId,
      text: rendered.text,
      publishedAt: _parsePublishedAt(sourceId),
      headline: headline ?? sourceId,
      headlineId: headlineId,
      language: _firstProperty(section, ':LANG:'),
      contentWarning: _firstProperty(section, ':CONTENT_WARNING:'),
      visibility: _firstProperty(section, ':VISIBILITY:'),
      canonicalUrl: null,
      mediaCandidates: rendered.mediaCandidates,
      poll: rendered.poll,
    );
  }

  String? _firstProperty(OrgSection section, String key) {
    final properties = section.getProperties(key);
    return properties.isEmpty ? null : properties.first;
  }

  DateTime _parsePublishedAt(String value) {
    final normalized = _normalizeTimestamp(value);
    final parsed = DateTime.tryParse(normalized);
    if (parsed == null) {
      throw FormatException('Unable to parse post timestamp "$value"');
    }
    return parsed.toUtc();
  }

  String? _normalizedTimestampOrNull(String? value) {
    if (value == null || value.isEmpty) {
      return null;
    }
    return DateTime.tryParse(_normalizeTimestamp(value)) == null ? null : value;
  }

  String _normalizeTimestamp(String value) {
    return value.replaceFirstMapped(
      RegExp(r'([+-]\d{2})(\d{2})$'),
      (match) => '${match.group(1)}:${match.group(2)}',
    );
  }
}
