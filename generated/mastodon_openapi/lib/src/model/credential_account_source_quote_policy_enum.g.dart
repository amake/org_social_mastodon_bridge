// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credential_account_source_quote_policy_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CredentialAccountSourceQuotePolicyEnum _$public =
    const CredentialAccountSourceQuotePolicyEnum._('public');
const CredentialAccountSourceQuotePolicyEnum _$followers =
    const CredentialAccountSourceQuotePolicyEnum._('followers');
const CredentialAccountSourceQuotePolicyEnum _$nobody =
    const CredentialAccountSourceQuotePolicyEnum._('nobody');

CredentialAccountSourceQuotePolicyEnum _$valueOf(String name) {
  switch (name) {
    case 'public':
      return _$public;
    case 'followers':
      return _$followers;
    case 'nobody':
      return _$nobody;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CredentialAccountSourceQuotePolicyEnum> _$values = BuiltSet<
    CredentialAccountSourceQuotePolicyEnum>(const <CredentialAccountSourceQuotePolicyEnum>[
  _$public,
  _$followers,
  _$nobody,
]);

class _$CredentialAccountSourceQuotePolicyEnumMeta {
  const _$CredentialAccountSourceQuotePolicyEnumMeta();
  CredentialAccountSourceQuotePolicyEnum get public => _$public;
  CredentialAccountSourceQuotePolicyEnum get followers => _$followers;
  CredentialAccountSourceQuotePolicyEnum get nobody => _$nobody;
  CredentialAccountSourceQuotePolicyEnum valueOf(String name) =>
      _$valueOf(name);
  BuiltSet<CredentialAccountSourceQuotePolicyEnum> get values => _$values;
}

abstract class _$CredentialAccountSourceQuotePolicyEnumMixin {
  // ignore: non_constant_identifier_names
  _$CredentialAccountSourceQuotePolicyEnumMeta
      get CredentialAccountSourceQuotePolicyEnum =>
          const _$CredentialAccountSourceQuotePolicyEnumMeta();
}

Serializer<CredentialAccountSourceQuotePolicyEnum>
    _$credentialAccountSourceQuotePolicyEnumSerializer =
    _$CredentialAccountSourceQuotePolicyEnumSerializer();

class _$CredentialAccountSourceQuotePolicyEnumSerializer
    implements PrimitiveSerializer<CredentialAccountSourceQuotePolicyEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'public': 'public',
    'followers': 'followers',
    'nobody': 'nobody',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'public': 'public',
    'followers': 'followers',
    'nobody': 'nobody',
  };

  @override
  final Iterable<Type> types = const <Type>[
    CredentialAccountSourceQuotePolicyEnum
  ];
  @override
  final String wireName = 'CredentialAccountSourceQuotePolicyEnum';

  @override
  Object serialize(Serializers serializers,
          CredentialAccountSourceQuotePolicyEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CredentialAccountSourceQuotePolicyEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CredentialAccountSourceQuotePolicyEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
