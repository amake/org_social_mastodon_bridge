import '../org_social/post.dart';

final class MastodonInstanceLimits {
  const MastodonInstanceLimits({
    required this.maxCharacters,
    required this.charactersReservedPerUrl,
    required this.maxMediaAttachments,
  });

  final int maxCharacters;
  final int charactersReservedPerUrl;
  final int maxMediaAttachments;

  static const defaultLimits = MastodonInstanceLimits(
    maxCharacters: 500,
    charactersReservedPerUrl: 23,
    maxMediaAttachments: 4,
  );
}

enum MastodonPollHandling { none, native, appendToText }

final class MastodonComposedStatus {
  const MastodonComposedStatus({
    required this.text,
    required this.pollHandling,
    this.pollExpiresInSeconds,
    this.pollExpired = false,
    this.pollHasTooManyOptions = false,
  });

  final String text;
  final MastodonPollHandling pollHandling;
  final int? pollExpiresInSeconds;
  final bool pollExpired;
  final bool pollHasTooManyOptions;
}

final class MastodonStatusPreview {
  const MastodonStatusPreview({
    required this.text,
    required this.characterCount,
    required this.limits,
    required this.pollHandling,
  });

  final String text;
  final int characterCount;
  final MastodonInstanceLimits limits;
  final MastodonPollHandling pollHandling;

  int get remainingCharacters => limits.maxCharacters - characterCount;

  bool get exceedsLimit => characterCount > limits.maxCharacters;
}

MastodonComposedStatus composeMastodonStatus(
  OrgSocialPost post, {
  DateTime? now,
}) {
  final currentTime = now ?? DateTime.now();
  final poll = post.poll;

  var pollHandling = MastodonPollHandling.none;
  int? pollExpiresInSeconds;
  var pollExpired = false;
  var pollHasTooManyOptions = false;

  if (poll != null) {
    pollExpiresInSeconds = poll.endsAt.difference(currentTime).inSeconds;
    pollExpired = pollExpiresInSeconds <= 0;
    pollHasTooManyOptions = poll.options.length > 4;
    pollHandling = (!pollExpired && !pollHasTooManyOptions)
        ? MastodonPollHandling.native
        : MastodonPollHandling.appendToText;
  }

  final buffer = StringBuffer(post.text);

  if (pollHandling == MastodonPollHandling.appendToText && poll != null) {
    if (buffer.isNotEmpty) buffer.write('\n\n');
    buffer.write(poll.options.map((option) => '- [ ] $option').join('\n'));
  }

  if (post.mood != null && post.mood!.isNotEmpty) {
    if (buffer.isNotEmpty) buffer.write('\n\n');
    buffer.write('Mood: ${post.mood}');
  }

  if (post.tags.isNotEmpty) {
    if (buffer.isNotEmpty) buffer.write('\n\n');
    buffer.write(post.tags.map((tag) => '#$tag').join(' '));
  }

  return MastodonComposedStatus(
    text: buffer.toString(),
    pollHandling: pollHandling,
    pollExpiresInSeconds: pollExpiresInSeconds,
    pollExpired: pollExpired,
    pollHasTooManyOptions: pollHasTooManyOptions,
  );
}

MastodonStatusPreview previewMastodonStatus(
  OrgSocialPost post,
  MastodonInstanceLimits limits, {
  DateTime? now,
}) {
  final composed = composeMastodonStatus(post, now: now);
  return MastodonStatusPreview(
    text: composed.text,
    characterCount: countMastodonCharacters(
      composed.text,
      charactersReservedPerUrl: limits.charactersReservedPerUrl,
    ),
    limits: limits,
    pollHandling: composed.pollHandling,
  );
}

int countMastodonCharacters(
  String text, {
  required int charactersReservedPerUrl,
}) {
  final urlPattern = RegExp(r'https?://\S+');
  final matches = urlPattern.allMatches(text).toList(growable: false);
  if (matches.isEmpty) {
    return text.runes.length;
  }

  var count = 0;
  var cursor = 0;
  for (final match in matches) {
    final rawUrl = match.group(0)!;
    final normalizedUrl = _trimTrailingUrlPunctuation(rawUrl);
    final urlLength = normalizedUrl.length;

    count += text.substring(cursor, match.start).runes.length;
    count += charactersReservedPerUrl;
    count += rawUrl.substring(urlLength).runes.length;
    cursor = match.end;
  }

  count += text.substring(cursor).runes.length;
  return count;
}

String _trimTrailingUrlPunctuation(String value) {
  var end = value.length;
  while (end > 0) {
    final char = value[end - 1];
    if (char == ')' ||
        char == ']' ||
        char == '}' ||
        char == '.' ||
        char == ',' ||
        char == '!' ||
        char == '?') {
      end -= 1;
      continue;
    }
    break;
  }
  return value.substring(0, end);
}
