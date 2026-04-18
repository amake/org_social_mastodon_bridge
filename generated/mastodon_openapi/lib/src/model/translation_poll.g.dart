// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'translation_poll.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TranslationPoll extends TranslationPoll {
  @override
  final String id;
  @override
  final BuiltList<TranslationPollOption> options;

  factory _$TranslationPoll([void Function(TranslationPollBuilder)? updates]) =>
      (TranslationPollBuilder()..update(updates))._build();

  _$TranslationPoll._({required this.id, required this.options}) : super._();
  @override
  TranslationPoll rebuild(void Function(TranslationPollBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TranslationPollBuilder toBuilder() => TranslationPollBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TranslationPoll &&
        id == other.id &&
        options == other.options;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, options.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TranslationPoll')
          ..add('id', id)
          ..add('options', options))
        .toString();
  }
}

class TranslationPollBuilder
    implements Builder<TranslationPoll, TranslationPollBuilder> {
  _$TranslationPoll? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  ListBuilder<TranslationPollOption>? _options;
  ListBuilder<TranslationPollOption> get options =>
      _$this._options ??= ListBuilder<TranslationPollOption>();
  set options(ListBuilder<TranslationPollOption>? options) =>
      _$this._options = options;

  TranslationPollBuilder() {
    TranslationPoll._defaults(this);
  }

  TranslationPollBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _options = $v.options.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TranslationPoll other) {
    _$v = other as _$TranslationPoll;
  }

  @override
  void update(void Function(TranslationPollBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TranslationPoll build() => _build();

  _$TranslationPoll _build() {
    _$TranslationPoll _$result;
    try {
      _$result = _$v ??
          _$TranslationPoll._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'TranslationPoll', 'id'),
            options: options.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'options';
        options.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'TranslationPoll', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
