// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'domain_block_severity_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DomainBlockSeverityEnum _$silence =
    const DomainBlockSeverityEnum._('silence');
const DomainBlockSeverityEnum _$suspend =
    const DomainBlockSeverityEnum._('suspend');

DomainBlockSeverityEnum _$valueOf(String name) {
  switch (name) {
    case 'silence':
      return _$silence;
    case 'suspend':
      return _$suspend;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<DomainBlockSeverityEnum> _$values =
    BuiltSet<DomainBlockSeverityEnum>(const <DomainBlockSeverityEnum>[
  _$silence,
  _$suspend,
]);

class _$DomainBlockSeverityEnumMeta {
  const _$DomainBlockSeverityEnumMeta();
  DomainBlockSeverityEnum get silence => _$silence;
  DomainBlockSeverityEnum get suspend => _$suspend;
  DomainBlockSeverityEnum valueOf(String name) => _$valueOf(name);
  BuiltSet<DomainBlockSeverityEnum> get values => _$values;
}

abstract class _$DomainBlockSeverityEnumMixin {
  // ignore: non_constant_identifier_names
  _$DomainBlockSeverityEnumMeta get DomainBlockSeverityEnum =>
      const _$DomainBlockSeverityEnumMeta();
}

Serializer<DomainBlockSeverityEnum> _$domainBlockSeverityEnumSerializer =
    _$DomainBlockSeverityEnumSerializer();

class _$DomainBlockSeverityEnumSerializer
    implements PrimitiveSerializer<DomainBlockSeverityEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'silence': 'silence',
    'suspend': 'suspend',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'silence': 'silence',
    'suspend': 'suspend',
  };

  @override
  final Iterable<Type> types = const <Type>[DomainBlockSeverityEnum];
  @override
  final String wireName = 'DomainBlockSeverityEnum';

  @override
  Object serialize(Serializers serializers, DomainBlockSeverityEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  DomainBlockSeverityEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      DomainBlockSeverityEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
