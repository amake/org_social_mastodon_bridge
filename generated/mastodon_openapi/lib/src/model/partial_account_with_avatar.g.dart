// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partial_account_with_avatar.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PartialAccountWithAvatar extends PartialAccountWithAvatar {
  @override
  final String acct;
  @override
  final String avatar;
  @override
  final String avatarStatic;
  @override
  final bool bot;
  @override
  final String id;
  @override
  final bool locked;
  @override
  final String url;

  factory _$PartialAccountWithAvatar(
          [void Function(PartialAccountWithAvatarBuilder)? updates]) =>
      (PartialAccountWithAvatarBuilder()..update(updates))._build();

  _$PartialAccountWithAvatar._(
      {required this.acct,
      required this.avatar,
      required this.avatarStatic,
      required this.bot,
      required this.id,
      required this.locked,
      required this.url})
      : super._();
  @override
  PartialAccountWithAvatar rebuild(
          void Function(PartialAccountWithAvatarBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PartialAccountWithAvatarBuilder toBuilder() =>
      PartialAccountWithAvatarBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PartialAccountWithAvatar &&
        acct == other.acct &&
        avatar == other.avatar &&
        avatarStatic == other.avatarStatic &&
        bot == other.bot &&
        id == other.id &&
        locked == other.locked &&
        url == other.url;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, acct.hashCode);
    _$hash = $jc(_$hash, avatar.hashCode);
    _$hash = $jc(_$hash, avatarStatic.hashCode);
    _$hash = $jc(_$hash, bot.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, locked.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PartialAccountWithAvatar')
          ..add('acct', acct)
          ..add('avatar', avatar)
          ..add('avatarStatic', avatarStatic)
          ..add('bot', bot)
          ..add('id', id)
          ..add('locked', locked)
          ..add('url', url))
        .toString();
  }
}

class PartialAccountWithAvatarBuilder
    implements
        Builder<PartialAccountWithAvatar, PartialAccountWithAvatarBuilder> {
  _$PartialAccountWithAvatar? _$v;

  String? _acct;
  String? get acct => _$this._acct;
  set acct(String? acct) => _$this._acct = acct;

  String? _avatar;
  String? get avatar => _$this._avatar;
  set avatar(String? avatar) => _$this._avatar = avatar;

  String? _avatarStatic;
  String? get avatarStatic => _$this._avatarStatic;
  set avatarStatic(String? avatarStatic) => _$this._avatarStatic = avatarStatic;

  bool? _bot;
  bool? get bot => _$this._bot;
  set bot(bool? bot) => _$this._bot = bot;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  bool? _locked;
  bool? get locked => _$this._locked;
  set locked(bool? locked) => _$this._locked = locked;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  PartialAccountWithAvatarBuilder() {
    PartialAccountWithAvatar._defaults(this);
  }

  PartialAccountWithAvatarBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _acct = $v.acct;
      _avatar = $v.avatar;
      _avatarStatic = $v.avatarStatic;
      _bot = $v.bot;
      _id = $v.id;
      _locked = $v.locked;
      _url = $v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PartialAccountWithAvatar other) {
    _$v = other as _$PartialAccountWithAvatar;
  }

  @override
  void update(void Function(PartialAccountWithAvatarBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PartialAccountWithAvatar build() => _build();

  _$PartialAccountWithAvatar _build() {
    final _$result = _$v ??
        _$PartialAccountWithAvatar._(
          acct: BuiltValueNullFieldError.checkNotNull(
              acct, r'PartialAccountWithAvatar', 'acct'),
          avatar: BuiltValueNullFieldError.checkNotNull(
              avatar, r'PartialAccountWithAvatar', 'avatar'),
          avatarStatic: BuiltValueNullFieldError.checkNotNull(
              avatarStatic, r'PartialAccountWithAvatar', 'avatarStatic'),
          bot: BuiltValueNullFieldError.checkNotNull(
              bot, r'PartialAccountWithAvatar', 'bot'),
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'PartialAccountWithAvatar', 'id'),
          locked: BuiltValueNullFieldError.checkNotNull(
              locked, r'PartialAccountWithAvatar', 'locked'),
          url: BuiltValueNullFieldError.checkNotNull(
              url, r'PartialAccountWithAvatar', 'url'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
