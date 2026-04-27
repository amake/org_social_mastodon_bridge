import 'package:org_parser/org_parser.dart';

import '../post.dart';

final class OrgSocialRenderedContent {
  const OrgSocialRenderedContent({
    required this.text,
    required this.mediaCandidates,
    this.poll,
  });

  final String text;
  final List<OrgSocialMediaCandidate> mediaCandidates;
  final OrgSocialPoll? poll;
}

class OrgSocialRenderer {
  static const _imageExtensions = {
    '.jpg',
    '.jpeg',
    '.png',
    '.gif',
    '.webp',
  };

  static const _videoExtensions = {
    '.mp4',
    '.webm',
    '.mov',
    '.m4v',
  };

  OrgSocialRenderedContent renderSection(
    OrgSection section, {
    DateTime? pollEndsAt,
  }) {
    final collector = _MediaCollector();
    final blocks = <String>[];
    OrgSocialPoll? poll;

    for (final node in section.content?.children ?? const <OrgNode>[]) {
      if (node case final OrgDrawer drawer when drawer.isPropertyDrawer) {
        continue;
      }

      if (pollEndsAt != null && poll == null && node is OrgList) {
        final options = _extractPollOptions(node, collector);
        if (options != null && options.length >= 2) {
          poll = OrgSocialPoll(endsAt: pollEndsAt, options: options);
          continue;
        }
      }

      final rendered = _renderBlock(node, collector).trim();
      if (rendered.isNotEmpty) {
        blocks.add(rendered);
      }
    }
    return OrgSocialRenderedContent(
      text: blocks.join('\n\n').trim(),
      mediaCandidates: collector.candidates,
      poll: poll,
    );
  }

  List<String>? _extractPollOptions(OrgList list, _MediaCollector collector) {
    final options = <String>[];
    for (final item in list.items) {
      if (item.checkbox == null) {
        return null;
      }
      final body =
          item.body == null ? '' : _renderInline(item.body!, collector).trim();
      if (body.isNotEmpty) {
        options.add(body);
      }
    }
    return options.isEmpty ? null : options;
  }

  String _renderBlock(OrgNode node, _MediaCollector collector) {
    return switch (node) {
      OrgParagraph(:final body) => _renderInline(body, collector).trim(),
      OrgList() => _renderList(node, collector),
      OrgDrawer(:final body) => _renderBlock(body, collector),
      OrgContent(:final children) => children
          .map((child) => _renderBlock(child, collector))
          .where((block) => block.trim().isNotEmpty)
          .join('\n\n'),
      _ => node.toPlainText().trim(),
    };
  }

  String _renderList(OrgList list, _MediaCollector collector) {
    return list.items
        .map((item) {
          final body = item.body == null
              ? ''
              : _renderInline(item.body!, collector).trim();
          if (body.isEmpty) {
            return '';
          }
          final checkbox = item.checkbox == null ? '' : '${item.checkbox} ';
          final bullet = switch (item) {
            OrgListOrderedItem() => '${item.bullet} ',
            OrgListUnorderedItem() => '${item.bullet} ',
          };
          return '$bullet$checkbox$body'.trimRight();
        })
        .where((line) => line.isNotEmpty)
        .join('\n');
  }

  String _renderInline(OrgNode node, _MediaCollector collector) {
    return switch (node) {
      OrgContent(:final children) => children
          .map((child) => _renderInline(child, collector))
          .join(),
      OrgPlainText(:final content) => content,
      OrgPlainLink(:final location) => _renderLink(
          location: location,
          description: null,
          collector: collector,
        ),
      OrgBracketLink(:final location, :final description) => _renderLink(
          location: location,
          description: description == null
              ? null
              : _renderInline(description, collector).trim(),
          collector: collector,
        ),
      OrgMarkup(:final content, :final style) => _wrapMarkup(
          style: style,
          text: _renderInline(content, collector),
        ),
      _ => node.toPlainText(),
    };
  }

  String _renderLink({
    required String location,
    required String? description,
    required _MediaCollector collector,
  }) {
    collector.maybeAdd(location, _classifyMedia(location));
    final trimmedDescription = description?.trim();
    if (trimmedDescription == null || trimmedDescription.isEmpty) {
      return location;
    }
    if (trimmedDescription == location) {
      return location;
    }
    return '$trimmedDescription ($location)';
  }

  String _wrapMarkup({required OrgStyle style, required String text}) {
    return switch (style) {
      OrgStyle.bold => '*$text*',
      OrgStyle.italic => '_${text}_',
      OrgStyle.code || OrgStyle.verbatim => '`$text`',
      OrgStyle.strikeThrough => '~$text~',
      OrgStyle.underline => text,
    };
  }

  OrgSocialMediaKind? _classifyMedia(String location) {
    final uri = Uri.tryParse(location);
    if (uri == null || !uri.hasScheme) {
      return null;
    }
    final scheme = uri.scheme.toLowerCase();
    if (scheme != 'http' && scheme != 'https') {
      return null;
    }
    final path = uri.path.toLowerCase();
    for (final extension in _imageExtensions) {
      if (path.endsWith(extension)) {
        return OrgSocialMediaKind.image;
      }
    }
    for (final extension in _videoExtensions) {
      if (path.endsWith(extension)) {
        return OrgSocialMediaKind.video;
      }
    }
    return null;
  }
}

final class _MediaCollector {
  final _seen = <String>{};
  final _candidates = <OrgSocialMediaCandidate>[];

  List<OrgSocialMediaCandidate> get candidates =>
      List.unmodifiable(_candidates);

  void maybeAdd(String location, OrgSocialMediaKind? kind) {
    if (kind == null || !_seen.add(location)) {
      return;
    }
    final url = Uri.tryParse(location);
    if (url == null) {
      return;
    }
    _candidates.add(OrgSocialMediaCandidate(url: url, kind: kind));
  }
}
