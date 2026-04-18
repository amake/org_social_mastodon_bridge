// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_marker_request_home.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateMarkerRequestHome extends CreateMarkerRequestHome {
  @override
  final String? lastReadId;

  factory _$CreateMarkerRequestHome(
          [void Function(CreateMarkerRequestHomeBuilder)? updates]) =>
      (CreateMarkerRequestHomeBuilder()..update(updates))._build();

  _$CreateMarkerRequestHome._({this.lastReadId}) : super._();
  @override
  CreateMarkerRequestHome rebuild(
          void Function(CreateMarkerRequestHomeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateMarkerRequestHomeBuilder toBuilder() =>
      CreateMarkerRequestHomeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateMarkerRequestHome && lastReadId == other.lastReadId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, lastReadId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateMarkerRequestHome')
          ..add('lastReadId', lastReadId))
        .toString();
  }
}

class CreateMarkerRequestHomeBuilder
    implements
        Builder<CreateMarkerRequestHome, CreateMarkerRequestHomeBuilder> {
  _$CreateMarkerRequestHome? _$v;

  String? _lastReadId;
  String? get lastReadId => _$this._lastReadId;
  set lastReadId(String? lastReadId) => _$this._lastReadId = lastReadId;

  CreateMarkerRequestHomeBuilder() {
    CreateMarkerRequestHome._defaults(this);
  }

  CreateMarkerRequestHomeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _lastReadId = $v.lastReadId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateMarkerRequestHome other) {
    _$v = other as _$CreateMarkerRequestHome;
  }

  @override
  void update(void Function(CreateMarkerRequestHomeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateMarkerRequestHome build() => _build();

  _$CreateMarkerRequestHome _build() {
    final _$result = _$v ??
        _$CreateMarkerRequestHome._(
          lastReadId: lastReadId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
