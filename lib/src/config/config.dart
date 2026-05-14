import 'dart:convert';
import 'dart:io';

sealed class StateConfig {
  const StateConfig();

  factory StateConfig.fromJson(Map<String, Object?> json) {
    return switch (json) {
      {'type': 'file', 'path': String path} => FileStateConfig(
        path: _requireNonEmptyString(path, 'state.path'),
      ),
      {
        'type': 's3',
        'bucket': String bucket,
        'key': String key,
        'region': String region,
      } =>
        S3StateConfig(
          bucket: _requireNonEmptyString(bucket, 'state.bucket'),
          key: _requireNonEmptyString(key, 'state.key'),
          region: _requireNonEmptyString(region, 'state.region'),
        ),
      {'type': String type} => throw FormatException(
        'Unsupported state.type "$type"',
      ),
      _ => throw const FormatException(
        'Expected state config with required fields',
      ),
    };
  }

  Map<String, Object?> toJson();
}

final class FileStateConfig extends StateConfig {
  const FileStateConfig({required this.path});

  final String path;

  @override
  Map<String, Object?> toJson() => {'type': 'file', 'path': path};
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

  @override
  Map<String, Object?> toJson() => {
    'type': 's3',
    'bucket': bucket,
    'key': key,
    'region': region,
  };
}

final class SourceConfig {
  const SourceConfig({required this.feedUrl});

  factory SourceConfig.fromJson(Map<String, Object?> json) => switch (json) {
    {'feed_url': String feedUrl} => SourceConfig(
      feedUrl: Uri.parse(_requireNonEmptyString(feedUrl, 'feed_url')),
    ),
    _ => throw const FormatException(
      'Expected source.feed_url to be a non-empty string',
    ),
  };

  final Uri feedUrl;

  Map<String, Object?> toJson() => {'feed_url': feedUrl.toString()};
}

final class MastodonConfig {
  const MastodonConfig({
    required this.baseUrl,
    required this.accessToken,
    this.visibility = 'public',
    this.language,
    this.appWebsite,
    this.maxCharacters,
    this.charactersReservedPerUrl,
    this.maxMediaAttachments,
  });

  factory MastodonConfig.fromJson(Map<String, Object?> json) => switch (json) {
    {'base_url': String baseUrl, 'access_token': String accessToken} =>
      MastodonConfig(
        baseUrl: Uri.parse(_requireNonEmptyString(baseUrl, 'base_url')),
        accessToken: _requireNonEmptyString(accessToken, 'access_token'),
        visibility: switch (json) {
          {'visibility': String visibility} => visibility,
          _ => 'public',
        },
        language: switch (json) {
          {'language': String language} => language,
          _ => null,
        },
        appWebsite: switch (json) {
          {'app_website': String website} => website,
          _ => null,
        },
        maxCharacters: json['max_characters'] as int?,
        charactersReservedPerUrl: json['characters_reserved_per_url'] as int?,
        maxMediaAttachments: json['max_media_attachments'] as int?,
      ),
    _ => throw const FormatException(
      'Expected mastodon.base_url and mastodon.access_token to be non-empty strings',
    ),
  };

  final Uri baseUrl;
  final String accessToken;
  final String visibility;
  final String? language;
  final String? appWebsite;
  final int? maxCharacters;
  final int? charactersReservedPerUrl;
  final int? maxMediaAttachments;

  Map<String, Object?> toJson() => {
    'base_url': baseUrl.toString(),
    'access_token': accessToken,
    'visibility': visibility,
    if (language != null) 'language': language,
    if (appWebsite != null) 'app_website': appWebsite,
    if (maxCharacters != null) 'max_characters': maxCharacters,
    if (charactersReservedPerUrl != null)
      'characters_reserved_per_url': charactersReservedPerUrl,
    if (maxMediaAttachments != null)
      'max_media_attachments': maxMediaAttachments,
  };
}

final class SyncConfig {
  const SyncConfig({
    this.dryRun = false,
    this.maxPostsPerRun = 20,
    this.includeSourceLink = false,
  });

  factory SyncConfig.fromJson(Map<String, Object?> json) => SyncConfig(
    dryRun: json['dry_run'] as bool? ?? false,
    maxPostsPerRun: json['max_posts_per_run'] as int? ?? 20,
    includeSourceLink: json['include_source_link'] as bool? ?? false,
  );

  final bool dryRun;
  final int maxPostsPerRun;
  final bool includeSourceLink;

  SyncConfig copyWith({
    bool? dryRun,
    int? maxPostsPerRun,
    bool? includeSourceLink,
  }) => SyncConfig(
    dryRun: dryRun ?? this.dryRun,
    maxPostsPerRun: maxPostsPerRun ?? this.maxPostsPerRun,
    includeSourceLink: includeSourceLink ?? this.includeSourceLink,
  );

  Map<String, Object?> toJson() => {
    'dry_run': dryRun,
    'max_posts_per_run': maxPostsPerRun,
    'include_source_link': includeSourceLink,
  };
}

final class LambdaConfig {
  const LambdaConfig({this.functionName, this.architecture = 'arm64'});

  factory LambdaConfig.fromJson(Map<String, Object?> json) => LambdaConfig(
    functionName: json['function_name'] as String?,
    architecture: (json['architecture'] as String?) ?? 'arm64',
  );

  final String? functionName;
  final String architecture;

  Map<String, Object?> toJson() => {
    if (functionName != null) 'function_name': functionName,
    'architecture': architecture,
  };
}

final class AppConfig {
  const AppConfig({
    required this.source,
    required this.mastodon,
    required this.sync,
    required this.state,
    this.remoteState,
    required this.lambda,
  });

  factory AppConfig.fromJson(Map<String, Object?> json) => switch (json) {
    {
      'source': Map<Object?, Object?> source,
      'mastodon': Map<Object?, Object?> mastodon,
      'state': Map<Object?, Object?> state,
    } =>
      AppConfig(
        source: SourceConfig.fromJson(source.cast<String, Object?>()),
        mastodon: MastodonConfig.fromJson(mastodon.cast<String, Object?>()),
        sync: switch (json) {
          {'sync': Map<Object?, Object?> sync} => SyncConfig.fromJson(
            sync.cast<String, Object?>(),
          ),
          _ => const SyncConfig(),
        },
        state: StateConfig.fromJson(state.cast<String, Object?>()),
        remoteState: switch (json) {
          {'remote_state': Map<Object?, Object?> remote} =>
            StateConfig.fromJson(remote.cast<String, Object?>()),
          _ => null,
        },
        lambda: switch (json) {
          {'lambda': Map<Object?, Object?> lambda} => LambdaConfig.fromJson(
            lambda.cast<String, Object?>(),
          ),
          _ => const LambdaConfig(),
        },
      ),
    _ => throw const FormatException(
      'Expected config to contain source, mastodon, and state objects',
    ),
  };

  static Future<AppConfig> loadFile(String path) async {
    final file = File(path);
    if (!await file.exists()) {
      throw FileSystemException('Config file not found', path);
    }
    final decoded = json.decode(await file.readAsString());
    if (decoded case {
      'source': Map<Object?, Object?> _,
      'mastodon': Map<Object?, Object?> _,
      'state': Map<Object?, Object?> _,
    }) {
      return AppConfig.fromJson((decoded as Map<Object?, Object?>).cast());
    }
    throw const FormatException(
      'Config root must be an object containing source, mastodon, and state',
    );
  }

  final SourceConfig source;
  final MastodonConfig mastodon;
  final SyncConfig sync;
  final StateConfig state;
  final StateConfig? remoteState;
  final LambdaConfig lambda;

  AppConfig copyWith({
    SourceConfig? source,
    MastodonConfig? mastodon,
    SyncConfig? sync,
    StateConfig? state,
    StateConfig? remoteState,
    LambdaConfig? lambda,
  }) => AppConfig(
    source: source ?? this.source,
    mastodon: mastodon ?? this.mastodon,
    sync: sync ?? this.sync,
    state: state ?? this.state,
    remoteState: remoteState ?? this.remoteState,
    lambda: lambda ?? this.lambda,
  );

  Map<String, Object?> toJson() => {
    'source': source.toJson(),
    'mastodon': mastodon.toJson(),
    'sync': sync.toJson(),
    'state': state.toJson(),
    if (remoteState != null) 'remote_state': remoteState!.toJson(),
    'lambda': lambda.toJson(),
  };
}

String _requireNonEmptyString(String value, String key) {
  if (value.isNotEmpty) {
    return value;
  }
  throw FormatException('Expected non-empty string "$key"');
}
