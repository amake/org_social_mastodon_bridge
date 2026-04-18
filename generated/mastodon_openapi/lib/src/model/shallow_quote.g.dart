// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shallow_quote.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ShallowQuote extends ShallowQuote {
  @override
  final QuoteStateEnum state;
  @override
  final String? quotedStatusId;

  factory _$ShallowQuote([void Function(ShallowQuoteBuilder)? updates]) =>
      (ShallowQuoteBuilder()..update(updates))._build();

  _$ShallowQuote._({required this.state, this.quotedStatusId}) : super._();
  @override
  ShallowQuote rebuild(void Function(ShallowQuoteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ShallowQuoteBuilder toBuilder() => ShallowQuoteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ShallowQuote &&
        state == other.state &&
        quotedStatusId == other.quotedStatusId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, quotedStatusId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ShallowQuote')
          ..add('state', state)
          ..add('quotedStatusId', quotedStatusId))
        .toString();
  }
}

class ShallowQuoteBuilder
    implements Builder<ShallowQuote, ShallowQuoteBuilder> {
  _$ShallowQuote? _$v;

  QuoteStateEnum? _state;
  QuoteStateEnum? get state => _$this._state;
  set state(QuoteStateEnum? state) => _$this._state = state;

  String? _quotedStatusId;
  String? get quotedStatusId => _$this._quotedStatusId;
  set quotedStatusId(String? quotedStatusId) =>
      _$this._quotedStatusId = quotedStatusId;

  ShallowQuoteBuilder() {
    ShallowQuote._defaults(this);
  }

  ShallowQuoteBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _state = $v.state;
      _quotedStatusId = $v.quotedStatusId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ShallowQuote other) {
    _$v = other as _$ShallowQuote;
  }

  @override
  void update(void Function(ShallowQuoteBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ShallowQuote build() => _build();

  _$ShallowQuote _build() {
    final _$result = _$v ??
        _$ShallowQuote._(
          state: BuiltValueNullFieldError.checkNotNull(
              state, r'ShallowQuote', 'state'),
          quotedStatusId: quotedStatusId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
