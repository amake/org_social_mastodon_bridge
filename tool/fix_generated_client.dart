import 'dart:io';

void main() {
  final replacements = <String, Map<String, String>>{
    'generated/mastodon_openapi/lib/src/model/create_list_request.dart': {
      "b..repliesPolicy = 'list';":
          'b..repliesPolicy = ListRepliesPolicyEnum.list;',
    },
    'generated/mastodon_openapi/lib/src/model/create_report_request.dart': {
      "..category = 'other'": '..category = ReportCategoryEnum.other',
    },
    'generated/mastodon_openapi/lib/src/model/post_status_reblog_request.dart': {
      "b..visibility = 'public';":
          'b..visibility = StatusVisibilityEnum.public;',
    },
  };

  for (final entry in replacements.entries) {
    final file = File(entry.key);
    if (!file.existsSync()) {
      throw StateError('Expected generated file not found: ${entry.key}');
    }
    var content = file.readAsStringSync();
    for (final replacement in entry.value.entries) {
      if (content.contains(replacement.value)) {
        continue;
      }
      if (!content.contains(replacement.key)) {
        throw StateError(
          'Expected pattern not found in ${entry.key}: ${replacement.key}',
        );
      }
      content = content.replaceAll(replacement.key, replacement.value);
    }
    file.writeAsStringSync(content);
  }
}
