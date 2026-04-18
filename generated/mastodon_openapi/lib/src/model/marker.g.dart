// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marker.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Marker extends Marker {
  @override
  final String lastReadId;
  @override
  final DateTime updatedAt;
  @override
  final int version;

  factory _$Marker([void Function(MarkerBuilder)? updates]) =>
      (MarkerBuilder()..update(updates))._build();

  _$Marker._(
      {required this.lastReadId,
      required this.updatedAt,
      required this.version})
      : super._();
  @override
  Marker rebuild(void Function(MarkerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MarkerBuilder toBuilder() => MarkerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Marker &&
        lastReadId == other.lastReadId &&
        updatedAt == other.updatedAt &&
        version == other.version;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, lastReadId.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Marker')
          ..add('lastReadId', lastReadId)
          ..add('updatedAt', updatedAt)
          ..add('version', version))
        .toString();
  }
}

class MarkerBuilder implements Builder<Marker, MarkerBuilder> {
  _$Marker? _$v;

  String? _lastReadId;
  String? get lastReadId => _$this._lastReadId;
  set lastReadId(String? lastReadId) => _$this._lastReadId = lastReadId;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  MarkerBuilder() {
    Marker._defaults(this);
  }

  MarkerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _lastReadId = $v.lastReadId;
      _updatedAt = $v.updatedAt;
      _version = $v.version;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Marker other) {
    _$v = other as _$Marker;
  }

  @override
  void update(void Function(MarkerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Marker build() => _build();

  _$Marker _build() {
    final _$result = _$v ??
        _$Marker._(
          lastReadId: BuiltValueNullFieldError.checkNotNull(
              lastReadId, r'Marker', 'lastReadId'),
          updatedAt: BuiltValueNullFieldError.checkNotNull(
              updatedAt, r'Marker', 'updatedAt'),
          version: BuiltValueNullFieldError.checkNotNull(
              version, r'Marker', 'version'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
