// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_instance_urls.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V1InstanceUrls extends V1InstanceUrls {
  @override
  final String streamingApi;

  factory _$V1InstanceUrls([void Function(V1InstanceUrlsBuilder)? updates]) =>
      (V1InstanceUrlsBuilder()..update(updates))._build();

  _$V1InstanceUrls._({required this.streamingApi}) : super._();
  @override
  V1InstanceUrls rebuild(void Function(V1InstanceUrlsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V1InstanceUrlsBuilder toBuilder() => V1InstanceUrlsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V1InstanceUrls && streamingApi == other.streamingApi;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, streamingApi.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'V1InstanceUrls')
          ..add('streamingApi', streamingApi))
        .toString();
  }
}

class V1InstanceUrlsBuilder
    implements Builder<V1InstanceUrls, V1InstanceUrlsBuilder> {
  _$V1InstanceUrls? _$v;

  String? _streamingApi;
  String? get streamingApi => _$this._streamingApi;
  set streamingApi(String? streamingApi) => _$this._streamingApi = streamingApi;

  V1InstanceUrlsBuilder() {
    V1InstanceUrls._defaults(this);
  }

  V1InstanceUrlsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _streamingApi = $v.streamingApi;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V1InstanceUrls other) {
    _$v = other as _$V1InstanceUrls;
  }

  @override
  void update(void Function(V1InstanceUrlsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V1InstanceUrls build() => _build();

  _$V1InstanceUrls _build() {
    final _$result = _$v ??
        _$V1InstanceUrls._(
          streamingApi: BuiltValueNullFieldError.checkNotNull(
              streamingApi, r'V1InstanceUrls', 'streamingApi'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
