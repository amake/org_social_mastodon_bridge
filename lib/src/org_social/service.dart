import 'dart:async';
import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:http/http.dart' as http;
import 'package:org_parser/org_parser.dart';

import '../config/config.dart';
import 'post.dart';

class OrgSocialService {
  OrgSocialService({http.Client? httpClient})
    : _httpClient = httpClient ?? http.Client();

  final http.Client _httpClient;

  Future<List<OrgSocialPost>> fetchPosts(SourceConfig config) async {
    final response = await _httpClient.get(config.feedUrl);
    if (response.statusCode < 200 || response.statusCode >= 300) {
      throw StateError(
        'Failed to fetch ${config.feedUrl}: HTTP ${response.statusCode}',
      );
    }
    return parsePosts(feedUrl: config.feedUrl, content: response.body);
  }

  List<OrgSocialPost> parsePosts({
    required Uri feedUrl,
    required String content,
  }) {
    final document = OrgDocument.parse(content);
    final postsSection = document.sections.firstWhere(
      (section) => section.headline.rawTitle?.trim().toLowerCase() == 'posts',
      orElse: () => throw const FormatException('No top-level "Posts" section'),
    );

    final posts = postsSection.sections
        .map((section) {
          final id = _firstProperty(section, ':ID:');
          final headline = section.headline.rawTitle?.trim();
          final sourceId = (id != null && id.isNotEmpty)
              ? id
              : _fallbackSourceId(feedUrl, section);
          final publishedAt = _parsePublishedAt(id ?? headline ?? sourceId);
          final text = _renderVisibleContent(section).trim();
          if (text.isEmpty) {
            throw FormatException('Post "$sourceId" has no body text');
          }
          return OrgSocialPost(
            sourceId: sourceId,
            text: text,
            publishedAt: publishedAt,
            headline: headline ?? sourceId,
            language: _firstProperty(section, ':LANG:'),
            contentWarning: _firstProperty(section, ':CONTENT_WARNING:'),
            canonicalUrl: null,
          );
        })
        .toList(growable: false);

    posts.sort((a, b) => a.publishedAt.compareTo(b.publishedAt));
    return posts;
  }

  String? _firstProperty(OrgSection section, String key) {
    final properties = section.getProperties(key);
    return properties.isEmpty ? null : properties.first;
  }

  String _renderVisibleContent(OrgSection section) {
    final content = section.content;
    if (content == null) {
      return '';
    }
    return content.children
        .where((node) => node is! OrgDrawer || !node.isPropertyDrawer)
        .map((node) => node.toPlainText())
        .join()
        .trim();
  }

  String _fallbackSourceId(Uri feedUrl, OrgSection section) {
    final body = _renderVisibleContent(section);
    final digest = sha256
        .convert(
          utf8.encode(
            '${feedUrl.toString()}\n${section.headline.rawTitle}\n$body',
          ),
        )
        .toString();
    return 'sha256:$digest';
  }

  DateTime _parsePublishedAt(String value) {
    final normalized = value.replaceFirstMapped(
      RegExp(r'([+-]\d{2})(\d{2})$'),
      (match) => '${match.group(1)}:${match.group(2)}',
    );
    final parsed = DateTime.tryParse(normalized);
    if (parsed == null) {
      throw FormatException('Unable to parse post timestamp "$value"');
    }
    return parsed.toUtc();
  }
}
