import 'dart:convert';
import 'dart:io';

import 'package:aws_common/aws_common.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart';
import 'package:http/http.dart' as http;

import '../config/config.dart';

final class SyncRecord {
  const SyncRecord({
    required this.sourceId,
    required this.mastodonStatusId,
    required this.postedAt,
    this.mastodonUrl,
  });

  factory SyncRecord.fromJson(Map<String, Object?> json) => SyncRecord(
    sourceId: json['source_id']! as String,
    mastodonStatusId: json['mastodon_status_id']! as String,
    postedAt: DateTime.parse(json['posted_at']! as String).toUtc(),
    mastodonUrl: json['mastodon_url'] as String?,
  );

  final String sourceId;
  final String mastodonStatusId;
  final DateTime postedAt;
  final String? mastodonUrl;

  Map<String, Object?> toJson() => {
    'source_id': sourceId,
    'mastodon_status_id': mastodonStatusId,
    'posted_at': postedAt.toUtc().toIso8601String(),
    if (mastodonUrl != null) 'mastodon_url': mastodonUrl,
  };
}

final class SyncState {
  const SyncState(this.records);

  factory SyncState.empty() => const SyncState({});

  factory SyncState.fromJson(Map<String, Object?> json) {
    final records = (json['records'] as Map<Object?, Object?>? ?? const {})
        .cast<String, Object?>()
        .map(
          (key, value) => MapEntry(
            key,
            SyncRecord.fromJson((value as Map<Object?, Object?>).cast()),
          ),
        );
    return SyncState(Map.unmodifiable(records));
  }

  final Map<String, SyncRecord> records;

  bool containsSourceId(String sourceId) => records.containsKey(sourceId);

  SyncState withRecord(SyncRecord record) =>
      SyncState(Map.unmodifiable({...records, record.sourceId: record}));

  Map<String, Object?> toJson() => {
    'records': records.map((key, value) => MapEntry(key, value.toJson())),
  };
}

abstract interface class StateStore {
  Future<SyncState> load();

  Future<void> save(SyncState state);
}

final class FileStateStore implements StateStore {
  FileStateStore(this.path);

  final String path;

  @override
  Future<SyncState> load() async {
    final file = File(path);
    if (!await file.exists()) {
      return SyncState.empty();
    }
    final decoded = json.decode(await file.readAsString());
    if (decoded is! Map<Object?, Object?>) {
      throw const FormatException('State root must be a JSON object');
    }
    return SyncState.fromJson(decoded.cast<String, Object?>());
  }

  @override
  Future<void> save(SyncState state) async {
    final file = File(path);
    await file.parent.create(recursive: true);
    await file.writeAsString(
      const JsonEncoder.withIndent('  ').convert(state.toJson()),
    );
  }
}

final class S3StateStore implements StateStore {
  S3StateStore(this.config, {http.Client? httpClient, AWSSigV4Signer? signer})
    : _httpClient = httpClient ?? http.Client(),
      _signer = signer ?? const AWSSigV4Signer();

  final S3StateConfig config;
  final http.Client _httpClient;
  final AWSSigV4Signer _signer;

  @override
  Future<SyncState> load() async {
    final signed = await _signedRequest(AWSHttpMethod.get);
    final response = await _httpClient.get(signed.uri, headers: signed.headers);
    if (response.statusCode == 404) {
      return SyncState.empty();
    }
    if (response.statusCode < 200 || response.statusCode >= 300) {
      throw StateError(
        'Failed to fetch s3://${config.bucket}/${config.key}: '
        'HTTP ${response.statusCode}',
      );
    }
    final decoded = json.decode(response.body);
    if (decoded is! Map<Object?, Object?>) {
      throw const FormatException('State root must be a JSON object');
    }
    return SyncState.fromJson(decoded.cast<String, Object?>());
  }

  @override
  Future<void> save(SyncState state) async {
    final body = utf8.encode(
      const JsonEncoder.withIndent('  ').convert(state.toJson()),
    );
    final signed = await _signedRequest(
      AWSHttpMethod.put,
      body: body,
      headers: const {'content-type': 'application/json'},
    );
    final response = await _httpClient.put(
      signed.uri,
      headers: signed.headers,
      body: body,
    );
    if (response.statusCode < 200 || response.statusCode >= 300) {
      throw StateError(
        'Failed to save s3://${config.bucket}/${config.key}: '
        'HTTP ${response.statusCode}',
      );
    }
  }

  Future<AWSSignedRequest> _signedRequest(
    AWSHttpMethod method, {
    List<int>? body,
    Map<String, String> headers = const {},
  }) {
    final request = AWSHttpRequest(
      method: method,
      uri: Uri.https(
        '${config.bucket}.s3.${config.region}.amazonaws.com',
        '/${config.key}',
      ),
      headers: headers,
      body: body,
    );
    return _signer.sign(
      request,
      credentialScope: AWSCredentialScope(
        region: config.region,
        service: AWSService.s3,
      ),
      serviceConfiguration: S3ServiceConfiguration(),
    );
  }
}

StateStore stateStoreFromConfig(StateConfig config) => switch (config) {
  FileStateConfig(:final path) => FileStateStore(path),
  S3StateConfig() => S3StateStore(config),
};
