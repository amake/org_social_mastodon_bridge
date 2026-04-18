// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_dimension_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AdminDimensionData extends AdminDimensionData {
  @override
  final String humanKey;
  @override
  final String key;
  @override
  final String value;
  @override
  final String? humanValue;
  @override
  final String? unit;

  factory _$AdminDimensionData(
          [void Function(AdminDimensionDataBuilder)? updates]) =>
      (AdminDimensionDataBuilder()..update(updates))._build();

  _$AdminDimensionData._(
      {required this.humanKey,
      required this.key,
      required this.value,
      this.humanValue,
      this.unit})
      : super._();
  @override
  AdminDimensionData rebuild(
          void Function(AdminDimensionDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdminDimensionDataBuilder toBuilder() =>
      AdminDimensionDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AdminDimensionData &&
        humanKey == other.humanKey &&
        key == other.key &&
        value == other.value &&
        humanValue == other.humanValue &&
        unit == other.unit;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, humanKey.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, humanValue.hashCode);
    _$hash = $jc(_$hash, unit.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AdminDimensionData')
          ..add('humanKey', humanKey)
          ..add('key', key)
          ..add('value', value)
          ..add('humanValue', humanValue)
          ..add('unit', unit))
        .toString();
  }
}

class AdminDimensionDataBuilder
    implements Builder<AdminDimensionData, AdminDimensionDataBuilder> {
  _$AdminDimensionData? _$v;

  String? _humanKey;
  String? get humanKey => _$this._humanKey;
  set humanKey(String? humanKey) => _$this._humanKey = humanKey;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  String? _humanValue;
  String? get humanValue => _$this._humanValue;
  set humanValue(String? humanValue) => _$this._humanValue = humanValue;

  String? _unit;
  String? get unit => _$this._unit;
  set unit(String? unit) => _$this._unit = unit;

  AdminDimensionDataBuilder() {
    AdminDimensionData._defaults(this);
  }

  AdminDimensionDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _humanKey = $v.humanKey;
      _key = $v.key;
      _value = $v.value;
      _humanValue = $v.humanValue;
      _unit = $v.unit;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AdminDimensionData other) {
    _$v = other as _$AdminDimensionData;
  }

  @override
  void update(void Function(AdminDimensionDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AdminDimensionData build() => _build();

  _$AdminDimensionData _build() {
    final _$result = _$v ??
        _$AdminDimensionData._(
          humanKey: BuiltValueNullFieldError.checkNotNull(
              humanKey, r'AdminDimensionData', 'humanKey'),
          key: BuiltValueNullFieldError.checkNotNull(
              key, r'AdminDimensionData', 'key'),
          value: BuiltValueNullFieldError.checkNotNull(
              value, r'AdminDimensionData', 'value'),
          humanValue: humanValue,
          unit: unit,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
