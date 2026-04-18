// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status_edit_poll.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StatusEditPoll extends StatusEditPoll {
  @override
  final BuiltList<StatusEditPollOptionsInner> options;

  factory _$StatusEditPoll([void Function(StatusEditPollBuilder)? updates]) =>
      (StatusEditPollBuilder()..update(updates))._build();

  _$StatusEditPoll._({required this.options}) : super._();
  @override
  StatusEditPoll rebuild(void Function(StatusEditPollBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StatusEditPollBuilder toBuilder() => StatusEditPollBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StatusEditPoll && options == other.options;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, options.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StatusEditPoll')
          ..add('options', options))
        .toString();
  }
}

class StatusEditPollBuilder
    implements Builder<StatusEditPoll, StatusEditPollBuilder> {
  _$StatusEditPoll? _$v;

  ListBuilder<StatusEditPollOptionsInner>? _options;
  ListBuilder<StatusEditPollOptionsInner> get options =>
      _$this._options ??= ListBuilder<StatusEditPollOptionsInner>();
  set options(ListBuilder<StatusEditPollOptionsInner>? options) =>
      _$this._options = options;

  StatusEditPollBuilder() {
    StatusEditPoll._defaults(this);
  }

  StatusEditPollBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _options = $v.options.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StatusEditPoll other) {
    _$v = other as _$StatusEditPoll;
  }

  @override
  void update(void Function(StatusEditPollBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StatusEditPoll build() => _build();

  _$StatusEditPoll _build() {
    _$StatusEditPoll _$result;
    try {
      _$result = _$v ??
          _$StatusEditPoll._(
            options: options.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'options';
        options.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'StatusEditPoll', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
