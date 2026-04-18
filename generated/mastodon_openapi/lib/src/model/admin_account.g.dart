// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_account.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AdminAccount extends AdminAccount {
  @override
  final Account account;
  @override
  final bool approved;
  @override
  final bool confirmed;
  @override
  final DateTime createdAt;
  @override
  final bool disabled;
  @override
  final String email;
  @override
  final String id;
  @override
  final BuiltList<AdminIp> ips;
  @override
  final String locale;
  @override
  final Role role;
  @override
  final bool sensitized;
  @override
  final bool silenced;
  @override
  final bool suspended;
  @override
  final String username;
  @override
  final String? createdByApplicationId;
  @override
  final String? domain;
  @override
  final String? inviteRequest;
  @override
  final String? invitedByAccountId;
  @override
  final String? ip;

  factory _$AdminAccount([void Function(AdminAccountBuilder)? updates]) =>
      (AdminAccountBuilder()..update(updates))._build();

  _$AdminAccount._(
      {required this.account,
      required this.approved,
      required this.confirmed,
      required this.createdAt,
      required this.disabled,
      required this.email,
      required this.id,
      required this.ips,
      required this.locale,
      required this.role,
      required this.sensitized,
      required this.silenced,
      required this.suspended,
      required this.username,
      this.createdByApplicationId,
      this.domain,
      this.inviteRequest,
      this.invitedByAccountId,
      this.ip})
      : super._();
  @override
  AdminAccount rebuild(void Function(AdminAccountBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdminAccountBuilder toBuilder() => AdminAccountBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AdminAccount &&
        account == other.account &&
        approved == other.approved &&
        confirmed == other.confirmed &&
        createdAt == other.createdAt &&
        disabled == other.disabled &&
        email == other.email &&
        id == other.id &&
        ips == other.ips &&
        locale == other.locale &&
        role == other.role &&
        sensitized == other.sensitized &&
        silenced == other.silenced &&
        suspended == other.suspended &&
        username == other.username &&
        createdByApplicationId == other.createdByApplicationId &&
        domain == other.domain &&
        inviteRequest == other.inviteRequest &&
        invitedByAccountId == other.invitedByAccountId &&
        ip == other.ip;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, account.hashCode);
    _$hash = $jc(_$hash, approved.hashCode);
    _$hash = $jc(_$hash, confirmed.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, disabled.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, ips.hashCode);
    _$hash = $jc(_$hash, locale.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jc(_$hash, sensitized.hashCode);
    _$hash = $jc(_$hash, silenced.hashCode);
    _$hash = $jc(_$hash, suspended.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, createdByApplicationId.hashCode);
    _$hash = $jc(_$hash, domain.hashCode);
    _$hash = $jc(_$hash, inviteRequest.hashCode);
    _$hash = $jc(_$hash, invitedByAccountId.hashCode);
    _$hash = $jc(_$hash, ip.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AdminAccount')
          ..add('account', account)
          ..add('approved', approved)
          ..add('confirmed', confirmed)
          ..add('createdAt', createdAt)
          ..add('disabled', disabled)
          ..add('email', email)
          ..add('id', id)
          ..add('ips', ips)
          ..add('locale', locale)
          ..add('role', role)
          ..add('sensitized', sensitized)
          ..add('silenced', silenced)
          ..add('suspended', suspended)
          ..add('username', username)
          ..add('createdByApplicationId', createdByApplicationId)
          ..add('domain', domain)
          ..add('inviteRequest', inviteRequest)
          ..add('invitedByAccountId', invitedByAccountId)
          ..add('ip', ip))
        .toString();
  }
}

class AdminAccountBuilder
    implements Builder<AdminAccount, AdminAccountBuilder> {
  _$AdminAccount? _$v;

  AccountBuilder? _account;
  AccountBuilder get account => _$this._account ??= AccountBuilder();
  set account(AccountBuilder? account) => _$this._account = account;

  bool? _approved;
  bool? get approved => _$this._approved;
  set approved(bool? approved) => _$this._approved = approved;

  bool? _confirmed;
  bool? get confirmed => _$this._confirmed;
  set confirmed(bool? confirmed) => _$this._confirmed = confirmed;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  bool? _disabled;
  bool? get disabled => _$this._disabled;
  set disabled(bool? disabled) => _$this._disabled = disabled;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  ListBuilder<AdminIp>? _ips;
  ListBuilder<AdminIp> get ips => _$this._ips ??= ListBuilder<AdminIp>();
  set ips(ListBuilder<AdminIp>? ips) => _$this._ips = ips;

  String? _locale;
  String? get locale => _$this._locale;
  set locale(String? locale) => _$this._locale = locale;

  RoleBuilder? _role;
  RoleBuilder get role => _$this._role ??= RoleBuilder();
  set role(RoleBuilder? role) => _$this._role = role;

  bool? _sensitized;
  bool? get sensitized => _$this._sensitized;
  set sensitized(bool? sensitized) => _$this._sensitized = sensitized;

  bool? _silenced;
  bool? get silenced => _$this._silenced;
  set silenced(bool? silenced) => _$this._silenced = silenced;

  bool? _suspended;
  bool? get suspended => _$this._suspended;
  set suspended(bool? suspended) => _$this._suspended = suspended;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _createdByApplicationId;
  String? get createdByApplicationId => _$this._createdByApplicationId;
  set createdByApplicationId(String? createdByApplicationId) =>
      _$this._createdByApplicationId = createdByApplicationId;

  String? _domain;
  String? get domain => _$this._domain;
  set domain(String? domain) => _$this._domain = domain;

  String? _inviteRequest;
  String? get inviteRequest => _$this._inviteRequest;
  set inviteRequest(String? inviteRequest) =>
      _$this._inviteRequest = inviteRequest;

  String? _invitedByAccountId;
  String? get invitedByAccountId => _$this._invitedByAccountId;
  set invitedByAccountId(String? invitedByAccountId) =>
      _$this._invitedByAccountId = invitedByAccountId;

  String? _ip;
  String? get ip => _$this._ip;
  set ip(String? ip) => _$this._ip = ip;

  AdminAccountBuilder() {
    AdminAccount._defaults(this);
  }

  AdminAccountBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _account = $v.account.toBuilder();
      _approved = $v.approved;
      _confirmed = $v.confirmed;
      _createdAt = $v.createdAt;
      _disabled = $v.disabled;
      _email = $v.email;
      _id = $v.id;
      _ips = $v.ips.toBuilder();
      _locale = $v.locale;
      _role = $v.role.toBuilder();
      _sensitized = $v.sensitized;
      _silenced = $v.silenced;
      _suspended = $v.suspended;
      _username = $v.username;
      _createdByApplicationId = $v.createdByApplicationId;
      _domain = $v.domain;
      _inviteRequest = $v.inviteRequest;
      _invitedByAccountId = $v.invitedByAccountId;
      _ip = $v.ip;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AdminAccount other) {
    _$v = other as _$AdminAccount;
  }

  @override
  void update(void Function(AdminAccountBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AdminAccount build() => _build();

  _$AdminAccount _build() {
    _$AdminAccount _$result;
    try {
      _$result = _$v ??
          _$AdminAccount._(
            account: account.build(),
            approved: BuiltValueNullFieldError.checkNotNull(
                approved, r'AdminAccount', 'approved'),
            confirmed: BuiltValueNullFieldError.checkNotNull(
                confirmed, r'AdminAccount', 'confirmed'),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'AdminAccount', 'createdAt'),
            disabled: BuiltValueNullFieldError.checkNotNull(
                disabled, r'AdminAccount', 'disabled'),
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'AdminAccount', 'email'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'AdminAccount', 'id'),
            ips: ips.build(),
            locale: BuiltValueNullFieldError.checkNotNull(
                locale, r'AdminAccount', 'locale'),
            role: role.build(),
            sensitized: BuiltValueNullFieldError.checkNotNull(
                sensitized, r'AdminAccount', 'sensitized'),
            silenced: BuiltValueNullFieldError.checkNotNull(
                silenced, r'AdminAccount', 'silenced'),
            suspended: BuiltValueNullFieldError.checkNotNull(
                suspended, r'AdminAccount', 'suspended'),
            username: BuiltValueNullFieldError.checkNotNull(
                username, r'AdminAccount', 'username'),
            createdByApplicationId: createdByApplicationId,
            domain: domain,
            inviteRequest: inviteRequest,
            invitedByAccountId: invitedByAccountId,
            ip: ip,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'account';
        account.build();

        _$failedField = 'ips';
        ips.build();

        _$failedField = 'role';
        role.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'AdminAccount', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
