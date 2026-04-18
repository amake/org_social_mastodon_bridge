// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quote_approval.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QuoteApproval extends QuoteApproval {
  @override
  final BuiltList<QuoteApprovalAutomaticEnum> automatic;
  @override
  final QuoteApprovalCurrentUserEnum currentUser;
  @override
  final BuiltList<QuoteApprovalAutomaticEnum> manual;

  factory _$QuoteApproval([void Function(QuoteApprovalBuilder)? updates]) =>
      (QuoteApprovalBuilder()..update(updates))._build();

  _$QuoteApproval._(
      {required this.automatic,
      required this.currentUser,
      required this.manual})
      : super._();
  @override
  QuoteApproval rebuild(void Function(QuoteApprovalBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuoteApprovalBuilder toBuilder() => QuoteApprovalBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QuoteApproval &&
        automatic == other.automatic &&
        currentUser == other.currentUser &&
        manual == other.manual;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, automatic.hashCode);
    _$hash = $jc(_$hash, currentUser.hashCode);
    _$hash = $jc(_$hash, manual.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'QuoteApproval')
          ..add('automatic', automatic)
          ..add('currentUser', currentUser)
          ..add('manual', manual))
        .toString();
  }
}

class QuoteApprovalBuilder
    implements Builder<QuoteApproval, QuoteApprovalBuilder> {
  _$QuoteApproval? _$v;

  ListBuilder<QuoteApprovalAutomaticEnum>? _automatic;
  ListBuilder<QuoteApprovalAutomaticEnum> get automatic =>
      _$this._automatic ??= ListBuilder<QuoteApprovalAutomaticEnum>();
  set automatic(ListBuilder<QuoteApprovalAutomaticEnum>? automatic) =>
      _$this._automatic = automatic;

  QuoteApprovalCurrentUserEnum? _currentUser;
  QuoteApprovalCurrentUserEnum? get currentUser => _$this._currentUser;
  set currentUser(QuoteApprovalCurrentUserEnum? currentUser) =>
      _$this._currentUser = currentUser;

  ListBuilder<QuoteApprovalAutomaticEnum>? _manual;
  ListBuilder<QuoteApprovalAutomaticEnum> get manual =>
      _$this._manual ??= ListBuilder<QuoteApprovalAutomaticEnum>();
  set manual(ListBuilder<QuoteApprovalAutomaticEnum>? manual) =>
      _$this._manual = manual;

  QuoteApprovalBuilder() {
    QuoteApproval._defaults(this);
  }

  QuoteApprovalBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _automatic = $v.automatic.toBuilder();
      _currentUser = $v.currentUser;
      _manual = $v.manual.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QuoteApproval other) {
    _$v = other as _$QuoteApproval;
  }

  @override
  void update(void Function(QuoteApprovalBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QuoteApproval build() => _build();

  _$QuoteApproval _build() {
    _$QuoteApproval _$result;
    try {
      _$result = _$v ??
          _$QuoteApproval._(
            automatic: automatic.build(),
            currentUser: BuiltValueNullFieldError.checkNotNull(
                currentUser, r'QuoteApproval', 'currentUser'),
            manual: manual.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'automatic';
        automatic.build();

        _$failedField = 'manual';
        manual.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'QuoteApproval', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
