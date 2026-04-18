// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credential_account.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CredentialAccount extends CredentialAccount {
  @override
  final String acct;
  @override
  final String avatar;
  @override
  final String avatarStatic;
  @override
  final bool bot;
  @override
  final DateTime createdAt;
  @override
  final String displayName;
  @override
  final BuiltList<CustomEmoji> emojis;
  @override
  final BuiltList<Field> fields;
  @override
  final int followersCount;
  @override
  final int followingCount;
  @override
  final bool group;
  @override
  final String header;
  @override
  final String headerStatic;
  @override
  final String id;
  @override
  final bool locked;
  @override
  final String note;
  @override
  final Role role;
  @override
  final CredentialAccountSource source_;
  @override
  final int statusesCount;
  @override
  final String uri;
  @override
  final String username;
  @override
  final bool? discoverable;
  @override
  final bool? hideCollections;
  @override
  final bool? indexable;
  @override
  final Date? lastStatusAt;
  @override
  final bool? limited;
  @override
  final bool? memorial;
  @override
  final Account? moved;
  @override
  final bool? noindex;
  @override
  final BuiltList<AccountRole>? roles;
  @override
  final bool? showFeatured;
  @override
  final bool? showMedia;
  @override
  final bool? showMediaReplies;
  @override
  final bool? suspended;
  @override
  final String? url;

  factory _$CredentialAccount(
          [void Function(CredentialAccountBuilder)? updates]) =>
      (CredentialAccountBuilder()..update(updates))._build();

  _$CredentialAccount._(
      {required this.acct,
      required this.avatar,
      required this.avatarStatic,
      required this.bot,
      required this.createdAt,
      required this.displayName,
      required this.emojis,
      required this.fields,
      required this.followersCount,
      required this.followingCount,
      required this.group,
      required this.header,
      required this.headerStatic,
      required this.id,
      required this.locked,
      required this.note,
      required this.role,
      required this.source_,
      required this.statusesCount,
      required this.uri,
      required this.username,
      this.discoverable,
      this.hideCollections,
      this.indexable,
      this.lastStatusAt,
      this.limited,
      this.memorial,
      this.moved,
      this.noindex,
      this.roles,
      this.showFeatured,
      this.showMedia,
      this.showMediaReplies,
      this.suspended,
      this.url})
      : super._();
  @override
  CredentialAccount rebuild(void Function(CredentialAccountBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CredentialAccountBuilder toBuilder() =>
      CredentialAccountBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CredentialAccount &&
        acct == other.acct &&
        avatar == other.avatar &&
        avatarStatic == other.avatarStatic &&
        bot == other.bot &&
        createdAt == other.createdAt &&
        displayName == other.displayName &&
        emojis == other.emojis &&
        fields == other.fields &&
        followersCount == other.followersCount &&
        followingCount == other.followingCount &&
        group == other.group &&
        header == other.header &&
        headerStatic == other.headerStatic &&
        id == other.id &&
        locked == other.locked &&
        note == other.note &&
        role == other.role &&
        source_ == other.source_ &&
        statusesCount == other.statusesCount &&
        uri == other.uri &&
        username == other.username &&
        discoverable == other.discoverable &&
        hideCollections == other.hideCollections &&
        indexable == other.indexable &&
        lastStatusAt == other.lastStatusAt &&
        limited == other.limited &&
        memorial == other.memorial &&
        moved == other.moved &&
        noindex == other.noindex &&
        roles == other.roles &&
        showFeatured == other.showFeatured &&
        showMedia == other.showMedia &&
        showMediaReplies == other.showMediaReplies &&
        suspended == other.suspended &&
        url == other.url;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, acct.hashCode);
    _$hash = $jc(_$hash, avatar.hashCode);
    _$hash = $jc(_$hash, avatarStatic.hashCode);
    _$hash = $jc(_$hash, bot.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, emojis.hashCode);
    _$hash = $jc(_$hash, fields.hashCode);
    _$hash = $jc(_$hash, followersCount.hashCode);
    _$hash = $jc(_$hash, followingCount.hashCode);
    _$hash = $jc(_$hash, group.hashCode);
    _$hash = $jc(_$hash, header.hashCode);
    _$hash = $jc(_$hash, headerStatic.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, locked.hashCode);
    _$hash = $jc(_$hash, note.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jc(_$hash, source_.hashCode);
    _$hash = $jc(_$hash, statusesCount.hashCode);
    _$hash = $jc(_$hash, uri.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, discoverable.hashCode);
    _$hash = $jc(_$hash, hideCollections.hashCode);
    _$hash = $jc(_$hash, indexable.hashCode);
    _$hash = $jc(_$hash, lastStatusAt.hashCode);
    _$hash = $jc(_$hash, limited.hashCode);
    _$hash = $jc(_$hash, memorial.hashCode);
    _$hash = $jc(_$hash, moved.hashCode);
    _$hash = $jc(_$hash, noindex.hashCode);
    _$hash = $jc(_$hash, roles.hashCode);
    _$hash = $jc(_$hash, showFeatured.hashCode);
    _$hash = $jc(_$hash, showMedia.hashCode);
    _$hash = $jc(_$hash, showMediaReplies.hashCode);
    _$hash = $jc(_$hash, suspended.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CredentialAccount')
          ..add('acct', acct)
          ..add('avatar', avatar)
          ..add('avatarStatic', avatarStatic)
          ..add('bot', bot)
          ..add('createdAt', createdAt)
          ..add('displayName', displayName)
          ..add('emojis', emojis)
          ..add('fields', fields)
          ..add('followersCount', followersCount)
          ..add('followingCount', followingCount)
          ..add('group', group)
          ..add('header', header)
          ..add('headerStatic', headerStatic)
          ..add('id', id)
          ..add('locked', locked)
          ..add('note', note)
          ..add('role', role)
          ..add('source_', source_)
          ..add('statusesCount', statusesCount)
          ..add('uri', uri)
          ..add('username', username)
          ..add('discoverable', discoverable)
          ..add('hideCollections', hideCollections)
          ..add('indexable', indexable)
          ..add('lastStatusAt', lastStatusAt)
          ..add('limited', limited)
          ..add('memorial', memorial)
          ..add('moved', moved)
          ..add('noindex', noindex)
          ..add('roles', roles)
          ..add('showFeatured', showFeatured)
          ..add('showMedia', showMedia)
          ..add('showMediaReplies', showMediaReplies)
          ..add('suspended', suspended)
          ..add('url', url))
        .toString();
  }
}

class CredentialAccountBuilder
    implements Builder<CredentialAccount, CredentialAccountBuilder> {
  _$CredentialAccount? _$v;

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

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  ListBuilder<CustomEmoji>? _emojis;
  ListBuilder<CustomEmoji> get emojis =>
      _$this._emojis ??= ListBuilder<CustomEmoji>();
  set emojis(ListBuilder<CustomEmoji>? emojis) => _$this._emojis = emojis;

  ListBuilder<Field>? _fields;
  ListBuilder<Field> get fields => _$this._fields ??= ListBuilder<Field>();
  set fields(ListBuilder<Field>? fields) => _$this._fields = fields;

  int? _followersCount;
  int? get followersCount => _$this._followersCount;
  set followersCount(int? followersCount) =>
      _$this._followersCount = followersCount;

  int? _followingCount;
  int? get followingCount => _$this._followingCount;
  set followingCount(int? followingCount) =>
      _$this._followingCount = followingCount;

  bool? _group;
  bool? get group => _$this._group;
  set group(bool? group) => _$this._group = group;

  String? _header;
  String? get header => _$this._header;
  set header(String? header) => _$this._header = header;

  String? _headerStatic;
  String? get headerStatic => _$this._headerStatic;
  set headerStatic(String? headerStatic) => _$this._headerStatic = headerStatic;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  bool? _locked;
  bool? get locked => _$this._locked;
  set locked(bool? locked) => _$this._locked = locked;

  String? _note;
  String? get note => _$this._note;
  set note(String? note) => _$this._note = note;

  RoleBuilder? _role;
  RoleBuilder get role => _$this._role ??= RoleBuilder();
  set role(RoleBuilder? role) => _$this._role = role;

  CredentialAccountSourceBuilder? _source_;
  CredentialAccountSourceBuilder get source_ =>
      _$this._source_ ??= CredentialAccountSourceBuilder();
  set source_(CredentialAccountSourceBuilder? source_) =>
      _$this._source_ = source_;

  int? _statusesCount;
  int? get statusesCount => _$this._statusesCount;
  set statusesCount(int? statusesCount) =>
      _$this._statusesCount = statusesCount;

  String? _uri;
  String? get uri => _$this._uri;
  set uri(String? uri) => _$this._uri = uri;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  bool? _discoverable;
  bool? get discoverable => _$this._discoverable;
  set discoverable(bool? discoverable) => _$this._discoverable = discoverable;

  bool? _hideCollections;
  bool? get hideCollections => _$this._hideCollections;
  set hideCollections(bool? hideCollections) =>
      _$this._hideCollections = hideCollections;

  bool? _indexable;
  bool? get indexable => _$this._indexable;
  set indexable(bool? indexable) => _$this._indexable = indexable;

  Date? _lastStatusAt;
  Date? get lastStatusAt => _$this._lastStatusAt;
  set lastStatusAt(Date? lastStatusAt) => _$this._lastStatusAt = lastStatusAt;

  bool? _limited;
  bool? get limited => _$this._limited;
  set limited(bool? limited) => _$this._limited = limited;

  bool? _memorial;
  bool? get memorial => _$this._memorial;
  set memorial(bool? memorial) => _$this._memorial = memorial;

  AccountBuilder? _moved;
  AccountBuilder get moved => _$this._moved ??= AccountBuilder();
  set moved(AccountBuilder? moved) => _$this._moved = moved;

  bool? _noindex;
  bool? get noindex => _$this._noindex;
  set noindex(bool? noindex) => _$this._noindex = noindex;

  ListBuilder<AccountRole>? _roles;
  ListBuilder<AccountRole> get roles =>
      _$this._roles ??= ListBuilder<AccountRole>();
  set roles(ListBuilder<AccountRole>? roles) => _$this._roles = roles;

  bool? _showFeatured;
  bool? get showFeatured => _$this._showFeatured;
  set showFeatured(bool? showFeatured) => _$this._showFeatured = showFeatured;

  bool? _showMedia;
  bool? get showMedia => _$this._showMedia;
  set showMedia(bool? showMedia) => _$this._showMedia = showMedia;

  bool? _showMediaReplies;
  bool? get showMediaReplies => _$this._showMediaReplies;
  set showMediaReplies(bool? showMediaReplies) =>
      _$this._showMediaReplies = showMediaReplies;

  bool? _suspended;
  bool? get suspended => _$this._suspended;
  set suspended(bool? suspended) => _$this._suspended = suspended;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  CredentialAccountBuilder() {
    CredentialAccount._defaults(this);
  }

  CredentialAccountBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _acct = $v.acct;
      _avatar = $v.avatar;
      _avatarStatic = $v.avatarStatic;
      _bot = $v.bot;
      _createdAt = $v.createdAt;
      _displayName = $v.displayName;
      _emojis = $v.emojis.toBuilder();
      _fields = $v.fields.toBuilder();
      _followersCount = $v.followersCount;
      _followingCount = $v.followingCount;
      _group = $v.group;
      _header = $v.header;
      _headerStatic = $v.headerStatic;
      _id = $v.id;
      _locked = $v.locked;
      _note = $v.note;
      _role = $v.role.toBuilder();
      _source_ = $v.source_.toBuilder();
      _statusesCount = $v.statusesCount;
      _uri = $v.uri;
      _username = $v.username;
      _discoverable = $v.discoverable;
      _hideCollections = $v.hideCollections;
      _indexable = $v.indexable;
      _lastStatusAt = $v.lastStatusAt;
      _limited = $v.limited;
      _memorial = $v.memorial;
      _moved = $v.moved?.toBuilder();
      _noindex = $v.noindex;
      _roles = $v.roles?.toBuilder();
      _showFeatured = $v.showFeatured;
      _showMedia = $v.showMedia;
      _showMediaReplies = $v.showMediaReplies;
      _suspended = $v.suspended;
      _url = $v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CredentialAccount other) {
    _$v = other as _$CredentialAccount;
  }

  @override
  void update(void Function(CredentialAccountBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CredentialAccount build() => _build();

  _$CredentialAccount _build() {
    _$CredentialAccount _$result;
    try {
      _$result = _$v ??
          _$CredentialAccount._(
            acct: BuiltValueNullFieldError.checkNotNull(
                acct, r'CredentialAccount', 'acct'),
            avatar: BuiltValueNullFieldError.checkNotNull(
                avatar, r'CredentialAccount', 'avatar'),
            avatarStatic: BuiltValueNullFieldError.checkNotNull(
                avatarStatic, r'CredentialAccount', 'avatarStatic'),
            bot: BuiltValueNullFieldError.checkNotNull(
                bot, r'CredentialAccount', 'bot'),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'CredentialAccount', 'createdAt'),
            displayName: BuiltValueNullFieldError.checkNotNull(
                displayName, r'CredentialAccount', 'displayName'),
            emojis: emojis.build(),
            fields: fields.build(),
            followersCount: BuiltValueNullFieldError.checkNotNull(
                followersCount, r'CredentialAccount', 'followersCount'),
            followingCount: BuiltValueNullFieldError.checkNotNull(
                followingCount, r'CredentialAccount', 'followingCount'),
            group: BuiltValueNullFieldError.checkNotNull(
                group, r'CredentialAccount', 'group'),
            header: BuiltValueNullFieldError.checkNotNull(
                header, r'CredentialAccount', 'header'),
            headerStatic: BuiltValueNullFieldError.checkNotNull(
                headerStatic, r'CredentialAccount', 'headerStatic'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'CredentialAccount', 'id'),
            locked: BuiltValueNullFieldError.checkNotNull(
                locked, r'CredentialAccount', 'locked'),
            note: BuiltValueNullFieldError.checkNotNull(
                note, r'CredentialAccount', 'note'),
            role: role.build(),
            source_: source_.build(),
            statusesCount: BuiltValueNullFieldError.checkNotNull(
                statusesCount, r'CredentialAccount', 'statusesCount'),
            uri: BuiltValueNullFieldError.checkNotNull(
                uri, r'CredentialAccount', 'uri'),
            username: BuiltValueNullFieldError.checkNotNull(
                username, r'CredentialAccount', 'username'),
            discoverable: discoverable,
            hideCollections: hideCollections,
            indexable: indexable,
            lastStatusAt: lastStatusAt,
            limited: limited,
            memorial: memorial,
            moved: _moved?.build(),
            noindex: noindex,
            roles: _roles?.build(),
            showFeatured: showFeatured,
            showMedia: showMedia,
            showMediaReplies: showMediaReplies,
            suspended: suspended,
            url: url,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'emojis';
        emojis.build();
        _$failedField = 'fields';
        fields.build();

        _$failedField = 'role';
        role.build();
        _$failedField = 'source_';
        source_.build();

        _$failedField = 'moved';
        _moved?.build();

        _$failedField = 'roles';
        _roles?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CredentialAccount', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
