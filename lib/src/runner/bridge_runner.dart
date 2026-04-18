import 'package:http/http.dart' as http;

import '../config/config.dart';
import '../mastodon/generated_client.dart';
import '../org_social/service.dart';
import '../state/state_store.dart';
import '../sync/sync_service.dart';

class BridgeRunner {
  BridgeRunner({http.Client? httpClient})
    : _httpClient = httpClient ?? http.Client();

  final http.Client _httpClient;

  Future<SyncResult> run({
    required String configPath,
    bool? dryRunOverride,
  }) async {
    var config = await AppConfig.loadFile(configPath);
    if (dryRunOverride != null) {
      config = config.copyWith(
        sync: config.sync.copyWith(dryRun: dryRunOverride),
      );
    }
    final syncService = SyncService(
      feedService: OrgSocialService(httpClient: _httpClient),
      mastodonClient: GeneratedMastodonClient(config.mastodon),
      stateStore: stateStoreFromConfig(config.state),
    );
    return syncService.run(config);
  }
}
