import 'dart:io';

enum LogLevel {
  debug(10, 'DEBUG'),
  info(20, 'INFO'),
  warning(30, 'WARN'),
  error(40, 'ERROR');

  const LogLevel(this.priority, this.label);

  final int priority;
  final String label;

  static LogLevel parse(String? value, {LogLevel fallback = LogLevel.info}) {
    return switch (value?.trim().toLowerCase()) {
      'debug' => LogLevel.debug,
      'info' => LogLevel.info,
      'warn' || 'warning' => LogLevel.warning,
      'error' => LogLevel.error,
      _ => fallback,
    };
  }
}

class Logger {
  Logger({required this.level, IOSink? stdio}) : _stdio = stdio ?? stdout;

  factory Logger.fromEnvironment() => Logger(
    level: LogLevel.parse(
      Platform.environment['ORG_SOCIAL_MASTODON_BRIDGE_LOG_LEVEL'] ??
          Platform.environment['LOG_LEVEL'],
    ),
    stdio: stderr,
  );

  final LogLevel level;
  final IOSink _stdio;

  bool enabled(LogLevel messageLevel) =>
      messageLevel.priority >= level.priority;

  void debug(String message) => _write(LogLevel.debug, message);

  void info(String message) => _write(LogLevel.info, message);

  void warning(String message) => _write(LogLevel.warning, message);

  void error(String message, {Object? error, StackTrace? stackTrace}) {
    _write(LogLevel.error, message);
    if (error != null) {
      _stdio.writeln('  error: $error');
    }
    if (stackTrace != null && enabled(LogLevel.debug)) {
      _stdio.writeln(stackTrace);
    }
  }

  void _write(LogLevel messageLevel, String message) {
    if (!enabled(messageLevel)) {
      return;
    }
    final timestamp = DateTime.now().toUtc().toIso8601String();
    _stdio.writeln('[$timestamp] ${messageLevel.label} $message');
  }
}

final logger = Logger.fromEnvironment();
