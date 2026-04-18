// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appeal.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Appeal extends Appeal {
  @override
  final AppealStateEnum state;
  @override
  final String text;

  factory _$Appeal([void Function(AppealBuilder)? updates]) =>
      (AppealBuilder()..update(updates))._build();

  _$Appeal._({required this.state, required this.text}) : super._();
  @override
  Appeal rebuild(void Function(AppealBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppealBuilder toBuilder() => AppealBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Appeal && state == other.state && text == other.text;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Appeal')
          ..add('state', state)
          ..add('text', text))
        .toString();
  }
}

class AppealBuilder implements Builder<Appeal, AppealBuilder> {
  _$Appeal? _$v;

  AppealStateEnum? _state;
  AppealStateEnum? get state => _$this._state;
  set state(AppealStateEnum? state) => _$this._state = state;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  AppealBuilder() {
    Appeal._defaults(this);
  }

  AppealBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _state = $v.state;
      _text = $v.text;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Appeal other) {
    _$v = other as _$Appeal;
  }

  @override
  void update(void Function(AppealBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Appeal build() => _build();

  _$Appeal _build() {
    final _$result = _$v ??
        _$Appeal._(
          state:
              BuiltValueNullFieldError.checkNotNull(state, r'Appeal', 'state'),
          text: BuiltValueNullFieldError.checkNotNull(text, r'Appeal', 'text'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
