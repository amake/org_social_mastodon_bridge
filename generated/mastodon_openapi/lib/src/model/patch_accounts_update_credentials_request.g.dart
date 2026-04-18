// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patch_accounts_update_credentials_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PatchAccountsUpdateCredentialsRequest
    extends PatchAccountsUpdateCredentialsRequest {
  @override
  final BuiltList<String>? attributionDomains;
  @override
  final String? avatar;
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
  final bool? hideCollections;
  @override
  final bool? indexable;
  @override
  final bool? locked;
  @override
  final String? note;
  @override
  final PatchAccountsUpdateCredentialsRequestSource? source_;

  factory _$PatchAccountsUpdateCredentialsRequest(
          [void Function(PatchAccountsUpdateCredentialsRequestBuilder)?
              updates]) =>
      (PatchAccountsUpdateCredentialsRequestBuilder()..update(updates))
          ._build();

  _$PatchAccountsUpdateCredentialsRequest._(
      {this.attributionDomains,
      this.avatar,
      this.bot,
      this.discoverable,
      this.displayName,
      this.fieldsAttributes,
      this.header,
      this.hideCollections,
      this.indexable,
      this.locked,
      this.note,
      this.source_})
      : super._();
  @override
  PatchAccountsUpdateCredentialsRequest rebuild(
          void Function(PatchAccountsUpdateCredentialsRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PatchAccountsUpdateCredentialsRequestBuilder toBuilder() =>
      PatchAccountsUpdateCredentialsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PatchAccountsUpdateCredentialsRequest &&
        attributionDomains == other.attributionDomains &&
        avatar == other.avatar &&
        bot == other.bot &&
        discoverable == other.discoverable &&
        displayName == other.displayName &&
        fieldsAttributes == other.fieldsAttributes &&
        header == other.header &&
        hideCollections == other.hideCollections &&
        indexable == other.indexable &&
        locked == other.locked &&
        note == other.note &&
        source_ == other.source_;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, attributionDomains.hashCode);
    _$hash = $jc(_$hash, avatar.hashCode);
    _$hash = $jc(_$hash, bot.hashCode);
    _$hash = $jc(_$hash, discoverable.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, fieldsAttributes.hashCode);
    _$hash = $jc(_$hash, header.hashCode);
    _$hash = $jc(_$hash, hideCollections.hashCode);
    _$hash = $jc(_$hash, indexable.hashCode);
    _$hash = $jc(_$hash, locked.hashCode);
    _$hash = $jc(_$hash, note.hashCode);
    _$hash = $jc(_$hash, source_.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'PatchAccountsUpdateCredentialsRequest')
          ..add('attributionDomains', attributionDomains)
          ..add('avatar', avatar)
          ..add('bot', bot)
          ..add('discoverable', discoverable)
          ..add('displayName', displayName)
          ..add('fieldsAttributes', fieldsAttributes)
          ..add('header', header)
          ..add('hideCollections', hideCollections)
          ..add('indexable', indexable)
          ..add('locked', locked)
          ..add('note', note)
          ..add('source_', source_))
        .toString();
  }
}

class PatchAccountsUpdateCredentialsRequestBuilder
    implements
        Builder<PatchAccountsUpdateCredentialsRequest,
            PatchAccountsUpdateCredentialsRequestBuilder> {
  _$PatchAccountsUpdateCredentialsRequest? _$v;

  ListBuilder<String>? _attributionDomains;
  ListBuilder<String> get attributionDomains =>
      _$this._attributionDomains ??= ListBuilder<String>();
  set attributionDomains(ListBuilder<String>? attributionDomains) =>
      _$this._attributionDomains = attributionDomains;

  String? _avatar;
  String? get avatar => _$this._avatar;
  set avatar(String? avatar) => _$this._avatar = avatar;

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

  PatchAccountsUpdateCredentialsRequestSourceBuilder? _source_;
  PatchAccountsUpdateCredentialsRequestSourceBuilder get source_ =>
      _$this._source_ ??= PatchAccountsUpdateCredentialsRequestSourceBuilder();
  set source_(PatchAccountsUpdateCredentialsRequestSourceBuilder? source_) =>
      _$this._source_ = source_;

  PatchAccountsUpdateCredentialsRequestBuilder() {
    PatchAccountsUpdateCredentialsRequest._defaults(this);
  }

  PatchAccountsUpdateCredentialsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _attributionDomains = $v.attributionDomains?.toBuilder();
      _avatar = $v.avatar;
      _bot = $v.bot;
      _discoverable = $v.discoverable;
      _displayName = $v.displayName;
      _fieldsAttributes = $v.fieldsAttributes;
      _header = $v.header;
      _hideCollections = $v.hideCollections;
      _indexable = $v.indexable;
      _locked = $v.locked;
      _note = $v.note;
      _source_ = $v.source_?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PatchAccountsUpdateCredentialsRequest other) {
    _$v = other as _$PatchAccountsUpdateCredentialsRequest;
  }

  @override
  void update(
      void Function(PatchAccountsUpdateCredentialsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PatchAccountsUpdateCredentialsRequest build() => _build();

  _$PatchAccountsUpdateCredentialsRequest _build() {
    _$PatchAccountsUpdateCredentialsRequest _$result;
    try {
      _$result = _$v ??
          _$PatchAccountsUpdateCredentialsRequest._(
            attributionDomains: _attributionDomains?.build(),
            avatar: avatar,
            bot: bot,
            discoverable: discoverable,
            displayName: displayName,
            fieldsAttributes: fieldsAttributes,
            header: header,
            hideCollections: hideCollections,
            indexable: indexable,
            locked: locked,
            note: note,
            source_: _source_?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'attributionDomains';
        _attributionDomains?.build();

        _$failedField = 'source_';
        _source_?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PatchAccountsUpdateCredentialsRequest',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
