// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_status_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateStatusRequest extends CreateStatusRequest {
  @override
  final OneOf oneOf;

  factory _$CreateStatusRequest(
          [void Function(CreateStatusRequestBuilder)? updates]) =>
      (CreateStatusRequestBuilder()..update(updates))._build();

  _$CreateStatusRequest._({required this.oneOf}) : super._();
  @override
  CreateStatusRequest rebuild(
          void Function(CreateStatusRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateStatusRequestBuilder toBuilder() =>
      CreateStatusRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateStatusRequest && oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, oneOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateStatusRequest')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class CreateStatusRequestBuilder
    implements Builder<CreateStatusRequest, CreateStatusRequestBuilder> {
  _$CreateStatusRequest? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  CreateStatusRequestBuilder() {
    CreateStatusRequest._defaults(this);
  }

  CreateStatusRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateStatusRequest other) {
    _$v = other as _$CreateStatusRequest;
  }

  @override
  void update(void Function(CreateStatusRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateStatusRequest build() => _build();

  _$CreateStatusRequest _build() {
    final _$result = _$v ??
        _$CreateStatusRequest._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'CreateStatusRequest', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
