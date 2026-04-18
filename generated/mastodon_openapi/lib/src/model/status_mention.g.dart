// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status_mention.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StatusMention extends StatusMention {
  @override
  final String acct;
  @override
  final String id;
  @override
  final String url;
  @override
  final String username;

  factory _$StatusMention([void Function(StatusMentionBuilder)? updates]) =>
      (StatusMentionBuilder()..update(updates))._build();

  _$StatusMention._(
      {required this.acct,
      required this.id,
      required this.url,
      required this.username})
      : super._();
  @override
  StatusMention rebuild(void Function(StatusMentionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StatusMentionBuilder toBuilder() => StatusMentionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StatusMention &&
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
    return (newBuiltValueToStringHelper(r'StatusMention')
          ..add('acct', acct)
          ..add('id', id)
          ..add('url', url)
          ..add('username', username))
        .toString();
  }
}

class StatusMentionBuilder
    implements Builder<StatusMention, StatusMentionBuilder> {
  _$StatusMention? _$v;

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

  StatusMentionBuilder() {
    StatusMention._defaults(this);
  }

  StatusMentionBuilder get _$this {
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
  void replace(StatusMention other) {
    _$v = other as _$StatusMention;
  }

  @override
  void update(void Function(StatusMentionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StatusMention build() => _build();

  _$StatusMention _build() {
    final _$result = _$v ??
        _$StatusMention._(
          acct: BuiltValueNullFieldError.checkNotNull(
              acct, r'StatusMention', 'acct'),
          id: BuiltValueNullFieldError.checkNotNull(id, r'StatusMention', 'id'),
          url: BuiltValueNullFieldError.checkNotNull(
              url, r'StatusMention', 'url'),
          username: BuiltValueNullFieldError.checkNotNull(
              username, r'StatusMention', 'username'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
