// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'async_refresh_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AsyncRefreshResponse extends AsyncRefreshResponse {
  @override
  final AsyncRefresh asyncRefresh;

  factory _$AsyncRefreshResponse(
          [void Function(AsyncRefreshResponseBuilder)? updates]) =>
      (AsyncRefreshResponseBuilder()..update(updates))._build();

  _$AsyncRefreshResponse._({required this.asyncRefresh}) : super._();
  @override
  AsyncRefreshResponse rebuild(
          void Function(AsyncRefreshResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AsyncRefreshResponseBuilder toBuilder() =>
      AsyncRefreshResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AsyncRefreshResponse && asyncRefresh == other.asyncRefresh;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, asyncRefresh.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AsyncRefreshResponse')
          ..add('asyncRefresh', asyncRefresh))
        .toString();
  }
}

class AsyncRefreshResponseBuilder
    implements Builder<AsyncRefreshResponse, AsyncRefreshResponseBuilder> {
  _$AsyncRefreshResponse? _$v;

  AsyncRefreshBuilder? _asyncRefresh;
  AsyncRefreshBuilder get asyncRefresh =>
      _$this._asyncRefresh ??= AsyncRefreshBuilder();
  set asyncRefresh(AsyncRefreshBuilder? asyncRefresh) =>
      _$this._asyncRefresh = asyncRefresh;

  AsyncRefreshResponseBuilder() {
    AsyncRefreshResponse._defaults(this);
  }

  AsyncRefreshResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _asyncRefresh = $v.asyncRefresh.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AsyncRefreshResponse other) {
    _$v = other as _$AsyncRefreshResponse;
  }

  @override
  void update(void Function(AsyncRefreshResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AsyncRefreshResponse build() => _build();

  _$AsyncRefreshResponse _build() {
    _$AsyncRefreshResponse _$result;
    try {
      _$result = _$v ??
          _$AsyncRefreshResponse._(
            asyncRefresh: asyncRefresh.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'asyncRefresh';
        asyncRefresh.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'AsyncRefreshResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
