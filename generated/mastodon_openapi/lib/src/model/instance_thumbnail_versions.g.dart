// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instance_thumbnail_versions.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InstanceThumbnailVersions extends InstanceThumbnailVersions {
  @override
  final String? at1x;
  @override
  final String? at2x;

  factory _$InstanceThumbnailVersions(
          [void Function(InstanceThumbnailVersionsBuilder)? updates]) =>
      (InstanceThumbnailVersionsBuilder()..update(updates))._build();

  _$InstanceThumbnailVersions._({this.at1x, this.at2x}) : super._();
  @override
  InstanceThumbnailVersions rebuild(
          void Function(InstanceThumbnailVersionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceThumbnailVersionsBuilder toBuilder() =>
      InstanceThumbnailVersionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstanceThumbnailVersions &&
        at1x == other.at1x &&
        at2x == other.at2x;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, at1x.hashCode);
    _$hash = $jc(_$hash, at2x.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InstanceThumbnailVersions')
          ..add('at1x', at1x)
          ..add('at2x', at2x))
        .toString();
  }
}

class InstanceThumbnailVersionsBuilder
    implements
        Builder<InstanceThumbnailVersions, InstanceThumbnailVersionsBuilder> {
  _$InstanceThumbnailVersions? _$v;

  String? _at1x;
  String? get at1x => _$this._at1x;
  set at1x(String? at1x) => _$this._at1x = at1x;

  String? _at2x;
  String? get at2x => _$this._at2x;
  set at2x(String? at2x) => _$this._at2x = at2x;

  InstanceThumbnailVersionsBuilder() {
    InstanceThumbnailVersions._defaults(this);
  }

  InstanceThumbnailVersionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _at1x = $v.at1x;
      _at2x = $v.at2x;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstanceThumbnailVersions other) {
    _$v = other as _$InstanceThumbnailVersions;
  }

  @override
  void update(void Function(InstanceThumbnailVersionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstanceThumbnailVersions build() => _build();

  _$InstanceThumbnailVersions _build() {
    final _$result = _$v ??
        _$InstanceThumbnailVersions._(
          at1x: at1x,
          at2x: at2x,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
