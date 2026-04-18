// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Profile extends Profile {
  @override
  final BuiltList<String> attributionDomains;
  @override
  final String avatarDescription;
  @override
  final bool bot;
  @override
  final String displayName;
  @override
  final BuiltList<Field> fields;
  @override
  final String headerDescription;
  @override
  final String id;
  @override
  final bool indexable;
  @override
  final bool locked;
  @override
  final String note;
  @override
  final bool showFeatured;
  @override
  final bool showMedia;
  @override
  final bool showMediaReplies;
  @override
  final String? avatar;
  @override
  final String? avatarStatic;
  @override
  final bool? discoverable;
  @override
  final String? header;
  @override
  final String? headerStatic;
  @override
  final bool? hideCollections;

  factory _$Profile([void Function(ProfileBuilder)? updates]) =>
      (ProfileBuilder()..update(updates))._build();

  _$Profile._(
      {required this.attributionDomains,
      required this.avatarDescription,
      required this.bot,
      required this.displayName,
      required this.fields,
      required this.headerDescription,
      required this.id,
      required this.indexable,
      required this.locked,
      required this.note,
      required this.showFeatured,
      required this.showMedia,
      required this.showMediaReplies,
      this.avatar,
      this.avatarStatic,
      this.discoverable,
      this.header,
      this.headerStatic,
      this.hideCollections})
      : super._();
  @override
  Profile rebuild(void Function(ProfileBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProfileBuilder toBuilder() => ProfileBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Profile &&
        attributionDomains == other.attributionDomains &&
        avatarDescription == other.avatarDescription &&
        bot == other.bot &&
        displayName == other.displayName &&
        fields == other.fields &&
        headerDescription == other.headerDescription &&
        id == other.id &&
        indexable == other.indexable &&
        locked == other.locked &&
        note == other.note &&
        showFeatured == other.showFeatured &&
        showMedia == other.showMedia &&
        showMediaReplies == other.showMediaReplies &&
        avatar == other.avatar &&
        avatarStatic == other.avatarStatic &&
        discoverable == other.discoverable &&
        header == other.header &&
        headerStatic == other.headerStatic &&
        hideCollections == other.hideCollections;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, attributionDomains.hashCode);
    _$hash = $jc(_$hash, avatarDescription.hashCode);
    _$hash = $jc(_$hash, bot.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, fields.hashCode);
    _$hash = $jc(_$hash, headerDescription.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, indexable.hashCode);
    _$hash = $jc(_$hash, locked.hashCode);
    _$hash = $jc(_$hash, note.hashCode);
    _$hash = $jc(_$hash, showFeatured.hashCode);
    _$hash = $jc(_$hash, showMedia.hashCode);
    _$hash = $jc(_$hash, showMediaReplies.hashCode);
    _$hash = $jc(_$hash, avatar.hashCode);
    _$hash = $jc(_$hash, avatarStatic.hashCode);
    _$hash = $jc(_$hash, discoverable.hashCode);
    _$hash = $jc(_$hash, header.hashCode);
    _$hash = $jc(_$hash, headerStatic.hashCode);
    _$hash = $jc(_$hash, hideCollections.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Profile')
          ..add('attributionDomains', attributionDomains)
          ..add('avatarDescription', avatarDescription)
          ..add('bot', bot)
          ..add('displayName', displayName)
          ..add('fields', fields)
          ..add('headerDescription', headerDescription)
          ..add('id', id)
          ..add('indexable', indexable)
          ..add('locked', locked)
          ..add('note', note)
          ..add('showFeatured', showFeatured)
          ..add('showMedia', showMedia)
          ..add('showMediaReplies', showMediaReplies)
          ..add('avatar', avatar)
          ..add('avatarStatic', avatarStatic)
          ..add('discoverable', discoverable)
          ..add('header', header)
          ..add('headerStatic', headerStatic)
          ..add('hideCollections', hideCollections))
        .toString();
  }
}

class ProfileBuilder implements Builder<Profile, ProfileBuilder> {
  _$Profile? _$v;

  ListBuilder<String>? _attributionDomains;
  ListBuilder<String> get attributionDomains =>
      _$this._attributionDomains ??= ListBuilder<String>();
  set attributionDomains(ListBuilder<String>? attributionDomains) =>
      _$this._attributionDomains = attributionDomains;

  String? _avatarDescription;
  String? get avatarDescription => _$this._avatarDescription;
  set avatarDescription(String? avatarDescription) =>
      _$this._avatarDescription = avatarDescription;

  bool? _bot;
  bool? get bot => _$this._bot;
  set bot(bool? bot) => _$this._bot = bot;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  ListBuilder<Field>? _fields;
  ListBuilder<Field> get fields => _$this._fields ??= ListBuilder<Field>();
  set fields(ListBuilder<Field>? fields) => _$this._fields = fields;

  String? _headerDescription;
  String? get headerDescription => _$this._headerDescription;
  set headerDescription(String? headerDescription) =>
      _$this._headerDescription = headerDescription;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  bool? _indexable;
  bool? get indexable => _$this._indexable;
  set indexable(bool? indexable) => _$this._indexable = indexable;

  bool? _locked;
  bool? get locked => _$this._locked;
  set locked(bool? locked) => _$this._locked = locked;

  String? _note;
  String? get note => _$this._note;
  set note(String? note) => _$this._note = note;

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

  String? _avatar;
  String? get avatar => _$this._avatar;
  set avatar(String? avatar) => _$this._avatar = avatar;

  String? _avatarStatic;
  String? get avatarStatic => _$this._avatarStatic;
  set avatarStatic(String? avatarStatic) => _$this._avatarStatic = avatarStatic;

  bool? _discoverable;
  bool? get discoverable => _$this._discoverable;
  set discoverable(bool? discoverable) => _$this._discoverable = discoverable;

  String? _header;
  String? get header => _$this._header;
  set header(String? header) => _$this._header = header;

  String? _headerStatic;
  String? get headerStatic => _$this._headerStatic;
  set headerStatic(String? headerStatic) => _$this._headerStatic = headerStatic;

  bool? _hideCollections;
  bool? get hideCollections => _$this._hideCollections;
  set hideCollections(bool? hideCollections) =>
      _$this._hideCollections = hideCollections;

  ProfileBuilder() {
    Profile._defaults(this);
  }

  ProfileBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _attributionDomains = $v.attributionDomains.toBuilder();
      _avatarDescription = $v.avatarDescription;
      _bot = $v.bot;
      _displayName = $v.displayName;
      _fields = $v.fields.toBuilder();
      _headerDescription = $v.headerDescription;
      _id = $v.id;
      _indexable = $v.indexable;
      _locked = $v.locked;
      _note = $v.note;
      _showFeatured = $v.showFeatured;
      _showMedia = $v.showMedia;
      _showMediaReplies = $v.showMediaReplies;
      _avatar = $v.avatar;
      _avatarStatic = $v.avatarStatic;
      _discoverable = $v.discoverable;
      _header = $v.header;
      _headerStatic = $v.headerStatic;
      _hideCollections = $v.hideCollections;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Profile other) {
    _$v = other as _$Profile;
  }

  @override
  void update(void Function(ProfileBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Profile build() => _build();

  _$Profile _build() {
    _$Profile _$result;
    try {
      _$result = _$v ??
          _$Profile._(
            attributionDomains: attributionDomains.build(),
            avatarDescription: BuiltValueNullFieldError.checkNotNull(
                avatarDescription, r'Profile', 'avatarDescription'),
            bot: BuiltValueNullFieldError.checkNotNull(bot, r'Profile', 'bot'),
            displayName: BuiltValueNullFieldError.checkNotNull(
                displayName, r'Profile', 'displayName'),
            fields: fields.build(),
            headerDescription: BuiltValueNullFieldError.checkNotNull(
                headerDescription, r'Profile', 'headerDescription'),
            id: BuiltValueNullFieldError.checkNotNull(id, r'Profile', 'id'),
            indexable: BuiltValueNullFieldError.checkNotNull(
                indexable, r'Profile', 'indexable'),
            locked: BuiltValueNullFieldError.checkNotNull(
                locked, r'Profile', 'locked'),
            note:
                BuiltValueNullFieldError.checkNotNull(note, r'Profile', 'note'),
            showFeatured: BuiltValueNullFieldError.checkNotNull(
                showFeatured, r'Profile', 'showFeatured'),
            showMedia: BuiltValueNullFieldError.checkNotNull(
                showMedia, r'Profile', 'showMedia'),
            showMediaReplies: BuiltValueNullFieldError.checkNotNull(
                showMediaReplies, r'Profile', 'showMediaReplies'),
            avatar: avatar,
            avatarStatic: avatarStatic,
            discoverable: discoverable,
            header: header,
            headerStatic: headerStatic,
            hideCollections: hideCollections,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'attributionDomains';
        attributionDomains.build();

        _$failedField = 'fields';
        fields.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Profile', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
