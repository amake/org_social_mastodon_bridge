// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instance_contact.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InstanceContact extends InstanceContact {
  @override
  final String email;
  @override
  final Account? account;

  factory _$InstanceContact([void Function(InstanceContactBuilder)? updates]) =>
      (InstanceContactBuilder()..update(updates))._build();

  _$InstanceContact._({required this.email, this.account}) : super._();
  @override
  InstanceContact rebuild(void Function(InstanceContactBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceContactBuilder toBuilder() => InstanceContactBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstanceContact &&
        email == other.email &&
        account == other.account;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, account.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InstanceContact')
          ..add('email', email)
          ..add('account', account))
        .toString();
  }
}

class InstanceContactBuilder
    implements Builder<InstanceContact, InstanceContactBuilder> {
  _$InstanceContact? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  AccountBuilder? _account;
  AccountBuilder get account => _$this._account ??= AccountBuilder();
  set account(AccountBuilder? account) => _$this._account = account;

  InstanceContactBuilder() {
    InstanceContact._defaults(this);
  }

  InstanceContactBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _account = $v.account?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstanceContact other) {
    _$v = other as _$InstanceContact;
  }

  @override
  void update(void Function(InstanceContactBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstanceContact build() => _build();

  _$InstanceContact _build() {
    _$InstanceContact _$result;
    try {
      _$result = _$v ??
          _$InstanceContact._(
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'InstanceContact', 'email'),
            account: _account?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'account';
        _account?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'InstanceContact', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
