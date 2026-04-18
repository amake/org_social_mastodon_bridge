// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'identity_proof.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IdentityProof extends IdentityProof {
  @override
  final String profileUrl;
  @override
  final String proofUrl;
  @override
  final String provider;
  @override
  final String providerUsername;
  @override
  final DateTime updatedAt;

  factory _$IdentityProof([void Function(IdentityProofBuilder)? updates]) =>
      (IdentityProofBuilder()..update(updates))._build();

  _$IdentityProof._(
      {required this.profileUrl,
      required this.proofUrl,
      required this.provider,
      required this.providerUsername,
      required this.updatedAt})
      : super._();
  @override
  IdentityProof rebuild(void Function(IdentityProofBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IdentityProofBuilder toBuilder() => IdentityProofBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IdentityProof &&
        profileUrl == other.profileUrl &&
        proofUrl == other.proofUrl &&
        provider == other.provider &&
        providerUsername == other.providerUsername &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, profileUrl.hashCode);
    _$hash = $jc(_$hash, proofUrl.hashCode);
    _$hash = $jc(_$hash, provider.hashCode);
    _$hash = $jc(_$hash, providerUsername.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IdentityProof')
          ..add('profileUrl', profileUrl)
          ..add('proofUrl', proofUrl)
          ..add('provider', provider)
          ..add('providerUsername', providerUsername)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class IdentityProofBuilder
    implements Builder<IdentityProof, IdentityProofBuilder> {
  _$IdentityProof? _$v;

  String? _profileUrl;
  String? get profileUrl => _$this._profileUrl;
  set profileUrl(String? profileUrl) => _$this._profileUrl = profileUrl;

  String? _proofUrl;
  String? get proofUrl => _$this._proofUrl;
  set proofUrl(String? proofUrl) => _$this._proofUrl = proofUrl;

  String? _provider;
  String? get provider => _$this._provider;
  set provider(String? provider) => _$this._provider = provider;

  String? _providerUsername;
  String? get providerUsername => _$this._providerUsername;
  set providerUsername(String? providerUsername) =>
      _$this._providerUsername = providerUsername;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  IdentityProofBuilder() {
    IdentityProof._defaults(this);
  }

  IdentityProofBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _profileUrl = $v.profileUrl;
      _proofUrl = $v.proofUrl;
      _provider = $v.provider;
      _providerUsername = $v.providerUsername;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IdentityProof other) {
    _$v = other as _$IdentityProof;
  }

  @override
  void update(void Function(IdentityProofBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IdentityProof build() => _build();

  _$IdentityProof _build() {
    final _$result = _$v ??
        _$IdentityProof._(
          profileUrl: BuiltValueNullFieldError.checkNotNull(
              profileUrl, r'IdentityProof', 'profileUrl'),
          proofUrl: BuiltValueNullFieldError.checkNotNull(
              proofUrl, r'IdentityProof', 'proofUrl'),
          provider: BuiltValueNullFieldError.checkNotNull(
              provider, r'IdentityProof', 'provider'),
          providerUsername: BuiltValueNullFieldError.checkNotNull(
              providerUsername, r'IdentityProof', 'providerUsername'),
          updatedAt: BuiltValueNullFieldError.checkNotNull(
              updatedAt, r'IdentityProof', 'updatedAt'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
