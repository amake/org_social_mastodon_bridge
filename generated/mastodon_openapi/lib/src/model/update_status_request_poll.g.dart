// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_status_request_poll.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateStatusRequestPoll extends UpdateStatusRequestPoll {
  @override
  final BuiltList<String>? options;
  @override
  final int? expiresIn;
  @override
  final bool? multiple;
  @override
  final bool? hideTotals;

  factory _$UpdateStatusRequestPoll(
          [void Function(UpdateStatusRequestPollBuilder)? updates]) =>
      (UpdateStatusRequestPollBuilder()..update(updates))._build();

  _$UpdateStatusRequestPoll._(
      {this.options, this.expiresIn, this.multiple, this.hideTotals})
      : super._();
  @override
  UpdateStatusRequestPoll rebuild(
          void Function(UpdateStatusRequestPollBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateStatusRequestPollBuilder toBuilder() =>
      UpdateStatusRequestPollBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateStatusRequestPoll &&
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
    return (newBuiltValueToStringHelper(r'UpdateStatusRequestPoll')
          ..add('options', options)
          ..add('expiresIn', expiresIn)
          ..add('multiple', multiple)
          ..add('hideTotals', hideTotals))
        .toString();
  }
}

class UpdateStatusRequestPollBuilder
    implements
        Builder<UpdateStatusRequestPoll, UpdateStatusRequestPollBuilder> {
  _$UpdateStatusRequestPoll? _$v;

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

  UpdateStatusRequestPollBuilder() {
    UpdateStatusRequestPoll._defaults(this);
  }

  UpdateStatusRequestPollBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _options = $v.options?.toBuilder();
      _expiresIn = $v.expiresIn;
      _multiple = $v.multiple;
      _hideTotals = $v.hideTotals;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateStatusRequestPoll other) {
    _$v = other as _$UpdateStatusRequestPoll;
  }

  @override
  void update(void Function(UpdateStatusRequestPollBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateStatusRequestPoll build() => _build();

  _$UpdateStatusRequestPoll _build() {
    _$UpdateStatusRequestPoll _$result;
    try {
      _$result = _$v ??
          _$UpdateStatusRequestPoll._(
            options: _options?.build(),
            expiresIn: expiresIn,
            multiple: multiple,
            hideTotals: hideTotals,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'options';
        _options?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'UpdateStatusRequestPoll', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
