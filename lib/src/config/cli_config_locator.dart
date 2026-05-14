import 'dart:io';

import 'package:path/path.dart' as p;

final class CliConfigLocator {
  const CliConfigLocator();

  String get defaultBaseDir {
    final home =
        Platform.environment['HOME'] ?? Platform.environment['USERPROFILE'];
    if (home == null) {
      throw StateError('Unable to determine home directory');
    }
    return p.join(home, '.org_social_mastodon_bridge');
  }

  String get defaultConfigPath => p.join(defaultBaseDir, 'config.json');

  String get defaultStatePath => p.join(defaultBaseDir, 'state.json');

  String? get envConfigPath =>
      Platform.environment['ORG_SOCIAL_MASTODON_BRIDGE_CONFIG'];

  String resolveConfigPath({String? explicitPath}) {
    if (explicitPath != null) return explicitPath;
    final env = envConfigPath;
    if (env != null && env.isNotEmpty) return env;
    return defaultConfigPath;
  }
}
