// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_warning.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AccountWarning extends AccountWarning {
  @override
  final AccountWarningActionEnum action;
  @override
  final DateTime createdAt;
  @override
  final String id;
  @override
  final Account targetAccount;
  @override
  final String text;
  @override
  final Appeal? appeal;
  @override
  final BuiltList<String>? statusIds;

  factory _$AccountWarning([void Function(AccountWarningBuilder)? updates]) =>
      (AccountWarningBuilder()..update(updates))._build();

  _$AccountWarning._(
      {required this.action,
      required this.createdAt,
      required this.id,
      required this.targetAccount,
      required this.text,
      this.appeal,
      this.statusIds})
      : super._();
  @override
  AccountWarning rebuild(void Function(AccountWarningBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountWarningBuilder toBuilder() => AccountWarningBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccountWarning &&
        action == other.action &&
        createdAt == other.createdAt &&
        id == other.id &&
        targetAccount == other.targetAccount &&
        text == other.text &&
        appeal == other.appeal &&
        statusIds == other.statusIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, action.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, targetAccount.hashCode);
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jc(_$hash, appeal.hashCode);
    _$hash = $jc(_$hash, statusIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AccountWarning')
          ..add('action', action)
          ..add('createdAt', createdAt)
          ..add('id', id)
          ..add('targetAccount', targetAccount)
          ..add('text', text)
          ..add('appeal', appeal)
          ..add('statusIds', statusIds))
        .toString();
  }
}

class AccountWarningBuilder
    implements Builder<AccountWarning, AccountWarningBuilder> {
  _$AccountWarning? _$v;

  AccountWarningActionEnum? _action;
  AccountWarningActionEnum? get action => _$this._action;
  set action(AccountWarningActionEnum? action) => _$this._action = action;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  AccountBuilder? _targetAccount;
  AccountBuilder get targetAccount =>
      _$this._targetAccount ??= AccountBuilder();
  set targetAccount(AccountBuilder? targetAccount) =>
      _$this._targetAccount = targetAccount;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  AppealBuilder? _appeal;
  AppealBuilder get appeal => _$this._appeal ??= AppealBuilder();
  set appeal(AppealBuilder? appeal) => _$this._appeal = appeal;

  ListBuilder<String>? _statusIds;
  ListBuilder<String> get statusIds =>
      _$this._statusIds ??= ListBuilder<String>();
  set statusIds(ListBuilder<String>? statusIds) =>
      _$this._statusIds = statusIds;

  AccountWarningBuilder() {
    AccountWarning._defaults(this);
  }

  AccountWarningBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _action = $v.action;
      _createdAt = $v.createdAt;
      _id = $v.id;
      _targetAccount = $v.targetAccount.toBuilder();
      _text = $v.text;
      _appeal = $v.appeal?.toBuilder();
      _statusIds = $v.statusIds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccountWarning other) {
    _$v = other as _$AccountWarning;
  }

  @override
  void update(void Function(AccountWarningBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccountWarning build() => _build();

  _$AccountWarning _build() {
    _$AccountWarning _$result;
    try {
      _$result = _$v ??
          _$AccountWarning._(
            action: BuiltValueNullFieldError.checkNotNull(
                action, r'AccountWarning', 'action'),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'AccountWarning', 'createdAt'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'AccountWarning', 'id'),
            targetAccount: targetAccount.build(),
            text: BuiltValueNullFieldError.checkNotNull(
                text, r'AccountWarning', 'text'),
            appeal: _appeal?.build(),
            statusIds: _statusIds?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'targetAccount';
        targetAccount.build();

        _$failedField = 'appeal';
        _appeal?.build();
        _$failedField = 'statusIds';
        _statusIds?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'AccountWarning', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
