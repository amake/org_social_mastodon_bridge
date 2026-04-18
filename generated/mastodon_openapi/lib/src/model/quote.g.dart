// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quote.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Quote extends Quote {
  @override
  final QuoteStateEnum state;
  @override
  final Status? quotedStatus;

  factory _$Quote([void Function(QuoteBuilder)? updates]) =>
      (QuoteBuilder()..update(updates))._build();

  _$Quote._({required this.state, this.quotedStatus}) : super._();
  @override
  Quote rebuild(void Function(QuoteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuoteBuilder toBuilder() => QuoteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Quote &&
        state == other.state &&
        quotedStatus == other.quotedStatus;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, quotedStatus.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Quote')
          ..add('state', state)
          ..add('quotedStatus', quotedStatus))
        .toString();
  }
}

class QuoteBuilder implements Builder<Quote, QuoteBuilder> {
  _$Quote? _$v;

  QuoteStateEnum? _state;
  QuoteStateEnum? get state => _$this._state;
  set state(QuoteStateEnum? state) => _$this._state = state;

  StatusBuilder? _quotedStatus;
  StatusBuilder get quotedStatus => _$this._quotedStatus ??= StatusBuilder();
  set quotedStatus(StatusBuilder? quotedStatus) =>
      _$this._quotedStatus = quotedStatus;

  QuoteBuilder() {
    Quote._defaults(this);
  }

  QuoteBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _state = $v.state;
      _quotedStatus = $v.quotedStatus?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Quote other) {
    _$v = other as _$Quote;
  }

  @override
  void update(void Function(QuoteBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Quote build() => _build();

  _$Quote _build() {
    _$Quote _$result;
    try {
      _$result = _$v ??
          _$Quote._(
            state:
                BuiltValueNullFieldError.checkNotNull(state, r'Quote', 'state'),
            quotedStatus: _quotedStatus?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'quotedStatus';
        _quotedStatus?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(r'Quote', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
