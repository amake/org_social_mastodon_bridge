// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'translation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Translation extends Translation {
  @override
  final String content;
  @override
  final String detectedSourceLanguage;
  @override
  final String language;
  @override
  final BuiltList<TranslationAttachment> mediaAttachments;
  @override
  final String provider;
  @override
  final String spoilerText;
  @override
  final TranslationPoll? poll;

  factory _$Translation([void Function(TranslationBuilder)? updates]) =>
      (TranslationBuilder()..update(updates))._build();

  _$Translation._(
      {required this.content,
      required this.detectedSourceLanguage,
      required this.language,
      required this.mediaAttachments,
      required this.provider,
      required this.spoilerText,
      this.poll})
      : super._();
  @override
  Translation rebuild(void Function(TranslationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TranslationBuilder toBuilder() => TranslationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Translation &&
        content == other.content &&
        detectedSourceLanguage == other.detectedSourceLanguage &&
        language == other.language &&
        mediaAttachments == other.mediaAttachments &&
        provider == other.provider &&
        spoilerText == other.spoilerText &&
        poll == other.poll;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jc(_$hash, detectedSourceLanguage.hashCode);
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jc(_$hash, mediaAttachments.hashCode);
    _$hash = $jc(_$hash, provider.hashCode);
    _$hash = $jc(_$hash, spoilerText.hashCode);
    _$hash = $jc(_$hash, poll.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Translation')
          ..add('content', content)
          ..add('detectedSourceLanguage', detectedSourceLanguage)
          ..add('language', language)
          ..add('mediaAttachments', mediaAttachments)
          ..add('provider', provider)
          ..add('spoilerText', spoilerText)
          ..add('poll', poll))
        .toString();
  }
}

class TranslationBuilder implements Builder<Translation, TranslationBuilder> {
  _$Translation? _$v;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  String? _detectedSourceLanguage;
  String? get detectedSourceLanguage => _$this._detectedSourceLanguage;
  set detectedSourceLanguage(String? detectedSourceLanguage) =>
      _$this._detectedSourceLanguage = detectedSourceLanguage;

  String? _language;
  String? get language => _$this._language;
  set language(String? language) => _$this._language = language;

  ListBuilder<TranslationAttachment>? _mediaAttachments;
  ListBuilder<TranslationAttachment> get mediaAttachments =>
      _$this._mediaAttachments ??= ListBuilder<TranslationAttachment>();
  set mediaAttachments(ListBuilder<TranslationAttachment>? mediaAttachments) =>
      _$this._mediaAttachments = mediaAttachments;

  String? _provider;
  String? get provider => _$this._provider;
  set provider(String? provider) => _$this._provider = provider;

  String? _spoilerText;
  String? get spoilerText => _$this._spoilerText;
  set spoilerText(String? spoilerText) => _$this._spoilerText = spoilerText;

  TranslationPollBuilder? _poll;
  TranslationPollBuilder get poll => _$this._poll ??= TranslationPollBuilder();
  set poll(TranslationPollBuilder? poll) => _$this._poll = poll;

  TranslationBuilder() {
    Translation._defaults(this);
  }

  TranslationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _content = $v.content;
      _detectedSourceLanguage = $v.detectedSourceLanguage;
      _language = $v.language;
      _mediaAttachments = $v.mediaAttachments.toBuilder();
      _provider = $v.provider;
      _spoilerText = $v.spoilerText;
      _poll = $v.poll?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Translation other) {
    _$v = other as _$Translation;
  }

  @override
  void update(void Function(TranslationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Translation build() => _build();

  _$Translation _build() {
    _$Translation _$result;
    try {
      _$result = _$v ??
          _$Translation._(
            content: BuiltValueNullFieldError.checkNotNull(
                content, r'Translation', 'content'),
            detectedSourceLanguage: BuiltValueNullFieldError.checkNotNull(
                detectedSourceLanguage,
                r'Translation',
                'detectedSourceLanguage'),
            language: BuiltValueNullFieldError.checkNotNull(
                language, r'Translation', 'language'),
            mediaAttachments: mediaAttachments.build(),
            provider: BuiltValueNullFieldError.checkNotNull(
                provider, r'Translation', 'provider'),
            spoilerText: BuiltValueNullFieldError.checkNotNull(
                spoilerText, r'Translation', 'spoilerText'),
            poll: _poll?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'mediaAttachments';
        mediaAttachments.build();

        _$failedField = 'poll';
        _poll?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Translation', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
