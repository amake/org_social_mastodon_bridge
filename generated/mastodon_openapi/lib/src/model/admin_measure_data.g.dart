// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_measure_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AdminMeasureData extends AdminMeasureData {
  @override
  final DateTime date;
  @override
  final String value;

  factory _$AdminMeasureData(
          [void Function(AdminMeasureDataBuilder)? updates]) =>
      (AdminMeasureDataBuilder()..update(updates))._build();

  _$AdminMeasureData._({required this.date, required this.value}) : super._();
  @override
  AdminMeasureData rebuild(void Function(AdminMeasureDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdminMeasureDataBuilder toBuilder() =>
      AdminMeasureDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AdminMeasureData &&
        date == other.date &&
        value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AdminMeasureData')
          ..add('date', date)
          ..add('value', value))
        .toString();
  }
}

class AdminMeasureDataBuilder
    implements Builder<AdminMeasureData, AdminMeasureDataBuilder> {
  _$AdminMeasureData? _$v;

  DateTime? _date;
  DateTime? get date => _$this._date;
  set date(DateTime? date) => _$this._date = date;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  AdminMeasureDataBuilder() {
    AdminMeasureData._defaults(this);
  }

  AdminMeasureDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AdminMeasureData other) {
    _$v = other as _$AdminMeasureData;
  }

  @override
  void update(void Function(AdminMeasureDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AdminMeasureData build() => _build();

  _$AdminMeasureData _build() {
    final _$result = _$v ??
        _$AdminMeasureData._(
          date: BuiltValueNullFieldError.checkNotNull(
              date, r'AdminMeasureData', 'date'),
          value: BuiltValueNullFieldError.checkNotNull(
              value, r'AdminMeasureData', 'value'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
