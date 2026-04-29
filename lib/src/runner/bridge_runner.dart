import 'package:http/http.dart' as http;

import '../config/config.dart';
import '../logging/logging.dart';
import '../mastodon/generated_client.dart';
import '../org_social/service.dart';
import '../state/state_store.dart';
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
    if (config == null && configPath == null) {
      throw ArgumentError('Either config or configPath must be provided');
    }
    var effectiveConfig = config ?? await AppConfig.loadFile(configPath!);
    if (dryRunOverride != null) {
      logger.debug('Overriding dry_run to $dryRunOverride');
      effectiveConfig = effectiveConfig.copyWith(
        sync: effectiveConfig.sync.copyWith(dryRun: dryRunOverride),
      );
    }
    final syncService = SyncService(
      feedService: OrgSocialService(httpClient: _httpClient),
      mastodonClient: GeneratedMastodonClient(effectiveConfig.mastodon),
      stateStore: stateStoreFromConfig(effectiveConfig.state),
    );
    return syncService.run(effectiveConfig);
  }
}
