// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validation_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ValidationError extends ValidationError {
  @override
  final String error;
  @override
  final BuiltMap<String, BuiltList<ValidationErrorDetailsValueInner>> details;

  factory _$ValidationError([void Function(ValidationErrorBuilder)? updates]) =>
      (ValidationErrorBuilder()..update(updates))._build();

  _$ValidationError._({required this.error, required this.details}) : super._();
  @override
  ValidationError rebuild(void Function(ValidationErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ValidationErrorBuilder toBuilder() => ValidationErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ValidationError &&
        error == other.error &&
        details == other.details;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, details.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ValidationError')
          ..add('error', error)
          ..add('details', details))
        .toString();
  }
}

class ValidationErrorBuilder
    implements Builder<ValidationError, ValidationErrorBuilder> {
  _$ValidationError? _$v;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  MapBuilder<String, BuiltList<ValidationErrorDetailsValueInner>>? _details;
  MapBuilder<String, BuiltList<ValidationErrorDetailsValueInner>> get details =>
      _$this._details ??=
          MapBuilder<String, BuiltList<ValidationErrorDetailsValueInner>>();
  set details(
          MapBuilder<String, BuiltList<ValidationErrorDetailsValueInner>>?
              details) =>
      _$this._details = details;

  ValidationErrorBuilder() {
    ValidationError._defaults(this);
  }

  ValidationErrorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _details = $v.details.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ValidationError other) {
    _$v = other as _$ValidationError;
  }

  @override
  void update(void Function(ValidationErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ValidationError build() => _build();

  _$ValidationError _build() {
    _$ValidationError _$result;
    try {
      _$result = _$v ??
          _$ValidationError._(
            error: BuiltValueNullFieldError.checkNotNull(
                error, r'ValidationError', 'error'),
            details: details.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'details';
        details.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ValidationError', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
