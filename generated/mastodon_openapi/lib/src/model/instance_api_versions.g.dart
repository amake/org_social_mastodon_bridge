// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instance_api_versions.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InstanceApiVersions extends InstanceApiVersions {
  @override
  final int? mastodon;

  factory _$InstanceApiVersions(
          [void Function(InstanceApiVersionsBuilder)? updates]) =>
      (InstanceApiVersionsBuilder()..update(updates))._build();

  _$InstanceApiVersions._({this.mastodon}) : super._();
  @override
  InstanceApiVersions rebuild(
          void Function(InstanceApiVersionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceApiVersionsBuilder toBuilder() =>
      InstanceApiVersionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstanceApiVersions && mastodon == other.mastodon;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, mastodon.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InstanceApiVersions')
          ..add('mastodon', mastodon))
        .toString();
  }
}

class InstanceApiVersionsBuilder
    implements Builder<InstanceApiVersions, InstanceApiVersionsBuilder> {
  _$InstanceApiVersions? _$v;

  int? _mastodon;
  int? get mastodon => _$this._mastodon;
  set mastodon(int? mastodon) => _$this._mastodon = mastodon;

  InstanceApiVersionsBuilder() {
    InstanceApiVersions._defaults(this);
  }

  InstanceApiVersionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mastodon = $v.mastodon;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstanceApiVersions other) {
    _$v = other as _$InstanceApiVersions;
  }

  @override
  void update(void Function(InstanceApiVersionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstanceApiVersions build() => _build();

  _$InstanceApiVersions _build() {
    final _$result = _$v ??
        _$InstanceApiVersions._(
          mastodon: mastodon,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
