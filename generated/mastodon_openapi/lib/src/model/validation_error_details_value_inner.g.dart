// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validation_error_details_value_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ValidationErrorDetailsValueInner
    extends ValidationErrorDetailsValueInner {
  @override
  final String error;
  @override
  final String description;

  factory _$ValidationErrorDetailsValueInner(
          [void Function(ValidationErrorDetailsValueInnerBuilder)? updates]) =>
      (ValidationErrorDetailsValueInnerBuilder()..update(updates))._build();

  _$ValidationErrorDetailsValueInner._(
      {required this.error, required this.description})
      : super._();
  @override
  ValidationErrorDetailsValueInner rebuild(
          void Function(ValidationErrorDetailsValueInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ValidationErrorDetailsValueInnerBuilder toBuilder() =>
      ValidationErrorDetailsValueInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ValidationErrorDetailsValueInner &&
        error == other.error &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ValidationErrorDetailsValueInner')
          ..add('error', error)
          ..add('description', description))
        .toString();
  }
}

class ValidationErrorDetailsValueInnerBuilder
    implements
        Builder<ValidationErrorDetailsValueInner,
            ValidationErrorDetailsValueInnerBuilder> {
  _$ValidationErrorDetailsValueInner? _$v;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  ValidationErrorDetailsValueInnerBuilder() {
    ValidationErrorDetailsValueInner._defaults(this);
  }

  ValidationErrorDetailsValueInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ValidationErrorDetailsValueInner other) {
    _$v = other as _$ValidationErrorDetailsValueInner;
  }

  @override
  void update(void Function(ValidationErrorDetailsValueInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ValidationErrorDetailsValueInner build() => _build();

  _$ValidationErrorDetailsValueInner _build() {
    final _$result = _$v ??
        _$ValidationErrorDetailsValueInner._(
          error: BuiltValueNullFieldError.checkNotNull(
              error, r'ValidationErrorDetailsValueInner', 'error'),
          description: BuiltValueNullFieldError.checkNotNull(
              description, r'ValidationErrorDetailsValueInner', 'description'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
