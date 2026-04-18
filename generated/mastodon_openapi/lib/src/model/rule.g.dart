// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rule.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Rule extends Rule {
  @override
  final String id;
  @override
  final String text;
  @override
  final String? hint;
  @override
  final JsonObject? translations;

  factory _$Rule([void Function(RuleBuilder)? updates]) =>
      (RuleBuilder()..update(updates))._build();

  _$Rule._({required this.id, required this.text, this.hint, this.translations})
      : super._();
  @override
  Rule rebuild(void Function(RuleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RuleBuilder toBuilder() => RuleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Rule &&
        id == other.id &&
        text == other.text &&
        hint == other.hint &&
        translations == other.translations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jc(_$hash, hint.hashCode);
    _$hash = $jc(_$hash, translations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Rule')
          ..add('id', id)
          ..add('text', text)
          ..add('hint', hint)
          ..add('translations', translations))
        .toString();
  }
}

class RuleBuilder implements Builder<Rule, RuleBuilder> {
  _$Rule? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  String? _hint;
  String? get hint => _$this._hint;
  set hint(String? hint) => _$this._hint = hint;

  JsonObject? _translations;
  JsonObject? get translations => _$this._translations;
  set translations(JsonObject? translations) =>
      _$this._translations = translations;

  RuleBuilder() {
    Rule._defaults(this);
  }

  RuleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _text = $v.text;
      _hint = $v.hint;
      _translations = $v.translations;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Rule other) {
    _$v = other as _$Rule;
  }

  @override
  void update(void Function(RuleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Rule build() => _build();

  _$Rule _build() {
    final _$result = _$v ??
        _$Rule._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'Rule', 'id'),
          text: BuiltValueNullFieldError.checkNotNull(text, r'Rule', 'text'),
          hint: hint,
          translations: translations,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
