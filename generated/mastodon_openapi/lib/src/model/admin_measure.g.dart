// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_measure.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AdminMeasure extends AdminMeasure {
  @override
  final BuiltList<AdminMeasureData> data;
  @override
  final String key;
  @override
  final String total;
  @override
  final String? humanValue;
  @override
  final String? previousTotal;
  @override
  final String? unit;

  factory _$AdminMeasure([void Function(AdminMeasureBuilder)? updates]) =>
      (AdminMeasureBuilder()..update(updates))._build();

  _$AdminMeasure._(
      {required this.data,
      required this.key,
      required this.total,
      this.humanValue,
      this.previousTotal,
      this.unit})
      : super._();
  @override
  AdminMeasure rebuild(void Function(AdminMeasureBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdminMeasureBuilder toBuilder() => AdminMeasureBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AdminMeasure &&
        data == other.data &&
        key == other.key &&
        total == other.total &&
        humanValue == other.humanValue &&
        previousTotal == other.previousTotal &&
        unit == other.unit;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jc(_$hash, humanValue.hashCode);
    _$hash = $jc(_$hash, previousTotal.hashCode);
    _$hash = $jc(_$hash, unit.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AdminMeasure')
          ..add('data', data)
          ..add('key', key)
          ..add('total', total)
          ..add('humanValue', humanValue)
          ..add('previousTotal', previousTotal)
          ..add('unit', unit))
        .toString();
  }
}

class AdminMeasureBuilder
    implements Builder<AdminMeasure, AdminMeasureBuilder> {
  _$AdminMeasure? _$v;

  ListBuilder<AdminMeasureData>? _data;
  ListBuilder<AdminMeasureData> get data =>
      _$this._data ??= ListBuilder<AdminMeasureData>();
  set data(ListBuilder<AdminMeasureData>? data) => _$this._data = data;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _total;
  String? get total => _$this._total;
  set total(String? total) => _$this._total = total;

  String? _humanValue;
  String? get humanValue => _$this._humanValue;
  set humanValue(String? humanValue) => _$this._humanValue = humanValue;

  String? _previousTotal;
  String? get previousTotal => _$this._previousTotal;
  set previousTotal(String? previousTotal) =>
      _$this._previousTotal = previousTotal;

  String? _unit;
  String? get unit => _$this._unit;
  set unit(String? unit) => _$this._unit = unit;

  AdminMeasureBuilder() {
    AdminMeasure._defaults(this);
  }

  AdminMeasureBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _key = $v.key;
      _total = $v.total;
      _humanValue = $v.humanValue;
      _previousTotal = $v.previousTotal;
      _unit = $v.unit;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AdminMeasure other) {
    _$v = other as _$AdminMeasure;
  }

  @override
  void update(void Function(AdminMeasureBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AdminMeasure build() => _build();

  _$AdminMeasure _build() {
    _$AdminMeasure _$result;
    try {
      _$result = _$v ??
          _$AdminMeasure._(
            data: data.build(),
            key: BuiltValueNullFieldError.checkNotNull(
                key, r'AdminMeasure', 'key'),
            total: BuiltValueNullFieldError.checkNotNull(
                total, r'AdminMeasure', 'total'),
            humanValue: humanValue,
            previousTotal: previousTotal,
            unit: unit,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'AdminMeasure', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
