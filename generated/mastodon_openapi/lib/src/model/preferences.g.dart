// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preferences.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Preferences extends Preferences {
  @override
  final bool postingColonDefaultColonSensitive;
  @override
  final StatusVisibilityEnum postingColonDefaultColonVisibility;
  @override
  final PreferencesReadingExpandMediaEnum readingColonExpandColonMedia;
  @override
  final bool readingColonExpandColonSpoilers;
  @override
  final String? postingColonDefaultColonLanguage;

  factory _$Preferences([void Function(PreferencesBuilder)? updates]) =>
      (PreferencesBuilder()..update(updates))._build();

  _$Preferences._(
      {required this.postingColonDefaultColonSensitive,
      required this.postingColonDefaultColonVisibility,
      required this.readingColonExpandColonMedia,
      required this.readingColonExpandColonSpoilers,
      this.postingColonDefaultColonLanguage})
      : super._();
  @override
  Preferences rebuild(void Function(PreferencesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PreferencesBuilder toBuilder() => PreferencesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Preferences &&
        postingColonDefaultColonSensitive ==
            other.postingColonDefaultColonSensitive &&
        postingColonDefaultColonVisibility ==
            other.postingColonDefaultColonVisibility &&
        readingColonExpandColonMedia == other.readingColonExpandColonMedia &&
        readingColonExpandColonSpoilers ==
            other.readingColonExpandColonSpoilers &&
        postingColonDefaultColonLanguage ==
            other.postingColonDefaultColonLanguage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, postingColonDefaultColonSensitive.hashCode);
    _$hash = $jc(_$hash, postingColonDefaultColonVisibility.hashCode);
    _$hash = $jc(_$hash, readingColonExpandColonMedia.hashCode);
    _$hash = $jc(_$hash, readingColonExpandColonSpoilers.hashCode);
    _$hash = $jc(_$hash, postingColonDefaultColonLanguage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Preferences')
          ..add('postingColonDefaultColonSensitive',
              postingColonDefaultColonSensitive)
          ..add('postingColonDefaultColonVisibility',
              postingColonDefaultColonVisibility)
          ..add('readingColonExpandColonMedia', readingColonExpandColonMedia)
          ..add('readingColonExpandColonSpoilers',
              readingColonExpandColonSpoilers)
          ..add('postingColonDefaultColonLanguage',
              postingColonDefaultColonLanguage))
        .toString();
  }
}

class PreferencesBuilder implements Builder<Preferences, PreferencesBuilder> {
  _$Preferences? _$v;

  bool? _postingColonDefaultColonSensitive;
  bool? get postingColonDefaultColonSensitive =>
      _$this._postingColonDefaultColonSensitive;
  set postingColonDefaultColonSensitive(
          bool? postingColonDefaultColonSensitive) =>
      _$this._postingColonDefaultColonSensitive =
          postingColonDefaultColonSensitive;

  StatusVisibilityEnum? _postingColonDefaultColonVisibility;
  StatusVisibilityEnum? get postingColonDefaultColonVisibility =>
      _$this._postingColonDefaultColonVisibility;
  set postingColonDefaultColonVisibility(
          StatusVisibilityEnum? postingColonDefaultColonVisibility) =>
      _$this._postingColonDefaultColonVisibility =
          postingColonDefaultColonVisibility;

  PreferencesReadingExpandMediaEnum? _readingColonExpandColonMedia;
  PreferencesReadingExpandMediaEnum? get readingColonExpandColonMedia =>
      _$this._readingColonExpandColonMedia;
  set readingColonExpandColonMedia(
          PreferencesReadingExpandMediaEnum? readingColonExpandColonMedia) =>
      _$this._readingColonExpandColonMedia = readingColonExpandColonMedia;

  bool? _readingColonExpandColonSpoilers;
  bool? get readingColonExpandColonSpoilers =>
      _$this._readingColonExpandColonSpoilers;
  set readingColonExpandColonSpoilers(bool? readingColonExpandColonSpoilers) =>
      _$this._readingColonExpandColonSpoilers = readingColonExpandColonSpoilers;

  String? _postingColonDefaultColonLanguage;
  String? get postingColonDefaultColonLanguage =>
      _$this._postingColonDefaultColonLanguage;
  set postingColonDefaultColonLanguage(
          String? postingColonDefaultColonLanguage) =>
      _$this._postingColonDefaultColonLanguage =
          postingColonDefaultColonLanguage;

  PreferencesBuilder() {
    Preferences._defaults(this);
  }

  PreferencesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _postingColonDefaultColonSensitive = $v.postingColonDefaultColonSensitive;
      _postingColonDefaultColonVisibility =
          $v.postingColonDefaultColonVisibility;
      _readingColonExpandColonMedia = $v.readingColonExpandColonMedia;
      _readingColonExpandColonSpoilers = $v.readingColonExpandColonSpoilers;
      _postingColonDefaultColonLanguage = $v.postingColonDefaultColonLanguage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Preferences other) {
    _$v = other as _$Preferences;
  }

  @override
  void update(void Function(PreferencesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Preferences build() => _build();

  _$Preferences _build() {
    final _$result = _$v ??
        _$Preferences._(
          postingColonDefaultColonSensitive:
              BuiltValueNullFieldError.checkNotNull(
                  postingColonDefaultColonSensitive,
                  r'Preferences',
                  'postingColonDefaultColonSensitive'),
          postingColonDefaultColonVisibility:
              BuiltValueNullFieldError.checkNotNull(
                  postingColonDefaultColonVisibility,
                  r'Preferences',
                  'postingColonDefaultColonVisibility'),
          readingColonExpandColonMedia: BuiltValueNullFieldError.checkNotNull(
              readingColonExpandColonMedia,
              r'Preferences',
              'readingColonExpandColonMedia'),
          readingColonExpandColonSpoilers:
              BuiltValueNullFieldError.checkNotNull(
                  readingColonExpandColonSpoilers,
                  r'Preferences',
                  'readingColonExpandColonSpoilers'),
          postingColonDefaultColonLanguage: postingColonDefaultColonLanguage,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
