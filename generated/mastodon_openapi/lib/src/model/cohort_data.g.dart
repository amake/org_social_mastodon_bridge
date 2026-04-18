// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cohort_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CohortData extends CohortData {
  @override
  final DateTime date;
  @override
  final num rate;
  @override
  final String value;

  factory _$CohortData([void Function(CohortDataBuilder)? updates]) =>
      (CohortDataBuilder()..update(updates))._build();

  _$CohortData._({required this.date, required this.rate, required this.value})
      : super._();
  @override
  CohortData rebuild(void Function(CohortDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CohortDataBuilder toBuilder() => CohortDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CohortData &&
        date == other.date &&
        rate == other.rate &&
        value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, rate.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CohortData')
          ..add('date', date)
          ..add('rate', rate)
          ..add('value', value))
        .toString();
  }
}

class CohortDataBuilder implements Builder<CohortData, CohortDataBuilder> {
  _$CohortData? _$v;

  DateTime? _date;
  DateTime? get date => _$this._date;
  set date(DateTime? date) => _$this._date = date;

  num? _rate;
  num? get rate => _$this._rate;
  set rate(num? rate) => _$this._rate = rate;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  CohortDataBuilder() {
    CohortData._defaults(this);
  }

  CohortDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _rate = $v.rate;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CohortData other) {
    _$v = other as _$CohortData;
  }

  @override
  void update(void Function(CohortDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CohortData build() => _build();

  _$CohortData _build() {
    final _$result = _$v ??
        _$CohortData._(
          date: BuiltValueNullFieldError.checkNotNull(
              date, r'CohortData', 'date'),
          rate: BuiltValueNullFieldError.checkNotNull(
              rate, r'CohortData', 'rate'),
          value: BuiltValueNullFieldError.checkNotNull(
              value, r'CohortData', 'value'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
