import 'dart:convert';
import 'dart:io';

import 'package:args/command_runner.dart';

import '../config/cli_config_locator.dart';
import '../logging/logging.dart';
import '../mastodon/auth_service.dart';
import '../org_social/source.dart';
import 'bridge_runner.dart';

const _placeholderFeedUrl = 'https://example.invalid/social.org';

class OsmbCommandRunner extends CommandRunner<int> {
  OsmbCommandRunner() : super('osmb', 'Org Social Mastodon Bridge CLI') {
    argParser.addOption('config', abbr: 'c', help: 'Path to config file');
    argParser.addFlag(
      'verbose',
      abbr: 'v',
      help: 'Enable verbose logging',
      negatable: false,
    );

    addCommand(SyncCommand());
    addCommand(PreviewCommand());
    addCommand(LintCommand());
    addCommand(InitCommand());
    addCommand(AuthCommand());
  }

  @override
  Future<int> run(Iterable<String> args) async {
    try {
      final topLevelResults = parse(args);
      if (topLevelResults['verbose'] as bool) {
        // In a real app we'd set the logger level here
      }
      return await super.run(args) ?? 0;
    } on UsageException catch (e) {
      stderr.writeln(e.message);
      stderr.writeln();
      stderr.writeln(e.usage);
      return 2;
    } catch (e, st) {
      stderr.writeln('Error: $e');
      logger.error('Unhandled error', error: e, stackTrace: st);
      return 1;
    }
  }
}

abstract class OsmbCommand extends Command<int> {
  final locator = const CliConfigLocator();
  final runner_ = BridgeRunner();

  String get effectiveConfigPath => locator.resolveConfigPath(
    explicitPath: globalResults?['config'] as String?,
  );
}

class InitCommand extends OsmbCommand {
  @override
  String get name => 'init';
  @override
  String get description => 'Interactive setup to create a config file';

  @override
  Future<int> run() async {
    final configPath = effectiveConfigPath;
    final configFile = File(configPath);

    if (await configFile.exists()) {
      stdout.write(
        'Config file already exists at $configPath. Overwrite? (y/N) ',
      );
      final response = stdin.readLineSync()?.toLowerCase();
      if (response != 'y') return 0;
    }

    stdout.write('Mastodon instance URL (e.g., https://mastodon.social): ');
    final instanceUrlStr = stdin.readLineSync()?.trim();
    if (instanceUrlStr == null || instanceUrlStr.isEmpty) {
      stderr.writeln('Instance URL is required');
      return 1;
    }
    final instanceUrl = Uri.parse(instanceUrlStr);

    stdout.write(
      'Default Org Social feed URL (optional, press enter to skip): ',
    );
    final feedUrlStr = stdin.readLineSync()?.trim();
    final feedUrl = feedUrlStr != null && feedUrlStr.isNotEmpty
        ? Uri.parse(feedUrlStr)
        : Uri.parse(_placeholderFeedUrl);

    final statePath = locator.defaultStatePath;

    final configJson = {
      'source': {'feed_url': feedUrl.toString()},
      'mastodon': {
        'base_url': instanceUrl.toString(),
        'access_token': 'PASTE_TOKEN_HERE_OR_RUN_AUTH',
      },
      'state': {'type': 'file', 'path': statePath},
    };

    await configFile.parent.create(recursive: true);
    await configFile.writeAsString(
      const JsonEncoder.withIndent('  ').convert(configJson),
    );

    stdout.writeln('Created config at $configPath');
    stdout.writeln('State will be stored at $statePath');
    if (feedUrl.toString() == _placeholderFeedUrl) {
      stdout.writeln(
        'No source feed configured yet. Update source.feed_url before running sync.',
      );
    }
    stdout.writeln();
    stdout.write('Would you like to run "osmb auth" now? (Y/n) ');
    final authResponse = stdin.readLineSync()?.toLowerCase();
    if (authResponse != 'n') {
      return await runner?.run(['auth', '--config', configPath]) ?? 0;
    }

    return 0;
  }
}

class AuthCommand extends OsmbCommand {
  @override
  String get name => 'auth';
  @override
  String get description => 'Perform or refresh Mastodon OAuth setup';

  @override
  Future<int> run() async {
    final configPath = effectiveConfigPath;
    final configFile = File(configPath);

    if (!await configFile.exists()) {
      stderr.writeln(
        'Config file not found at $configPath. Run "osmb init" first.',
      );
      return 1;
    }

    final configContent = await configFile.readAsString();
    final configJson = json.decode(configContent) as Map<String, dynamic>;
    final mastodonJson = configJson['mastodon'] as Map<String, dynamic>;
    final baseUrl = Uri.parse(mastodonJson['base_url'] as String);

    final authService = MastodonAuthService(baseUrl);

    var clientId = mastodonJson['client_id'] as String?;
    var clientSecret = mastodonJson['client_secret'] as String?;

    if (clientId == null || clientSecret == null) {
      stdout.writeln('Registering application on $baseUrl...');
      final credentials = await authService.registerApp(
        appName: 'org_social_mastodon_bridge',
        appWebsite: 'https://github.com/amake/org_social_mastodon_bridge',
      );
      clientId = credentials.clientId;
      clientSecret = credentials.clientSecret;
      mastodonJson['client_id'] = clientId;
      mastodonJson['client_secret'] = clientSecret;
      await configFile.writeAsString(
        const JsonEncoder.withIndent('  ').convert(configJson),
      );
    }

    final authUri = authService.getAuthorizationUri(clientId: clientId);
    stdout.writeln('Visit the URL below and approve access:');
    stdout.writeln(authUri);
    stdout.write('Authorization code: ');
    final code = stdin.readLineSync()?.trim();
    if (code == null || code.isEmpty) {
      stderr.writeln('Authorization code is required');
      return 1;
    }

    stdout.writeln('Exchanging code for token...');
    final accessToken = await authService.exchangeCode(
      clientId: clientId,
      clientSecret: clientSecret,
      code: code,
    );

    mastodonJson['access_token'] = accessToken;
    await configFile.writeAsString(
      const JsonEncoder.withIndent('  ').convert(configJson),
    );

    stdout.writeln('Successfully authorized and updated $configPath');
    return 0;
  }
}

class SyncCommand extends OsmbCommand {
  @override
  String get name => 'sync';
  @override
  String get description => 'Sync configured source to Mastodon';

  SyncCommand() {
    argParser.addFlag(
      'dry-run',
      help: 'Show what would be posted without actually posting',
      negatable: false,
    );
  }

  @override
  Future<int> run() async {
    final result = await runner_.run(
      configPath: effectiveConfigPath,
      dryRunOverride: argResults?['dry-run'] as bool?,
    );

    stdout.writeln(
      'Sync finished: seen=${result.seenPosts} candidates=${result.candidatePosts} '
      'posted=${result.postedPosts} dry_run=${result.dryRun}',
    );
    return 0;
  }
}

class PreviewCommand extends OsmbCommand {
  @override
  String get name => 'preview';
  @override
  String get description => 'Preview rendered posts from a source';

  @override
  String get invocation => 'osmb preview [source]';

  @override
  Future<int> run() async {
    final sourceArg = argResults?.rest.firstOrNull;
    final source = sourceArg == null ? null : _parseSourceArg(sourceArg);

    if (source == null) {
      // Use configured source if no explicit source provided
      final result = await runner_.preview(configPath: effectiveConfigPath);
      _printPreview(result);
    } else {
      final result = await runner_.previewSource(
        source,
        configPath: effectiveConfigPath,
      );
      _printPreview(result);
    }
    return 0;
  }

  void _printPreview(dynamic result) {
    stdout.writeln(
      'Limits: max_chars=${result.limits.maxCharacters} '
      'reserved_url=${result.limits.charactersReservedPerUrl}',
    );
    stdout.writeln();

    for (final post in result.posts) {
      final status = post.deferred
          ? 'DEFER'
          : post.characterCount > post.maxCharacters
          ? 'TOO_LONG'
          : 'OK';
      stdout.writeln(
        '# ${post.sourceId} [${post.action}] mode=${post.publicationMode} '
        'len=${post.characterCount}/${post.maxCharacters} status=$status',
      );
      if (post.text.isNotEmpty) {
        stdout.writeln(post.text);
      }
      stdout.writeln('---');
      stdout.writeln();
    }
  }
}

class LintCommand extends OsmbCommand {
  @override
  String get name => 'lint';
  @override
  String get description => 'Check source for errors or limit violations';

  @override
  String get invocation => 'osmb lint [source]';

  @override
  Future<int> run() async {
    final sourceArg = argResults?.rest.firstOrNull;
    if (sourceArg == null) {
      throw UsageException('Source is required for lint', usage);
    }

    final source = _parseSourceArg(sourceArg);

    final result = await runner_.lintSource(
      source,
      configPath: effectiveConfigPath,
    );

    if (result.isEmpty) {
      stdout.writeln('Lint clean!');
      return 0;
    }

    for (final finding in result.findings) {
      stdout.writeln(finding.toString());
    }

    return result.hasErrors ? 1 : 0;
  }
}

OrgSocialSource _parseSourceArg(String value) {
  final uri = Uri.tryParse(value);
  if (uri != null && uri.hasScheme) {
    final scheme = uri.scheme.toLowerCase();
    if (scheme == 'http' || scheme == 'https') {
      return UrlSource(uri);
    }
    if (scheme == 'file') {
      return FileSource(uri.toFilePath());
    }
  }
  return FileSource(value);
}
