// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_domain_blocks_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteDomainBlocksRequest extends DeleteDomainBlocksRequest {
  @override
  final String domain;

  factory _$DeleteDomainBlocksRequest(
          [void Function(DeleteDomainBlocksRequestBuilder)? updates]) =>
      (DeleteDomainBlocksRequestBuilder()..update(updates))._build();

  _$DeleteDomainBlocksRequest._({required this.domain}) : super._();
  @override
  DeleteDomainBlocksRequest rebuild(
          void Function(DeleteDomainBlocksRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteDomainBlocksRequestBuilder toBuilder() =>
      DeleteDomainBlocksRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteDomainBlocksRequest && domain == other.domain;
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
    return (newBuiltValueToStringHelper(r'DeleteDomainBlocksRequest')
          ..add('domain', domain))
        .toString();
  }
}

class DeleteDomainBlocksRequestBuilder
    implements
        Builder<DeleteDomainBlocksRequest, DeleteDomainBlocksRequestBuilder> {
  _$DeleteDomainBlocksRequest? _$v;

  String? _domain;
  String? get domain => _$this._domain;
  set domain(String? domain) => _$this._domain = domain;

  DeleteDomainBlocksRequestBuilder() {
    DeleteDomainBlocksRequest._defaults(this);
  }

  DeleteDomainBlocksRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _domain = $v.domain;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteDomainBlocksRequest other) {
    _$v = other as _$DeleteDomainBlocksRequest;
  }

  @override
  void update(void Function(DeleteDomainBlocksRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteDomainBlocksRequest build() => _build();

  _$DeleteDomainBlocksRequest _build() {
    final _$result = _$v ??
        _$DeleteDomainBlocksRequest._(
          domain: BuiltValueNullFieldError.checkNotNull(
              domain, r'DeleteDomainBlocksRequest', 'domain'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
