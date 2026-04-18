// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheduled_status_params_poll.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ScheduledStatusParamsPoll extends ScheduledStatusParamsPoll {
  @override
  final BuiltList<String> options;
  @override
  final int expiresIn;
  @override
  final bool multiple;
  @override
  final bool hideTotals;

  factory _$ScheduledStatusParamsPoll(
          [void Function(ScheduledStatusParamsPollBuilder)? updates]) =>
      (ScheduledStatusParamsPollBuilder()..update(updates))._build();

  _$ScheduledStatusParamsPoll._(
      {required this.options,
      required this.expiresIn,
      required this.multiple,
      required this.hideTotals})
      : super._();
  @override
  ScheduledStatusParamsPoll rebuild(
          void Function(ScheduledStatusParamsPollBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScheduledStatusParamsPollBuilder toBuilder() =>
      ScheduledStatusParamsPollBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScheduledStatusParamsPoll &&
        options == other.options &&
        expiresIn == other.expiresIn &&
        multiple == other.multiple &&
        hideTotals == other.hideTotals;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, options.hashCode);
    _$hash = $jc(_$hash, expiresIn.hashCode);
    _$hash = $jc(_$hash, multiple.hashCode);
    _$hash = $jc(_$hash, hideTotals.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ScheduledStatusParamsPoll')
          ..add('options', options)
          ..add('expiresIn', expiresIn)
          ..add('multiple', multiple)
          ..add('hideTotals', hideTotals))
        .toString();
  }
}

class ScheduledStatusParamsPollBuilder
    implements
        Builder<ScheduledStatusParamsPoll, ScheduledStatusParamsPollBuilder> {
  _$ScheduledStatusParamsPoll? _$v;

  ListBuilder<String>? _options;
  ListBuilder<String> get options => _$this._options ??= ListBuilder<String>();
  set options(ListBuilder<String>? options) => _$this._options = options;

  int? _expiresIn;
  int? get expiresIn => _$this._expiresIn;
  set expiresIn(int? expiresIn) => _$this._expiresIn = expiresIn;

  bool? _multiple;
  bool? get multiple => _$this._multiple;
  set multiple(bool? multiple) => _$this._multiple = multiple;

  bool? _hideTotals;
  bool? get hideTotals => _$this._hideTotals;
  set hideTotals(bool? hideTotals) => _$this._hideTotals = hideTotals;

  ScheduledStatusParamsPollBuilder() {
    ScheduledStatusParamsPoll._defaults(this);
  }

  ScheduledStatusParamsPollBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _options = $v.options.toBuilder();
      _expiresIn = $v.expiresIn;
      _multiple = $v.multiple;
      _hideTotals = $v.hideTotals;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScheduledStatusParamsPoll other) {
    _$v = other as _$ScheduledStatusParamsPoll;
  }

  @override
  void update(void Function(ScheduledStatusParamsPollBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ScheduledStatusParamsPoll build() => _build();

  _$ScheduledStatusParamsPoll _build() {
    _$ScheduledStatusParamsPoll _$result;
    try {
      _$result = _$v ??
          _$ScheduledStatusParamsPoll._(
            options: options.build(),
            expiresIn: BuiltValueNullFieldError.checkNotNull(
                expiresIn, r'ScheduledStatusParamsPoll', 'expiresIn'),
            multiple: BuiltValueNullFieldError.checkNotNull(
                multiple, r'ScheduledStatusParamsPoll', 'multiple'),
            hideTotals: BuiltValueNullFieldError.checkNotNull(
                hideTotals, r'ScheduledStatusParamsPoll', 'hideTotals'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'options';
        options.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ScheduledStatusParamsPoll', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
