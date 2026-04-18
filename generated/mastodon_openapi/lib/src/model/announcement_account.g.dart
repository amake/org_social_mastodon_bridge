// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'announcement_account.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnnouncementAccount extends AnnouncementAccount {
  @override
  final String acct;
  @override
  final String id;
  @override
  final String url;
  @override
  final String username;

  factory _$AnnouncementAccount(
          [void Function(AnnouncementAccountBuilder)? updates]) =>
      (AnnouncementAccountBuilder()..update(updates))._build();

  _$AnnouncementAccount._(
      {required this.acct,
      required this.id,
      required this.url,
      required this.username})
      : super._();
  @override
  AnnouncementAccount rebuild(
          void Function(AnnouncementAccountBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnnouncementAccountBuilder toBuilder() =>
      AnnouncementAccountBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnnouncementAccount &&
        acct == other.acct &&
        id == other.id &&
        url == other.url &&
        username == other.username;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, acct.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnnouncementAccount')
          ..add('acct', acct)
          ..add('id', id)
          ..add('url', url)
          ..add('username', username))
        .toString();
  }
}

class AnnouncementAccountBuilder
    implements Builder<AnnouncementAccount, AnnouncementAccountBuilder> {
  _$AnnouncementAccount? _$v;

  String? _acct;
  String? get acct => _$this._acct;
  set acct(String? acct) => _$this._acct = acct;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  AnnouncementAccountBuilder() {
    AnnouncementAccount._defaults(this);
  }

  AnnouncementAccountBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _acct = $v.acct;
      _id = $v.id;
      _url = $v.url;
      _username = $v.username;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnnouncementAccount other) {
    _$v = other as _$AnnouncementAccount;
  }

  @override
  void update(void Function(AnnouncementAccountBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnnouncementAccount build() => _build();

  _$AnnouncementAccount _build() {
    final _$result = _$v ??
        _$AnnouncementAccount._(
          acct: BuiltValueNullFieldError.checkNotNull(
              acct, r'AnnouncementAccount', 'acct'),
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'AnnouncementAccount', 'id'),
          url: BuiltValueNullFieldError.checkNotNull(
              url, r'AnnouncementAccount', 'url'),
          username: BuiltValueNullFieldError.checkNotNull(
              username, r'AnnouncementAccount', 'username'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
