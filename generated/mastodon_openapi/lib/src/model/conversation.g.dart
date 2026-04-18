// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Conversation extends Conversation {
  @override
  final BuiltList<Account> accounts;
  @override
  final String id;
  @override
  final bool unread;
  @override
  final Status? lastStatus;

  factory _$Conversation([void Function(ConversationBuilder)? updates]) =>
      (ConversationBuilder()..update(updates))._build();

  _$Conversation._(
      {required this.accounts,
      required this.id,
      required this.unread,
      this.lastStatus})
      : super._();
  @override
  Conversation rebuild(void Function(ConversationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConversationBuilder toBuilder() => ConversationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Conversation &&
        accounts == other.accounts &&
        id == other.id &&
        unread == other.unread &&
        lastStatus == other.lastStatus;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accounts.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, unread.hashCode);
    _$hash = $jc(_$hash, lastStatus.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Conversation')
          ..add('accounts', accounts)
          ..add('id', id)
          ..add('unread', unread)
          ..add('lastStatus', lastStatus))
        .toString();
  }
}

class ConversationBuilder
    implements Builder<Conversation, ConversationBuilder> {
  _$Conversation? _$v;

  ListBuilder<Account>? _accounts;
  ListBuilder<Account> get accounts =>
      _$this._accounts ??= ListBuilder<Account>();
  set accounts(ListBuilder<Account>? accounts) => _$this._accounts = accounts;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  bool? _unread;
  bool? get unread => _$this._unread;
  set unread(bool? unread) => _$this._unread = unread;

  StatusBuilder? _lastStatus;
  StatusBuilder get lastStatus => _$this._lastStatus ??= StatusBuilder();
  set lastStatus(StatusBuilder? lastStatus) => _$this._lastStatus = lastStatus;

  ConversationBuilder() {
    Conversation._defaults(this);
  }

  ConversationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accounts = $v.accounts.toBuilder();
      _id = $v.id;
      _unread = $v.unread;
      _lastStatus = $v.lastStatus?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Conversation other) {
    _$v = other as _$Conversation;
  }

  @override
  void update(void Function(ConversationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Conversation build() => _build();

  _$Conversation _build() {
    _$Conversation _$result;
    try {
      _$result = _$v ??
          _$Conversation._(
            accounts: accounts.build(),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'Conversation', 'id'),
            unread: BuiltValueNullFieldError.checkNotNull(
                unread, r'Conversation', 'unread'),
            lastStatus: _lastStatus?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'accounts';
        accounts.build();

        _$failedField = 'lastStatus';
        _lastStatus?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Conversation', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
