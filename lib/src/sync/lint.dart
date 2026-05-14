enum LintSeverity { error, warning }

final class LintFinding {
  const LintFinding({
    required this.severity,
    required this.code,
    required this.message,
    this.sourceId,
  });

  final LintSeverity severity;
  final String code;
  final String message;
  final String? sourceId;

  @override
  String toString() {
    final prefix = sourceId != null ? '[$sourceId] ' : '';
    return '$prefix${severity.name.toUpperCase()}: $message ($code)';
  }
}

final class LintResult {
  const LintResult({required this.findings});

  final List<LintFinding> findings;

  bool get hasErrors => findings.any((f) => f.severity == LintSeverity.error);

  bool get isEmpty => findings.isEmpty;
}
