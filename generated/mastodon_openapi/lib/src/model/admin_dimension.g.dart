// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_dimension.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AdminDimension extends AdminDimension {
  @override
  final BuiltList<AdminDimensionData> data;
  @override
  final String key;

  factory _$AdminDimension([void Function(AdminDimensionBuilder)? updates]) =>
      (AdminDimensionBuilder()..update(updates))._build();

  _$AdminDimension._({required this.data, required this.key}) : super._();
  @override
  AdminDimension rebuild(void Function(AdminDimensionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdminDimensionBuilder toBuilder() => AdminDimensionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AdminDimension && data == other.data && key == other.key;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AdminDimension')
          ..add('data', data)
          ..add('key', key))
        .toString();
  }
}

class AdminDimensionBuilder
    implements Builder<AdminDimension, AdminDimensionBuilder> {
  _$AdminDimension? _$v;

  ListBuilder<AdminDimensionData>? _data;
  ListBuilder<AdminDimensionData> get data =>
      _$this._data ??= ListBuilder<AdminDimensionData>();
  set data(ListBuilder<AdminDimensionData>? data) => _$this._data = data;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  AdminDimensionBuilder() {
    AdminDimension._defaults(this);
  }

  AdminDimensionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _key = $v.key;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AdminDimension other) {
    _$v = other as _$AdminDimension;
  }

  @override
  void update(void Function(AdminDimensionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AdminDimension build() => _build();

  _$AdminDimension _build() {
    _$AdminDimension _$result;
    try {
      _$result = _$v ??
          _$AdminDimension._(
            data: data.build(),
            key: BuiltValueNullFieldError.checkNotNull(
                key, r'AdminDimension', 'key'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'AdminDimension', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
