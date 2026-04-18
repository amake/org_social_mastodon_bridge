// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'translation_poll_option.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TranslationPollOption extends TranslationPollOption {
  @override
  final String title;

  factory _$TranslationPollOption(
          [void Function(TranslationPollOptionBuilder)? updates]) =>
      (TranslationPollOptionBuilder()..update(updates))._build();

  _$TranslationPollOption._({required this.title}) : super._();
  @override
  TranslationPollOption rebuild(
          void Function(TranslationPollOptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TranslationPollOptionBuilder toBuilder() =>
      TranslationPollOptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TranslationPollOption && title == other.title;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TranslationPollOption')
          ..add('title', title))
        .toString();
  }
}

class TranslationPollOptionBuilder
    implements Builder<TranslationPollOption, TranslationPollOptionBuilder> {
  _$TranslationPollOption? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  TranslationPollOptionBuilder() {
    TranslationPollOption._defaults(this);
  }

  TranslationPollOptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TranslationPollOption other) {
    _$v = other as _$TranslationPollOption;
  }

  @override
  void update(void Function(TranslationPollOptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TranslationPollOption build() => _build();

  _$TranslationPollOption _build() {
    final _$result = _$v ??
        _$TranslationPollOption._(
          title: BuiltValueNullFieldError.checkNotNull(
              title, r'TranslationPollOption', 'title'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
