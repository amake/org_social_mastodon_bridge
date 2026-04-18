// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status_source.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StatusSource extends StatusSource {
  @override
  final String id;
  @override
  final String spoilerText;
  @override
  final String text;

  factory _$StatusSource([void Function(StatusSourceBuilder)? updates]) =>
      (StatusSourceBuilder()..update(updates))._build();

  _$StatusSource._(
      {required this.id, required this.spoilerText, required this.text})
      : super._();
  @override
  StatusSource rebuild(void Function(StatusSourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StatusSourceBuilder toBuilder() => StatusSourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StatusSource &&
        id == other.id &&
        spoilerText == other.spoilerText &&
        text == other.text;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, spoilerText.hashCode);
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StatusSource')
          ..add('id', id)
          ..add('spoilerText', spoilerText)
          ..add('text', text))
        .toString();
  }
}

class StatusSourceBuilder
    implements Builder<StatusSource, StatusSourceBuilder> {
  _$StatusSource? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _spoilerText;
  String? get spoilerText => _$this._spoilerText;
  set spoilerText(String? spoilerText) => _$this._spoilerText = spoilerText;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  StatusSourceBuilder() {
    StatusSource._defaults(this);
  }

  StatusSourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _spoilerText = $v.spoilerText;
      _text = $v.text;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StatusSource other) {
    _$v = other as _$StatusSource;
  }

  @override
  void update(void Function(StatusSourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StatusSource build() => _build();

  _$StatusSource _build() {
    final _$result = _$v ??
        _$StatusSource._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'StatusSource', 'id'),
          spoilerText: BuiltValueNullFieldError.checkNotNull(
              spoilerText, r'StatusSource', 'spoilerText'),
          text: BuiltValueNullFieldError.checkNotNull(
              text, r'StatusSource', 'text'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
