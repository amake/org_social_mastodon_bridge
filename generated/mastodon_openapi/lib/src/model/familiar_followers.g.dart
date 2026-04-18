// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'familiar_followers.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FamiliarFollowers extends FamiliarFollowers {
  @override
  final BuiltList<Account> accounts;
  @override
  final String id;

  factory _$FamiliarFollowers(
          [void Function(FamiliarFollowersBuilder)? updates]) =>
      (FamiliarFollowersBuilder()..update(updates))._build();

  _$FamiliarFollowers._({required this.accounts, required this.id}) : super._();
  @override
  FamiliarFollowers rebuild(void Function(FamiliarFollowersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FamiliarFollowersBuilder toBuilder() =>
      FamiliarFollowersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FamiliarFollowers &&
        accounts == other.accounts &&
        id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accounts.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FamiliarFollowers')
          ..add('accounts', accounts)
          ..add('id', id))
        .toString();
  }
}

class FamiliarFollowersBuilder
    implements Builder<FamiliarFollowers, FamiliarFollowersBuilder> {
  _$FamiliarFollowers? _$v;

  ListBuilder<Account>? _accounts;
  ListBuilder<Account> get accounts =>
      _$this._accounts ??= ListBuilder<Account>();
  set accounts(ListBuilder<Account>? accounts) => _$this._accounts = accounts;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  FamiliarFollowersBuilder() {
    FamiliarFollowers._defaults(this);
  }

  FamiliarFollowersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accounts = $v.accounts.toBuilder();
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FamiliarFollowers other) {
    _$v = other as _$FamiliarFollowers;
  }

  @override
  void update(void Function(FamiliarFollowersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FamiliarFollowers build() => _build();

  _$FamiliarFollowers _build() {
    _$FamiliarFollowers _$result;
    try {
      _$result = _$v ??
          _$FamiliarFollowers._(
            accounts: accounts.build(),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'FamiliarFollowers', 'id'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'accounts';
        accounts.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'FamiliarFollowers', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
