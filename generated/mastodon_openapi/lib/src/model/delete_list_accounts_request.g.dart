// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_list_accounts_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteListAccountsRequest extends DeleteListAccountsRequest {
  @override
  final BuiltList<String> accountIds;

  factory _$DeleteListAccountsRequest(
          [void Function(DeleteListAccountsRequestBuilder)? updates]) =>
      (DeleteListAccountsRequestBuilder()..update(updates))._build();

  _$DeleteListAccountsRequest._({required this.accountIds}) : super._();
  @override
  DeleteListAccountsRequest rebuild(
          void Function(DeleteListAccountsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteListAccountsRequestBuilder toBuilder() =>
      DeleteListAccountsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteListAccountsRequest && accountIds == other.accountIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accountIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeleteListAccountsRequest')
          ..add('accountIds', accountIds))
        .toString();
  }
}

class DeleteListAccountsRequestBuilder
    implements
        Builder<DeleteListAccountsRequest, DeleteListAccountsRequestBuilder> {
  _$DeleteListAccountsRequest? _$v;

  ListBuilder<String>? _accountIds;
  ListBuilder<String> get accountIds =>
      _$this._accountIds ??= ListBuilder<String>();
  set accountIds(ListBuilder<String>? accountIds) =>
      _$this._accountIds = accountIds;

  DeleteListAccountsRequestBuilder() {
    DeleteListAccountsRequest._defaults(this);
  }

  DeleteListAccountsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountIds = $v.accountIds.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteListAccountsRequest other) {
    _$v = other as _$DeleteListAccountsRequest;
  }

  @override
  void update(void Function(DeleteListAccountsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteListAccountsRequest build() => _build();

  _$DeleteListAccountsRequest _build() {
    _$DeleteListAccountsRequest _$result;
    try {
      _$result = _$v ??
          _$DeleteListAccountsRequest._(
            accountIds: accountIds.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'accountIds';
        accountIds.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'DeleteListAccountsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
