// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_domain_block_severity_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AdminDomainBlockSeverityEnum _$silence =
    const AdminDomainBlockSeverityEnum._('silence');
const AdminDomainBlockSeverityEnum _$suspend =
    const AdminDomainBlockSeverityEnum._('suspend');
const AdminDomainBlockSeverityEnum _$noop =
    const AdminDomainBlockSeverityEnum._('noop');

AdminDomainBlockSeverityEnum _$valueOf(String name) {
  switch (name) {
    case 'silence':
      return _$silence;
    case 'suspend':
      return _$suspend;
    case 'noop':
      return _$noop;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AdminDomainBlockSeverityEnum> _$values =
    BuiltSet<AdminDomainBlockSeverityEnum>(const <AdminDomainBlockSeverityEnum>[
  _$silence,
  _$suspend,
  _$noop,
]);

class _$AdminDomainBlockSeverityEnumMeta {
  const _$AdminDomainBlockSeverityEnumMeta();
  AdminDomainBlockSeverityEnum get silence => _$silence;
  AdminDomainBlockSeverityEnum get suspend => _$suspend;
  AdminDomainBlockSeverityEnum get noop => _$noop;
  AdminDomainBlockSeverityEnum valueOf(String name) => _$valueOf(name);
  BuiltSet<AdminDomainBlockSeverityEnum> get values => _$values;
}

abstract class _$AdminDomainBlockSeverityEnumMixin {
  // ignore: non_constant_identifier_names
  _$AdminDomainBlockSeverityEnumMeta get AdminDomainBlockSeverityEnum =>
      const _$AdminDomainBlockSeverityEnumMeta();
}

Serializer<AdminDomainBlockSeverityEnum>
    _$adminDomainBlockSeverityEnumSerializer =
    _$AdminDomainBlockSeverityEnumSerializer();

class _$AdminDomainBlockSeverityEnumSerializer
    implements PrimitiveSerializer<AdminDomainBlockSeverityEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'silence': 'silence',
    'suspend': 'suspend',
    'noop': 'noop',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'silence': 'silence',
    'suspend': 'suspend',
    'noop': 'noop',
  };

  @override
  final Iterable<Type> types = const <Type>[AdminDomainBlockSeverityEnum];
  @override
  final String wireName = 'AdminDomainBlockSeverityEnum';

  @override
  Object serialize(Serializers serializers, AdminDomainBlockSeverityEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AdminDomainBlockSeverityEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AdminDomainBlockSeverityEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
