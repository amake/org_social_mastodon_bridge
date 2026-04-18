// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patch_accounts_update_credentials_request_source.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PatchAccountsUpdateCredentialsRequestSource
    extends PatchAccountsUpdateCredentialsRequestSource {
  @override
  final StatusVisibilityEnum? privacy;
  @override
  final bool? sensitive;
  @override
  final String? language;
  @override
  final String? quotePolicy;

  factory _$PatchAccountsUpdateCredentialsRequestSource(
          [void Function(PatchAccountsUpdateCredentialsRequestSourceBuilder)?
              updates]) =>
      (PatchAccountsUpdateCredentialsRequestSourceBuilder()..update(updates))
          ._build();

  _$PatchAccountsUpdateCredentialsRequestSource._(
      {this.privacy, this.sensitive, this.language, this.quotePolicy})
      : super._();
  @override
  PatchAccountsUpdateCredentialsRequestSource rebuild(
          void Function(PatchAccountsUpdateCredentialsRequestSourceBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PatchAccountsUpdateCredentialsRequestSourceBuilder toBuilder() =>
      PatchAccountsUpdateCredentialsRequestSourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PatchAccountsUpdateCredentialsRequestSource &&
        privacy == other.privacy &&
        sensitive == other.sensitive &&
        language == other.language &&
        quotePolicy == other.quotePolicy;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, privacy.hashCode);
    _$hash = $jc(_$hash, sensitive.hashCode);
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jc(_$hash, quotePolicy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'PatchAccountsUpdateCredentialsRequestSource')
          ..add('privacy', privacy)
          ..add('sensitive', sensitive)
          ..add('language', language)
          ..add('quotePolicy', quotePolicy))
        .toString();
  }
}

class PatchAccountsUpdateCredentialsRequestSourceBuilder
    implements
        Builder<PatchAccountsUpdateCredentialsRequestSource,
            PatchAccountsUpdateCredentialsRequestSourceBuilder> {
  _$PatchAccountsUpdateCredentialsRequestSource? _$v;

  StatusVisibilityEnum? _privacy;
  StatusVisibilityEnum? get privacy => _$this._privacy;
  set privacy(StatusVisibilityEnum? privacy) => _$this._privacy = privacy;

  bool? _sensitive;
  bool? get sensitive => _$this._sensitive;
  set sensitive(bool? sensitive) => _$this._sensitive = sensitive;

  String? _language;
  String? get language => _$this._language;
  set language(String? language) => _$this._language = language;

  String? _quotePolicy;
  String? get quotePolicy => _$this._quotePolicy;
  set quotePolicy(String? quotePolicy) => _$this._quotePolicy = quotePolicy;

  PatchAccountsUpdateCredentialsRequestSourceBuilder() {
    PatchAccountsUpdateCredentialsRequestSource._defaults(this);
  }

  PatchAccountsUpdateCredentialsRequestSourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _privacy = $v.privacy;
      _sensitive = $v.sensitive;
      _language = $v.language;
      _quotePolicy = $v.quotePolicy;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PatchAccountsUpdateCredentialsRequestSource other) {
    _$v = other as _$PatchAccountsUpdateCredentialsRequestSource;
  }

  @override
  void update(
      void Function(PatchAccountsUpdateCredentialsRequestSourceBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  PatchAccountsUpdateCredentialsRequestSource build() => _build();

  _$PatchAccountsUpdateCredentialsRequestSource _build() {
    final _$result = _$v ??
        _$PatchAccountsUpdateCredentialsRequestSource._(
          privacy: privacy,
          sensitive: sensitive,
          language: language,
          quotePolicy: quotePolicy,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
