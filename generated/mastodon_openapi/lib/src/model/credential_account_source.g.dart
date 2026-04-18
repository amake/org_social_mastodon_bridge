// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credential_account_source.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CredentialAccountSource extends CredentialAccountSource {
  @override
  final BuiltList<Field> fields;
  @override
  final int followRequestsCount;
  @override
  final String note;
  @override
  final StatusVisibilityEnum privacy;
  @override
  final bool sensitive;
  @override
  final BuiltList<String>? attributionDomains;
  @override
  final bool? discoverable;
  @override
  final bool? hideCollections;
  @override
  final bool? indexable;
  @override
  final String? language;
  @override
  final CredentialAccountSourceQuotePolicyEnum? quotePolicy;

  factory _$CredentialAccountSource(
          [void Function(CredentialAccountSourceBuilder)? updates]) =>
      (CredentialAccountSourceBuilder()..update(updates))._build();

  _$CredentialAccountSource._(
      {required this.fields,
      required this.followRequestsCount,
      required this.note,
      required this.privacy,
      required this.sensitive,
      this.attributionDomains,
      this.discoverable,
      this.hideCollections,
      this.indexable,
      this.language,
      this.quotePolicy})
      : super._();
  @override
  CredentialAccountSource rebuild(
          void Function(CredentialAccountSourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CredentialAccountSourceBuilder toBuilder() =>
      CredentialAccountSourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CredentialAccountSource &&
        fields == other.fields &&
        followRequestsCount == other.followRequestsCount &&
        note == other.note &&
        privacy == other.privacy &&
        sensitive == other.sensitive &&
        attributionDomains == other.attributionDomains &&
        discoverable == other.discoverable &&
        hideCollections == other.hideCollections &&
        indexable == other.indexable &&
        language == other.language &&
        quotePolicy == other.quotePolicy;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fields.hashCode);
    _$hash = $jc(_$hash, followRequestsCount.hashCode);
    _$hash = $jc(_$hash, note.hashCode);
    _$hash = $jc(_$hash, privacy.hashCode);
    _$hash = $jc(_$hash, sensitive.hashCode);
    _$hash = $jc(_$hash, attributionDomains.hashCode);
    _$hash = $jc(_$hash, discoverable.hashCode);
    _$hash = $jc(_$hash, hideCollections.hashCode);
    _$hash = $jc(_$hash, indexable.hashCode);
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jc(_$hash, quotePolicy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CredentialAccountSource')
          ..add('fields', fields)
          ..add('followRequestsCount', followRequestsCount)
          ..add('note', note)
          ..add('privacy', privacy)
          ..add('sensitive', sensitive)
          ..add('attributionDomains', attributionDomains)
          ..add('discoverable', discoverable)
          ..add('hideCollections', hideCollections)
          ..add('indexable', indexable)
          ..add('language', language)
          ..add('quotePolicy', quotePolicy))
        .toString();
  }
}

class CredentialAccountSourceBuilder
    implements
        Builder<CredentialAccountSource, CredentialAccountSourceBuilder> {
  _$CredentialAccountSource? _$v;

  ListBuilder<Field>? _fields;
  ListBuilder<Field> get fields => _$this._fields ??= ListBuilder<Field>();
  set fields(ListBuilder<Field>? fields) => _$this._fields = fields;

  int? _followRequestsCount;
  int? get followRequestsCount => _$this._followRequestsCount;
  set followRequestsCount(int? followRequestsCount) =>
      _$this._followRequestsCount = followRequestsCount;

  String? _note;
  String? get note => _$this._note;
  set note(String? note) => _$this._note = note;

  StatusVisibilityEnum? _privacy;
  StatusVisibilityEnum? get privacy => _$this._privacy;
  set privacy(StatusVisibilityEnum? privacy) => _$this._privacy = privacy;

  bool? _sensitive;
  bool? get sensitive => _$this._sensitive;
  set sensitive(bool? sensitive) => _$this._sensitive = sensitive;

  ListBuilder<String>? _attributionDomains;
  ListBuilder<String> get attributionDomains =>
      _$this._attributionDomains ??= ListBuilder<String>();
  set attributionDomains(ListBuilder<String>? attributionDomains) =>
      _$this._attributionDomains = attributionDomains;

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

  String? _language;
  String? get language => _$this._language;
  set language(String? language) => _$this._language = language;

  CredentialAccountSourceQuotePolicyEnum? _quotePolicy;
  CredentialAccountSourceQuotePolicyEnum? get quotePolicy =>
      _$this._quotePolicy;
  set quotePolicy(CredentialAccountSourceQuotePolicyEnum? quotePolicy) =>
      _$this._quotePolicy = quotePolicy;

  CredentialAccountSourceBuilder() {
    CredentialAccountSource._defaults(this);
  }

  CredentialAccountSourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fields = $v.fields.toBuilder();
      _followRequestsCount = $v.followRequestsCount;
      _note = $v.note;
      _privacy = $v.privacy;
      _sensitive = $v.sensitive;
      _attributionDomains = $v.attributionDomains?.toBuilder();
      _discoverable = $v.discoverable;
      _hideCollections = $v.hideCollections;
      _indexable = $v.indexable;
      _language = $v.language;
      _quotePolicy = $v.quotePolicy;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CredentialAccountSource other) {
    _$v = other as _$CredentialAccountSource;
  }

  @override
  void update(void Function(CredentialAccountSourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CredentialAccountSource build() => _build();

  _$CredentialAccountSource _build() {
    _$CredentialAccountSource _$result;
    try {
      _$result = _$v ??
          _$CredentialAccountSource._(
            fields: fields.build(),
            followRequestsCount: BuiltValueNullFieldError.checkNotNull(
                followRequestsCount,
                r'CredentialAccountSource',
                'followRequestsCount'),
            note: BuiltValueNullFieldError.checkNotNull(
                note, r'CredentialAccountSource', 'note'),
            privacy: BuiltValueNullFieldError.checkNotNull(
                privacy, r'CredentialAccountSource', 'privacy'),
            sensitive: BuiltValueNullFieldError.checkNotNull(
                sensitive, r'CredentialAccountSource', 'sensitive'),
            attributionDomains: _attributionDomains?.build(),
            discoverable: discoverable,
            hideCollections: hideCollections,
            indexable: indexable,
            language: language,
            quotePolicy: quotePolicy,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fields';
        fields.build();

        _$failedField = 'attributionDomains';
        _attributionDomains?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CredentialAccountSource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
