// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patch_profile_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PatchProfileRequest extends PatchProfileRequest {
  @override
  final BuiltList<String>? attributionDomains;
  @override
  final String? avatar;
  @override
  final String? avatarDescription;
  @override
  final bool? bot;
  @override
  final bool? discoverable;
  @override
  final String? displayName;
  @override
  final JsonObject? fieldsAttributes;
  @override
  final String? header;
  @override
  final String? headerDescription;
  @override
  final bool? hideCollections;
  @override
  final bool? indexable;
  @override
  final bool? locked;
  @override
  final String? note;
  @override
  final bool? showFeatured;
  @override
  final bool? showMedia;
  @override
  final bool? showMediaReplies;

  factory _$PatchProfileRequest(
          [void Function(PatchProfileRequestBuilder)? updates]) =>
      (PatchProfileRequestBuilder()..update(updates))._build();

  _$PatchProfileRequest._(
      {this.attributionDomains,
      this.avatar,
      this.avatarDescription,
      this.bot,
      this.discoverable,
      this.displayName,
      this.fieldsAttributes,
      this.header,
      this.headerDescription,
      this.hideCollections,
      this.indexable,
      this.locked,
      this.note,
      this.showFeatured,
      this.showMedia,
      this.showMediaReplies})
      : super._();
  @override
  PatchProfileRequest rebuild(
          void Function(PatchProfileRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PatchProfileRequestBuilder toBuilder() =>
      PatchProfileRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PatchProfileRequest &&
        attributionDomains == other.attributionDomains &&
        avatar == other.avatar &&
        avatarDescription == other.avatarDescription &&
        bot == other.bot &&
        discoverable == other.discoverable &&
        displayName == other.displayName &&
        fieldsAttributes == other.fieldsAttributes &&
        header == other.header &&
        headerDescription == other.headerDescription &&
        hideCollections == other.hideCollections &&
        indexable == other.indexable &&
        locked == other.locked &&
        note == other.note &&
        showFeatured == other.showFeatured &&
        showMedia == other.showMedia &&
        showMediaReplies == other.showMediaReplies;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, attributionDomains.hashCode);
    _$hash = $jc(_$hash, avatar.hashCode);
    _$hash = $jc(_$hash, avatarDescription.hashCode);
    _$hash = $jc(_$hash, bot.hashCode);
    _$hash = $jc(_$hash, discoverable.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, fieldsAttributes.hashCode);
    _$hash = $jc(_$hash, header.hashCode);
    _$hash = $jc(_$hash, headerDescription.hashCode);
    _$hash = $jc(_$hash, hideCollections.hashCode);
    _$hash = $jc(_$hash, indexable.hashCode);
    _$hash = $jc(_$hash, locked.hashCode);
    _$hash = $jc(_$hash, note.hashCode);
    _$hash = $jc(_$hash, showFeatured.hashCode);
    _$hash = $jc(_$hash, showMedia.hashCode);
    _$hash = $jc(_$hash, showMediaReplies.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PatchProfileRequest')
          ..add('attributionDomains', attributionDomains)
          ..add('avatar', avatar)
          ..add('avatarDescription', avatarDescription)
          ..add('bot', bot)
          ..add('discoverable', discoverable)
          ..add('displayName', displayName)
          ..add('fieldsAttributes', fieldsAttributes)
          ..add('header', header)
          ..add('headerDescription', headerDescription)
          ..add('hideCollections', hideCollections)
          ..add('indexable', indexable)
          ..add('locked', locked)
          ..add('note', note)
          ..add('showFeatured', showFeatured)
          ..add('showMedia', showMedia)
          ..add('showMediaReplies', showMediaReplies))
        .toString();
  }
}

class PatchProfileRequestBuilder
    implements Builder<PatchProfileRequest, PatchProfileRequestBuilder> {
  _$PatchProfileRequest? _$v;

  ListBuilder<String>? _attributionDomains;
  ListBuilder<String> get attributionDomains =>
      _$this._attributionDomains ??= ListBuilder<String>();
  set attributionDomains(ListBuilder<String>? attributionDomains) =>
      _$this._attributionDomains = attributionDomains;

  String? _avatar;
  String? get avatar => _$this._avatar;
  set avatar(String? avatar) => _$this._avatar = avatar;

  String? _avatarDescription;
  String? get avatarDescription => _$this._avatarDescription;
  set avatarDescription(String? avatarDescription) =>
      _$this._avatarDescription = avatarDescription;

  bool? _bot;
  bool? get bot => _$this._bot;
  set bot(bool? bot) => _$this._bot = bot;

  bool? _discoverable;
  bool? get discoverable => _$this._discoverable;
  set discoverable(bool? discoverable) => _$this._discoverable = discoverable;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  JsonObject? _fieldsAttributes;
  JsonObject? get fieldsAttributes => _$this._fieldsAttributes;
  set fieldsAttributes(JsonObject? fieldsAttributes) =>
      _$this._fieldsAttributes = fieldsAttributes;

  String? _header;
  String? get header => _$this._header;
  set header(String? header) => _$this._header = header;

  String? _headerDescription;
  String? get headerDescription => _$this._headerDescription;
  set headerDescription(String? headerDescription) =>
      _$this._headerDescription = headerDescription;

  bool? _hideCollections;
  bool? get hideCollections => _$this._hideCollections;
  set hideCollections(bool? hideCollections) =>
      _$this._hideCollections = hideCollections;

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

  PatchProfileRequestBuilder() {
    PatchProfileRequest._defaults(this);
  }

  PatchProfileRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _attributionDomains = $v.attributionDomains?.toBuilder();
      _avatar = $v.avatar;
      _avatarDescription = $v.avatarDescription;
      _bot = $v.bot;
      _discoverable = $v.discoverable;
      _displayName = $v.displayName;
      _fieldsAttributes = $v.fieldsAttributes;
      _header = $v.header;
      _headerDescription = $v.headerDescription;
      _hideCollections = $v.hideCollections;
      _indexable = $v.indexable;
      _locked = $v.locked;
      _note = $v.note;
      _showFeatured = $v.showFeatured;
      _showMedia = $v.showMedia;
      _showMediaReplies = $v.showMediaReplies;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PatchProfileRequest other) {
    _$v = other as _$PatchProfileRequest;
  }

  @override
  void update(void Function(PatchProfileRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PatchProfileRequest build() => _build();

  _$PatchProfileRequest _build() {
    _$PatchProfileRequest _$result;
    try {
      _$result = _$v ??
          _$PatchProfileRequest._(
            attributionDomains: _attributionDomains?.build(),
            avatar: avatar,
            avatarDescription: avatarDescription,
            bot: bot,
            discoverable: discoverable,
            displayName: displayName,
            fieldsAttributes: fieldsAttributes,
            header: header,
            headerDescription: headerDescription,
            hideCollections: hideCollections,
            indexable: indexable,
            locked: locked,
            note: note,
            showFeatured: showFeatured,
            showMedia: showMedia,
            showMediaReplies: showMediaReplies,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'attributionDomains';
        _attributionDomains?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PatchProfileRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
