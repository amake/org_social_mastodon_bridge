// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_featured_tag_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateFeaturedTagRequest extends CreateFeaturedTagRequest {
  @override
  final String name;

  factory _$CreateFeaturedTagRequest(
          [void Function(CreateFeaturedTagRequestBuilder)? updates]) =>
      (CreateFeaturedTagRequestBuilder()..update(updates))._build();

  _$CreateFeaturedTagRequest._({required this.name}) : super._();
  @override
  CreateFeaturedTagRequest rebuild(
          void Function(CreateFeaturedTagRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateFeaturedTagRequestBuilder toBuilder() =>
      CreateFeaturedTagRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateFeaturedTagRequest && name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateFeaturedTagRequest')
          ..add('name', name))
        .toString();
  }
}

class CreateFeaturedTagRequestBuilder
    implements
        Builder<CreateFeaturedTagRequest, CreateFeaturedTagRequestBuilder> {
  _$CreateFeaturedTagRequest? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  CreateFeaturedTagRequestBuilder() {
    CreateFeaturedTagRequest._defaults(this);
  }

  CreateFeaturedTagRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateFeaturedTagRequest other) {
    _$v = other as _$CreateFeaturedTagRequest;
  }

  @override
  void update(void Function(CreateFeaturedTagRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateFeaturedTagRequest build() => _build();

  _$CreateFeaturedTagRequest _build() {
    final _$result = _$v ??
        _$CreateFeaturedTagRequest._(
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'CreateFeaturedTagRequest', 'name'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
