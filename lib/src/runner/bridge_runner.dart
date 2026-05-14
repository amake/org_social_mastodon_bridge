import 'dart:io';

import 'package:http/http.dart' as http;

import '../config/config.dart';
import '../logging/logging.dart';
import '../mastodon/client.dart';
import '../mastodon/generated_client.dart';
import '../mastodon/status_logic.dart';
import '../org_social/post.dart';
import '../org_social/service.dart';
import '../org_social/source.dart';
import '../state/state_store.dart';
import '../sync/lint.dart';
import '../sync/sync_service.dart';

class BridgeRunner {
  BridgeRunner({http.Client? httpClient})
    : _httpClient = httpClient ?? http.Client();

  final http.Client _httpClient;

  Future<SyncResult> run({
    String? configPath,
    AppConfig? config,
    bool? dryRunOverride,
  }) async {
    final effectiveConfig = config ?? await AppConfig.loadFile(configPath!);
    var syncConfig = effectiveConfig.sync;
    if (dryRunOverride != null) {
      logger.debug('Overriding dry_run to $dryRunOverride');
      syncConfig = syncConfig.copyWith(dryRun: dryRunOverride);
    }
    final syncService = SyncService(
      feedService: OrgSocialService(httpClient: _httpClient),
      mastodonClient: GeneratedMastodonClient(effectiveConfig.mastodon),
      stateStore: stateStoreFromConfig(effectiveConfig.state),
    );
    return syncService.run(effectiveConfig.copyWith(sync: syncConfig));
  }

  Future<SyncPreviewResult> preview({
    String? configPath,
    AppConfig? config,
  }) async {
    final effectiveConfig = config ?? await AppConfig.loadFile(configPath!);
    final syncService = SyncService(
      feedService: OrgSocialService(httpClient: _httpClient),
      mastodonClient: GeneratedMastodonClient(effectiveConfig.mastodon),
      stateStore: stateStoreFromConfig(effectiveConfig.state),
    );
    return syncService.preview(effectiveConfig);
  }

  Future<SyncPreviewResult> previewSource(
    OrgSocialSource source, {
    String? configPath,
    AppConfig? config,
  }) async {
    final effectiveConfig = await _loadConfigSilently(configPath, config);
    final limits = effectiveConfig != null
        ? _limitsFromConfig(effectiveConfig)
        : null;
    final syncService = _createSyncService(effectiveConfig);

    return syncService.previewSource(
      source,
      includeSourceLink: effectiveConfig?.sync.includeSourceLink ?? false,
      limits: limits,
      state: effectiveConfig != null
          ? await stateStoreFromConfig(effectiveConfig.state).load()
          : null,
    );
  }

  Future<LintResult> lintSource(
    OrgSocialSource source, {
    String? configPath,
    AppConfig? config,
  }) async {
    final effectiveConfig = await _loadConfigSilently(configPath, config);
    final limits = effectiveConfig != null
        ? _limitsFromConfig(effectiveConfig)
        : null;
    final syncService = _createSyncService(effectiveConfig);

    return syncService.lintSource(
      source,
      includeSourceLink: effectiveConfig?.sync.includeSourceLink ?? false,
      limits: limits,
      state: effectiveConfig != null
          ? await stateStoreFromConfig(effectiveConfig.state).load()
          : null,
    );
  }

  SyncService _createSyncService(AppConfig? config) {
    return SyncService(
      feedService: OrgSocialService(httpClient: _httpClient),
      mastodonClient: config != null
          ? GeneratedMastodonClient(config.mastodon)
          : _OfflineMastodonClient(),
      stateStore: config != null
          ? stateStoreFromConfig(config.state)
          : _OfflineStateStore(),
    );
  }

  Future<AppConfig?> _loadConfigSilently(
    String? configPath,
    AppConfig? config,
  ) async {
    if (config != null) return config;
    if (configPath == null) return null;
    try {
      return await AppConfig.loadFile(configPath);
    } on FileSystemException catch (e) {
      logger.debug('Could not load config from $configPath: $e');
      return null;
    }
  }

  MastodonInstanceLimits? _limitsFromConfig(AppConfig config) {
    if (config.mastodon.maxCharacters != null ||
        config.mastodon.charactersReservedPerUrl != null ||
        config.mastodon.maxMediaAttachments != null) {
      return MastodonInstanceLimits(
        maxCharacters:
            config.mastodon.maxCharacters ??
            MastodonInstanceLimits.defaultLimits.maxCharacters,
        charactersReservedPerUrl:
            config.mastodon.charactersReservedPerUrl ??
            MastodonInstanceLimits.defaultLimits.charactersReservedPerUrl,
        maxMediaAttachments:
            config.mastodon.maxMediaAttachments ??
            MastodonInstanceLimits.defaultLimits.maxMediaAttachments,
      );
    }
    return null;
  }
}

class _OfflineMastodonClient implements MastodonClient {
  @override
  Future<MastodonInstanceLimits> getInstanceLimits() async =>
      MastodonInstanceLimits.defaultLimits;

  @override
  Future<MastodonPostResult> boostStatus(
    OrgSocialPost post, {
    required String statusId,
  }) => throw UnimplementedError('Offline client cannot post');

  @override
  Future<void> pinStatus(String statusId) =>
      throw UnimplementedError('Offline client cannot pin');

  @override
  Future<MastodonPostResult> postStatus(
    OrgSocialPost post, {
    String? inReplyToId,
    String? quoteId,
  }) => throw UnimplementedError('Offline client cannot post');

  @override
  Future<void> unpinStatus(String statusId) =>
      throw UnimplementedError('Offline client cannot unpin');

  @override
  Future<MastodonPostResult> updateStatus(
    String statusId,
    OrgSocialPost post, {
    List<String>? existingMediaIds,
    List<String>? existingSelectedMedia,
  }) => throw UnimplementedError('Offline client cannot update');

  @override
  Future<void> verifyCredentials() async {}
}

class _OfflineStateStore implements StateStore {
  @override
  Future<SyncState> load() async => SyncState.empty();
  @override
  Future<void> save(SyncState state) async {}
}
