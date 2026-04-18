// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V1Filter extends V1Filter {
  @override
  final BuiltList<FilterContextEnum> context;
  @override
  final String id;
  @override
  final bool irreversible;
  @override
  final String phrase;
  @override
  final bool wholeWord;
  @override
  final DateTime? expiresAt;

  factory _$V1Filter([void Function(V1FilterBuilder)? updates]) =>
      (V1FilterBuilder()..update(updates))._build();

  _$V1Filter._(
      {required this.context,
      required this.id,
      required this.irreversible,
      required this.phrase,
      required this.wholeWord,
      this.expiresAt})
      : super._();
  @override
  V1Filter rebuild(void Function(V1FilterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V1FilterBuilder toBuilder() => V1FilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V1Filter &&
        context == other.context &&
        id == other.id &&
        irreversible == other.irreversible &&
        phrase == other.phrase &&
        wholeWord == other.wholeWord &&
        expiresAt == other.expiresAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, context.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, irreversible.hashCode);
    _$hash = $jc(_$hash, phrase.hashCode);
    _$hash = $jc(_$hash, wholeWord.hashCode);
    _$hash = $jc(_$hash, expiresAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'V1Filter')
          ..add('context', context)
          ..add('id', id)
          ..add('irreversible', irreversible)
          ..add('phrase', phrase)
          ..add('wholeWord', wholeWord)
          ..add('expiresAt', expiresAt))
        .toString();
  }
}

class V1FilterBuilder implements Builder<V1Filter, V1FilterBuilder> {
  _$V1Filter? _$v;

  ListBuilder<FilterContextEnum>? _context;
  ListBuilder<FilterContextEnum> get context =>
      _$this._context ??= ListBuilder<FilterContextEnum>();
  set context(ListBuilder<FilterContextEnum>? context) =>
      _$this._context = context;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  bool? _irreversible;
  bool? get irreversible => _$this._irreversible;
  set irreversible(bool? irreversible) => _$this._irreversible = irreversible;

  String? _phrase;
  String? get phrase => _$this._phrase;
  set phrase(String? phrase) => _$this._phrase = phrase;

  bool? _wholeWord;
  bool? get wholeWord => _$this._wholeWord;
  set wholeWord(bool? wholeWord) => _$this._wholeWord = wholeWord;

  DateTime? _expiresAt;
  DateTime? get expiresAt => _$this._expiresAt;
  set expiresAt(DateTime? expiresAt) => _$this._expiresAt = expiresAt;

  V1FilterBuilder() {
    V1Filter._defaults(this);
  }

  V1FilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _context = $v.context.toBuilder();
      _id = $v.id;
      _irreversible = $v.irreversible;
      _phrase = $v.phrase;
      _wholeWord = $v.wholeWord;
      _expiresAt = $v.expiresAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V1Filter other) {
    _$v = other as _$V1Filter;
  }

  @override
  void update(void Function(V1FilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V1Filter build() => _build();

  _$V1Filter _build() {
    _$V1Filter _$result;
    try {
      _$result = _$v ??
          _$V1Filter._(
            context: context.build(),
            id: BuiltValueNullFieldError.checkNotNull(id, r'V1Filter', 'id'),
            irreversible: BuiltValueNullFieldError.checkNotNull(
                irreversible, r'V1Filter', 'irreversible'),
            phrase: BuiltValueNullFieldError.checkNotNull(
                phrase, r'V1Filter', 'phrase'),
            wholeWord: BuiltValueNullFieldError.checkNotNull(
                wholeWord, r'V1Filter', 'wholeWord'),
            expiresAt: expiresAt,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'context';
        context.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'V1Filter', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
