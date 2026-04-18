// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_list_accounts_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostListAccountsRequest extends PostListAccountsRequest {
  @override
  final BuiltList<String> accountIds;

  factory _$PostListAccountsRequest(
          [void Function(PostListAccountsRequestBuilder)? updates]) =>
      (PostListAccountsRequestBuilder()..update(updates))._build();

  _$PostListAccountsRequest._({required this.accountIds}) : super._();
  @override
  PostListAccountsRequest rebuild(
          void Function(PostListAccountsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostListAccountsRequestBuilder toBuilder() =>
      PostListAccountsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostListAccountsRequest && accountIds == other.accountIds;
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
    return (newBuiltValueToStringHelper(r'PostListAccountsRequest')
          ..add('accountIds', accountIds))
        .toString();
  }
}

class PostListAccountsRequestBuilder
    implements
        Builder<PostListAccountsRequest, PostListAccountsRequestBuilder> {
  _$PostListAccountsRequest? _$v;

  ListBuilder<String>? _accountIds;
  ListBuilder<String> get accountIds =>
      _$this._accountIds ??= ListBuilder<String>();
  set accountIds(ListBuilder<String>? accountIds) =>
      _$this._accountIds = accountIds;

  PostListAccountsRequestBuilder() {
    PostListAccountsRequest._defaults(this);
  }

  PostListAccountsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountIds = $v.accountIds.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostListAccountsRequest other) {
    _$v = other as _$PostListAccountsRequest;
  }

  @override
  void update(void Function(PostListAccountsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PostListAccountsRequest build() => _build();

  _$PostListAccountsRequest _build() {
    _$PostListAccountsRequest _$result;
    try {
      _$result = _$v ??
          _$PostListAccountsRequest._(
            accountIds: accountIds.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'accountIds';
        accountIds.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PostListAccountsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
