// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_cohort.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AdminCohort extends AdminCohort {
  @override
  final BuiltList<CohortData> data;
  @override
  final AdminCohortFrequencyEnum frequency;
  @override
  final DateTime period;

  factory _$AdminCohort([void Function(AdminCohortBuilder)? updates]) =>
      (AdminCohortBuilder()..update(updates))._build();

  _$AdminCohort._(
      {required this.data, required this.frequency, required this.period})
      : super._();
  @override
  AdminCohort rebuild(void Function(AdminCohortBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdminCohortBuilder toBuilder() => AdminCohortBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AdminCohort &&
        data == other.data &&
        frequency == other.frequency &&
        period == other.period;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, frequency.hashCode);
    _$hash = $jc(_$hash, period.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AdminCohort')
          ..add('data', data)
          ..add('frequency', frequency)
          ..add('period', period))
        .toString();
  }
}

class AdminCohortBuilder implements Builder<AdminCohort, AdminCohortBuilder> {
  _$AdminCohort? _$v;

  ListBuilder<CohortData>? _data;
  ListBuilder<CohortData> get data =>
      _$this._data ??= ListBuilder<CohortData>();
  set data(ListBuilder<CohortData>? data) => _$this._data = data;

  AdminCohortFrequencyEnum? _frequency;
  AdminCohortFrequencyEnum? get frequency => _$this._frequency;
  set frequency(AdminCohortFrequencyEnum? frequency) =>
      _$this._frequency = frequency;

  DateTime? _period;
  DateTime? get period => _$this._period;
  set period(DateTime? period) => _$this._period = period;

  AdminCohortBuilder() {
    AdminCohort._defaults(this);
  }

  AdminCohortBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _frequency = $v.frequency;
      _period = $v.period;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AdminCohort other) {
    _$v = other as _$AdminCohort;
  }

  @override
  void update(void Function(AdminCohortBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AdminCohort build() => _build();

  _$AdminCohort _build() {
    _$AdminCohort _$result;
    try {
      _$result = _$v ??
          _$AdminCohort._(
            data: data.build(),
            frequency: BuiltValueNullFieldError.checkNotNull(
                frequency, r'AdminCohort', 'frequency'),
            period: BuiltValueNullFieldError.checkNotNull(
                period, r'AdminCohort', 'period'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'AdminCohort', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
