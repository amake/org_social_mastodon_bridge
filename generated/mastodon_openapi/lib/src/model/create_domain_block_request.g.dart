// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_domain_block_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateDomainBlockRequest extends CreateDomainBlockRequest {
  @override
  final String domain;

  factory _$CreateDomainBlockRequest(
          [void Function(CreateDomainBlockRequestBuilder)? updates]) =>
      (CreateDomainBlockRequestBuilder()..update(updates))._build();

  _$CreateDomainBlockRequest._({required this.domain}) : super._();
  @override
  CreateDomainBlockRequest rebuild(
          void Function(CreateDomainBlockRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateDomainBlockRequestBuilder toBuilder() =>
      CreateDomainBlockRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateDomainBlockRequest && domain == other.domain;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, domain.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateDomainBlockRequest')
          ..add('domain', domain))
        .toString();
  }
}

class CreateDomainBlockRequestBuilder
    implements
        Builder<CreateDomainBlockRequest, CreateDomainBlockRequestBuilder> {
  _$CreateDomainBlockRequest? _$v;

  String? _domain;
  String? get domain => _$this._domain;
  set domain(String? domain) => _$this._domain = domain;

  CreateDomainBlockRequestBuilder() {
    CreateDomainBlockRequest._defaults(this);
  }

  CreateDomainBlockRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _domain = $v.domain;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateDomainBlockRequest other) {
    _$v = other as _$CreateDomainBlockRequest;
  }

  @override
  void update(void Function(CreateDomainBlockRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateDomainBlockRequest build() => _build();

  _$CreateDomainBlockRequest _build() {
    final _$result = _$v ??
        _$CreateDomainBlockRequest._(
          domain: BuiltValueNullFieldError.checkNotNull(
              domain, r'CreateDomainBlockRequest', 'domain'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
