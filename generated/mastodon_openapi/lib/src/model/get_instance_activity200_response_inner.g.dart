// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_instance_activity200_response_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetInstanceActivity200ResponseInner
    extends GetInstanceActivity200ResponseInner {
  @override
  final String? week;
  @override
  final String? statuses;
  @override
  final String? logins;
  @override
  final String? registrations;

  factory _$GetInstanceActivity200ResponseInner(
          [void Function(GetInstanceActivity200ResponseInnerBuilder)?
              updates]) =>
      (GetInstanceActivity200ResponseInnerBuilder()..update(updates))._build();

  _$GetInstanceActivity200ResponseInner._(
      {this.week, this.statuses, this.logins, this.registrations})
      : super._();
  @override
  GetInstanceActivity200ResponseInner rebuild(
          void Function(GetInstanceActivity200ResponseInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetInstanceActivity200ResponseInnerBuilder toBuilder() =>
      GetInstanceActivity200ResponseInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetInstanceActivity200ResponseInner &&
        week == other.week &&
        statuses == other.statuses &&
        logins == other.logins &&
        registrations == other.registrations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, week.hashCode);
    _$hash = $jc(_$hash, statuses.hashCode);
    _$hash = $jc(_$hash, logins.hashCode);
    _$hash = $jc(_$hash, registrations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetInstanceActivity200ResponseInner')
          ..add('week', week)
          ..add('statuses', statuses)
          ..add('logins', logins)
          ..add('registrations', registrations))
        .toString();
  }
}

class GetInstanceActivity200ResponseInnerBuilder
    implements
        Builder<GetInstanceActivity200ResponseInner,
            GetInstanceActivity200ResponseInnerBuilder> {
  _$GetInstanceActivity200ResponseInner? _$v;

  String? _week;
  String? get week => _$this._week;
  set week(String? week) => _$this._week = week;

  String? _statuses;
  String? get statuses => _$this._statuses;
  set statuses(String? statuses) => _$this._statuses = statuses;

  String? _logins;
  String? get logins => _$this._logins;
  set logins(String? logins) => _$this._logins = logins;

  String? _registrations;
  String? get registrations => _$this._registrations;
  set registrations(String? registrations) =>
      _$this._registrations = registrations;

  GetInstanceActivity200ResponseInnerBuilder() {
    GetInstanceActivity200ResponseInner._defaults(this);
  }

  GetInstanceActivity200ResponseInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _week = $v.week;
      _statuses = $v.statuses;
      _logins = $v.logins;
      _registrations = $v.registrations;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetInstanceActivity200ResponseInner other) {
    _$v = other as _$GetInstanceActivity200ResponseInner;
  }

  @override
  void update(
      void Function(GetInstanceActivity200ResponseInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetInstanceActivity200ResponseInner build() => _build();

  _$GetInstanceActivity200ResponseInner _build() {
    final _$result = _$v ??
        _$GetInstanceActivity200ResponseInner._(
          week: week,
          statuses: statuses,
          logins: logins,
          registrations: registrations,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
