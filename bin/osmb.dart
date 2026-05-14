import 'dart:io';

import 'package:org_social_mastodon_bridge/src/runner/cli_runner.dart';

Future<void> main(List<String> arguments) async {
  exitCode = await OsmbCommandRunner().run(arguments);
}
