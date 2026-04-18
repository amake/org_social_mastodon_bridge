// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'async_refresh.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AsyncRefresh extends AsyncRefresh {
  @override
  final String id;
  @override
  final AsyncRefreshStatusEnum status;
  @override
  final int? resultCount;

  factory _$AsyncRefresh([void Function(AsyncRefreshBuilder)? updates]) =>
      (AsyncRefreshBuilder()..update(updates))._build();

  _$AsyncRefresh._({required this.id, required this.status, this.resultCount})
      : super._();
  @override
  AsyncRefresh rebuild(void Function(AsyncRefreshBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AsyncRefreshBuilder toBuilder() => AsyncRefreshBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AsyncRefresh &&
        id == other.id &&
        status == other.status &&
        resultCount == other.resultCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, resultCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AsyncRefresh')
          ..add('id', id)
          ..add('status', status)
          ..add('resultCount', resultCount))
        .toString();
  }
}

class AsyncRefreshBuilder
    implements Builder<AsyncRefresh, AsyncRefreshBuilder> {
  _$AsyncRefresh? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  AsyncRefreshStatusEnum? _status;
  AsyncRefreshStatusEnum? get status => _$this._status;
  set status(AsyncRefreshStatusEnum? status) => _$this._status = status;

  int? _resultCount;
  int? get resultCount => _$this._resultCount;
  set resultCount(int? resultCount) => _$this._resultCount = resultCount;

  AsyncRefreshBuilder() {
    AsyncRefresh._defaults(this);
  }

  AsyncRefreshBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _status = $v.status;
      _resultCount = $v.resultCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AsyncRefresh other) {
    _$v = other as _$AsyncRefresh;
  }

  @override
  void update(void Function(AsyncRefreshBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AsyncRefresh build() => _build();

  _$AsyncRefresh _build() {
    final _$result = _$v ??
        _$AsyncRefresh._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'AsyncRefresh', 'id'),
          status: BuiltValueNullFieldError.checkNotNull(
              status, r'AsyncRefresh', 'status'),
          resultCount: resultCount,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
