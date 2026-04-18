// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_ip_block_severity_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AdminIpBlockSeverityEnum _$signUpRequiresApproval =
    const AdminIpBlockSeverityEnum._('signUpRequiresApproval');
const AdminIpBlockSeverityEnum _$signUpBlock =
    const AdminIpBlockSeverityEnum._('signUpBlock');
const AdminIpBlockSeverityEnum _$noAccess =
    const AdminIpBlockSeverityEnum._('noAccess');

AdminIpBlockSeverityEnum _$valueOf(String name) {
  switch (name) {
    case 'signUpRequiresApproval':
      return _$signUpRequiresApproval;
    case 'signUpBlock':
      return _$signUpBlock;
    case 'noAccess':
      return _$noAccess;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AdminIpBlockSeverityEnum> _$values =
    BuiltSet<AdminIpBlockSeverityEnum>(const <AdminIpBlockSeverityEnum>[
  _$signUpRequiresApproval,
  _$signUpBlock,
  _$noAccess,
]);

class _$AdminIpBlockSeverityEnumMeta {
  const _$AdminIpBlockSeverityEnumMeta();
  AdminIpBlockSeverityEnum get signUpRequiresApproval =>
      _$signUpRequiresApproval;
  AdminIpBlockSeverityEnum get signUpBlock => _$signUpBlock;
  AdminIpBlockSeverityEnum get noAccess => _$noAccess;
  AdminIpBlockSeverityEnum valueOf(String name) => _$valueOf(name);
  BuiltSet<AdminIpBlockSeverityEnum> get values => _$values;
}

abstract class _$AdminIpBlockSeverityEnumMixin {
  // ignore: non_constant_identifier_names
  _$AdminIpBlockSeverityEnumMeta get AdminIpBlockSeverityEnum =>
      const _$AdminIpBlockSeverityEnumMeta();
}

Serializer<AdminIpBlockSeverityEnum> _$adminIpBlockSeverityEnumSerializer =
    _$AdminIpBlockSeverityEnumSerializer();

class _$AdminIpBlockSeverityEnumSerializer
    implements PrimitiveSerializer<AdminIpBlockSeverityEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'signUpRequiresApproval': 'sign_up_requires_approval',
    'signUpBlock': 'sign_up_block',
    'noAccess': 'no_access',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'sign_up_requires_approval': 'signUpRequiresApproval',
    'sign_up_block': 'signUpBlock',
    'no_access': 'noAccess',
  };

  @override
  final Iterable<Type> types = const <Type>[AdminIpBlockSeverityEnum];
  @override
  final String wireName = 'AdminIpBlockSeverityEnum';

  @override
  Object serialize(Serializers serializers, AdminIpBlockSeverityEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AdminIpBlockSeverityEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AdminIpBlockSeverityEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
