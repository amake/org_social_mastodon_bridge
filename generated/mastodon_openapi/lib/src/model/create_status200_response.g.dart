// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_status200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateStatus200Response extends CreateStatus200Response {
  @override
  final OneOf oneOf;

  factory _$CreateStatus200Response(
          [void Function(CreateStatus200ResponseBuilder)? updates]) =>
      (CreateStatus200ResponseBuilder()..update(updates))._build();

  _$CreateStatus200Response._({required this.oneOf}) : super._();
  @override
  CreateStatus200Response rebuild(
          void Function(CreateStatus200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateStatus200ResponseBuilder toBuilder() =>
      CreateStatus200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateStatus200Response && oneOf == other.oneOf;
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
    return (newBuiltValueToStringHelper(r'CreateStatus200Response')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class CreateStatus200ResponseBuilder
    implements
        Builder<CreateStatus200Response, CreateStatus200ResponseBuilder> {
  _$CreateStatus200Response? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  CreateStatus200ResponseBuilder() {
    CreateStatus200Response._defaults(this);
  }

  CreateStatus200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateStatus200Response other) {
    _$v = other as _$CreateStatus200Response;
  }

  @override
  void update(void Function(CreateStatus200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateStatus200Response build() => _build();

  _$CreateStatus200Response _build() {
    final _$result = _$v ??
        _$CreateStatus200Response._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'CreateStatus200Response', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
