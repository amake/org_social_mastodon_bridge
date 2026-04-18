// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status_quote.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StatusQuote extends StatusQuote {
  @override
  final OneOf oneOf;

  factory _$StatusQuote([void Function(StatusQuoteBuilder)? updates]) =>
      (StatusQuoteBuilder()..update(updates))._build();

  _$StatusQuote._({required this.oneOf}) : super._();
  @override
  StatusQuote rebuild(void Function(StatusQuoteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StatusQuoteBuilder toBuilder() => StatusQuoteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StatusQuote && oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, oneOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StatusQuote')..add('oneOf', oneOf))
        .toString();
  }
}

class StatusQuoteBuilder implements Builder<StatusQuote, StatusQuoteBuilder> {
  _$StatusQuote? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  StatusQuoteBuilder() {
    StatusQuote._defaults(this);
  }

  StatusQuoteBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StatusQuote other) {
    _$v = other as _$StatusQuote;
  }

  @override
  void update(void Function(StatusQuoteBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StatusQuote build() => _build();

  _$StatusQuote _build() {
    final _$result = _$v ??
        _$StatusQuote._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'StatusQuote', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
