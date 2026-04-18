// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_instance_stats.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V1InstanceStats extends V1InstanceStats {
  @override
  final int domainCount;
  @override
  final int statusCount;
  @override
  final int userCount;

  factory _$V1InstanceStats([void Function(V1InstanceStatsBuilder)? updates]) =>
      (V1InstanceStatsBuilder()..update(updates))._build();

  _$V1InstanceStats._(
      {required this.domainCount,
      required this.statusCount,
      required this.userCount})
      : super._();
  @override
  V1InstanceStats rebuild(void Function(V1InstanceStatsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V1InstanceStatsBuilder toBuilder() => V1InstanceStatsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V1InstanceStats &&
        domainCount == other.domainCount &&
        statusCount == other.statusCount &&
        userCount == other.userCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, domainCount.hashCode);
    _$hash = $jc(_$hash, statusCount.hashCode);
    _$hash = $jc(_$hash, userCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'V1InstanceStats')
          ..add('domainCount', domainCount)
          ..add('statusCount', statusCount)
          ..add('userCount', userCount))
        .toString();
  }
}

class V1InstanceStatsBuilder
    implements Builder<V1InstanceStats, V1InstanceStatsBuilder> {
  _$V1InstanceStats? _$v;

  int? _domainCount;
  int? get domainCount => _$this._domainCount;
  set domainCount(int? domainCount) => _$this._domainCount = domainCount;

  int? _statusCount;
  int? get statusCount => _$this._statusCount;
  set statusCount(int? statusCount) => _$this._statusCount = statusCount;

  int? _userCount;
  int? get userCount => _$this._userCount;
  set userCount(int? userCount) => _$this._userCount = userCount;

  V1InstanceStatsBuilder() {
    V1InstanceStats._defaults(this);
  }

  V1InstanceStatsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _domainCount = $v.domainCount;
      _statusCount = $v.statusCount;
      _userCount = $v.userCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V1InstanceStats other) {
    _$v = other as _$V1InstanceStats;
  }

  @override
  void update(void Function(V1InstanceStatsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V1InstanceStats build() => _build();

  _$V1InstanceStats _build() {
    final _$result = _$v ??
        _$V1InstanceStats._(
          domainCount: BuiltValueNullFieldError.checkNotNull(
              domainCount, r'V1InstanceStats', 'domainCount'),
          statusCount: BuiltValueNullFieldError.checkNotNull(
              statusCount, r'V1InstanceStats', 'statusCount'),
          userCount: BuiltValueNullFieldError.checkNotNull(
              userCount, r'V1InstanceStats', 'userCount'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
