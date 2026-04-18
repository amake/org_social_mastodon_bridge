import 'dart:convert';
import 'dart:io';

sealed class StateConfig {
  const StateConfig();

  factory StateConfig.fromJson(Map<String, Object?> json) {
    final type = _requireString(json, 'type');
    return switch (type) {
      'file' => FileStateConfig(path: _requireString(json, 'path')),
      's3' => S3StateConfig(
        bucket: _requireString(json, 'bucket'),
        key: _requireString(json, 'key'),
        region: _requireString(json, 'region'),
      ),
      _ => throw FormatException('Unsupported state.type "$type"'),
    };
  }
}

final class FileStateConfig extends StateConfig {
  const FileStateConfig({required this.path});

  final String path;
}

final class S3StateConfig extends StateConfig {
  const S3StateConfig({
    required this.bucket,
    required this.key,
    required this.region,
  });

  final String bucket;
  final String key;
  final String region;
}

final class SourceConfig {
  const SourceConfig({required this.feedUrl});

  factory SourceConfig.fromJson(Map<String, Object?> json) =>
      SourceConfig(feedUrl: Uri.parse(_requireString(json, 'feed_url')));

  final Uri feedUrl;
}

final class MastodonConfig {
  const MastodonConfig({
    required this.baseUrl,
    required this.accessToken,
    this.visibility = 'public',
    this.language,
  });

  factory MastodonConfig.fromJson(Map<String, Object?> json) => MastodonConfig(
    baseUrl: Uri.parse(_requireString(json, 'base_url')),
    accessToken: _requireString(json, 'access_token'),
    visibility: (json['visibility'] as String?) ?? 'public',
    language: json['language'] as String?,
  );

  final Uri baseUrl;
  final String accessToken;
  final String visibility;
  final String? language;
}

final class SyncConfig {
  const SyncConfig({
    this.dryRun = false,
    this.maxPostsPerRun = 20,
    this.includeLink = false,
  });

  factory SyncConfig.fromJson(Map<String, Object?> json) => SyncConfig(
    dryRun: json['dry_run'] as bool? ?? false,
    maxPostsPerRun: json['max_posts_per_run'] as int? ?? 20,
    includeLink: json['include_link'] as bool? ?? false,
  );

  final bool dryRun;
  final int maxPostsPerRun;
  final bool includeLink;

  SyncConfig copyWith({bool? dryRun, int? maxPostsPerRun, bool? includeLink}) =>
      SyncConfig(
        dryRun: dryRun ?? this.dryRun,
        maxPostsPerRun: maxPostsPerRun ?? this.maxPostsPerRun,
        includeLink: includeLink ?? this.includeLink,
      );
}

final class LambdaConfig {
  const LambdaConfig({this.functionName, this.architecture = 'arm64'});

  factory LambdaConfig.fromJson(Map<String, Object?> json) => LambdaConfig(
    functionName: json['function_name'] as String?,
    architecture: (json['architecture'] as String?) ?? 'arm64',
  );

  final String? functionName;
  final String architecture;
}

final class AppConfig {
  const AppConfig({
    required this.source,
    required this.mastodon,
    required this.sync,
    required this.state,
    required this.lambda,
  });

  factory AppConfig.fromJson(Map<String, Object?> json) => AppConfig(
    source: SourceConfig.fromJson(_requireMap(json, 'source')),
    mastodon: MastodonConfig.fromJson(_requireMap(json, 'mastodon')),
    sync: SyncConfig.fromJson(
      (json['sync'] as Map<Object?, Object?>? ?? const {})
          .cast<String, Object?>(),
    ),
    state: StateConfig.fromJson(_requireMap(json, 'state')),
    lambda: LambdaConfig.fromJson(
      (json['lambda'] as Map<Object?, Object?>? ?? const {})
          .cast<String, Object?>(),
    ),
  );

  static Future<AppConfig> loadFile(String path) async {
    final file = File(path);
    if (!await file.exists()) {
      throw FileSystemException('Config file not found', path);
    }
    final decoded = json.decode(await file.readAsString());
    if (decoded is! Map<Object?, Object?>) {
      throw const FormatException('Config root must be a JSON object');
    }
    return AppConfig.fromJson(decoded.cast<String, Object?>());
  }

  final SourceConfig source;
  final MastodonConfig mastodon;
  final SyncConfig sync;
  final StateConfig state;
  final LambdaConfig lambda;

  AppConfig copyWith({
    SourceConfig? source,
    MastodonConfig? mastodon,
    SyncConfig? sync,
    StateConfig? state,
    LambdaConfig? lambda,
  }) => AppConfig(
    source: source ?? this.source,
    mastodon: mastodon ?? this.mastodon,
    sync: sync ?? this.sync,
    state: state ?? this.state,
    lambda: lambda ?? this.lambda,
  );
}

Map<String, Object?> _requireMap(Map<String, Object?> json, String key) {
  final value = json[key];
  if (value is Map<Object?, Object?>) {
    return value.cast<String, Object?>();
  }
  throw FormatException('Expected "$key" to be an object');
}

String _requireString(Map<String, Object?> json, String key) {
  final value = json[key];
  if (value is String && value.isNotEmpty) {
    return value;
  }
  throw FormatException('Expected non-empty string "$key"');
}
