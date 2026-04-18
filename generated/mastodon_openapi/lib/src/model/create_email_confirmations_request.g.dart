// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_email_confirmations_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateEmailConfirmationsRequest
    extends CreateEmailConfirmationsRequest {
  @override
  final String? email;

  factory _$CreateEmailConfirmationsRequest(
          [void Function(CreateEmailConfirmationsRequestBuilder)? updates]) =>
      (CreateEmailConfirmationsRequestBuilder()..update(updates))._build();

  _$CreateEmailConfirmationsRequest._({this.email}) : super._();
  @override
  CreateEmailConfirmationsRequest rebuild(
          void Function(CreateEmailConfirmationsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateEmailConfirmationsRequestBuilder toBuilder() =>
      CreateEmailConfirmationsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateEmailConfirmationsRequest && email == other.email;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateEmailConfirmationsRequest')
          ..add('email', email))
        .toString();
  }
}

class CreateEmailConfirmationsRequestBuilder
    implements
        Builder<CreateEmailConfirmationsRequest,
            CreateEmailConfirmationsRequestBuilder> {
  _$CreateEmailConfirmationsRequest? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  CreateEmailConfirmationsRequestBuilder() {
    CreateEmailConfirmationsRequest._defaults(this);
  }

  CreateEmailConfirmationsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateEmailConfirmationsRequest other) {
    _$v = other as _$CreateEmailConfirmationsRequest;
  }

  @override
  void update(void Function(CreateEmailConfirmationsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateEmailConfirmationsRequest build() => _build();

  _$CreateEmailConfirmationsRequest _build() {
    final _$result = _$v ??
        _$CreateEmailConfirmationsRequest._(
          email: email,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
