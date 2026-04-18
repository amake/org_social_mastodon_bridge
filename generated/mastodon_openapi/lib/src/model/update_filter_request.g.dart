// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_filter_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateFilterRequest extends UpdateFilterRequest {
  @override
  final BuiltList<FilterContextEnum> context;
  @override
  final String phrase;
  @override
  final int? expiresIn;
  @override
  final bool? irreversible;
  @override
  final bool? wholeWord;

  factory _$UpdateFilterRequest(
          [void Function(UpdateFilterRequestBuilder)? updates]) =>
      (UpdateFilterRequestBuilder()..update(updates))._build();

  _$UpdateFilterRequest._(
      {required this.context,
      required this.phrase,
      this.expiresIn,
      this.irreversible,
      this.wholeWord})
      : super._();
  @override
  UpdateFilterRequest rebuild(
          void Function(UpdateFilterRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateFilterRequestBuilder toBuilder() =>
      UpdateFilterRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateFilterRequest &&
        context == other.context &&
        phrase == other.phrase &&
        expiresIn == other.expiresIn &&
        irreversible == other.irreversible &&
        wholeWord == other.wholeWord;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, context.hashCode);
    _$hash = $jc(_$hash, phrase.hashCode);
    _$hash = $jc(_$hash, expiresIn.hashCode);
    _$hash = $jc(_$hash, irreversible.hashCode);
    _$hash = $jc(_$hash, wholeWord.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateFilterRequest')
          ..add('context', context)
          ..add('phrase', phrase)
          ..add('expiresIn', expiresIn)
          ..add('irreversible', irreversible)
          ..add('wholeWord', wholeWord))
        .toString();
  }
}

class UpdateFilterRequestBuilder
    implements Builder<UpdateFilterRequest, UpdateFilterRequestBuilder> {
  _$UpdateFilterRequest? _$v;

  ListBuilder<FilterContextEnum>? _context;
  ListBuilder<FilterContextEnum> get context =>
      _$this._context ??= ListBuilder<FilterContextEnum>();
  set context(ListBuilder<FilterContextEnum>? context) =>
      _$this._context = context;

  String? _phrase;
  String? get phrase => _$this._phrase;
  set phrase(String? phrase) => _$this._phrase = phrase;

  int? _expiresIn;
  int? get expiresIn => _$this._expiresIn;
  set expiresIn(int? expiresIn) => _$this._expiresIn = expiresIn;

  bool? _irreversible;
  bool? get irreversible => _$this._irreversible;
  set irreversible(bool? irreversible) => _$this._irreversible = irreversible;

  bool? _wholeWord;
  bool? get wholeWord => _$this._wholeWord;
  set wholeWord(bool? wholeWord) => _$this._wholeWord = wholeWord;

  UpdateFilterRequestBuilder() {
    UpdateFilterRequest._defaults(this);
  }

  UpdateFilterRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _context = $v.context.toBuilder();
      _phrase = $v.phrase;
      _expiresIn = $v.expiresIn;
      _irreversible = $v.irreversible;
      _wholeWord = $v.wholeWord;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateFilterRequest other) {
    _$v = other as _$UpdateFilterRequest;
  }

  @override
  void update(void Function(UpdateFilterRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateFilterRequest build() => _build();

  _$UpdateFilterRequest _build() {
    _$UpdateFilterRequest _$result;
    try {
      _$result = _$v ??
          _$UpdateFilterRequest._(
            context: context.build(),
            phrase: BuiltValueNullFieldError.checkNotNull(
                phrase, r'UpdateFilterRequest', 'phrase'),
            expiresIn: expiresIn,
            irreversible: irreversible,
            wholeWord: wholeWord,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'context';
        context.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'UpdateFilterRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
