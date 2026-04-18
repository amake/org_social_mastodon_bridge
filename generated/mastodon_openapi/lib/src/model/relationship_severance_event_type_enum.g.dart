// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'relationship_severance_event_type_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RelationshipSeveranceEventTypeEnum _$domainBlock =
    const RelationshipSeveranceEventTypeEnum._('domainBlock');
const RelationshipSeveranceEventTypeEnum _$userDomainBlock =
    const RelationshipSeveranceEventTypeEnum._('userDomainBlock');
const RelationshipSeveranceEventTypeEnum _$accountSuspension =
    const RelationshipSeveranceEventTypeEnum._('accountSuspension');

RelationshipSeveranceEventTypeEnum _$valueOf(String name) {
  switch (name) {
    case 'domainBlock':
      return _$domainBlock;
    case 'userDomainBlock':
      return _$userDomainBlock;
    case 'accountSuspension':
      return _$accountSuspension;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<RelationshipSeveranceEventTypeEnum> _$values = BuiltSet<
    RelationshipSeveranceEventTypeEnum>(const <RelationshipSeveranceEventTypeEnum>[
  _$domainBlock,
  _$userDomainBlock,
  _$accountSuspension,
]);

class _$RelationshipSeveranceEventTypeEnumMeta {
  const _$RelationshipSeveranceEventTypeEnumMeta();
  RelationshipSeveranceEventTypeEnum get domainBlock => _$domainBlock;
  RelationshipSeveranceEventTypeEnum get userDomainBlock => _$userDomainBlock;
  RelationshipSeveranceEventTypeEnum get accountSuspension =>
      _$accountSuspension;
  RelationshipSeveranceEventTypeEnum valueOf(String name) => _$valueOf(name);
  BuiltSet<RelationshipSeveranceEventTypeEnum> get values => _$values;
}

abstract class _$RelationshipSeveranceEventTypeEnumMixin {
  // ignore: non_constant_identifier_names
  _$RelationshipSeveranceEventTypeEnumMeta
      get RelationshipSeveranceEventTypeEnum =>
          const _$RelationshipSeveranceEventTypeEnumMeta();
}

Serializer<RelationshipSeveranceEventTypeEnum>
    _$relationshipSeveranceEventTypeEnumSerializer =
    _$RelationshipSeveranceEventTypeEnumSerializer();

class _$RelationshipSeveranceEventTypeEnumSerializer
    implements PrimitiveSerializer<RelationshipSeveranceEventTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'domainBlock': 'domain_block',
    'userDomainBlock': 'user_domain_block',
    'accountSuspension': 'account_suspension',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'domain_block': 'domainBlock',
    'user_domain_block': 'userDomainBlock',
    'account_suspension': 'accountSuspension',
  };

  @override
  final Iterable<Type> types = const <Type>[RelationshipSeveranceEventTypeEnum];
  @override
  final String wireName = 'RelationshipSeveranceEventTypeEnum';

  @override
  Object serialize(
          Serializers serializers, RelationshipSeveranceEventTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  RelationshipSeveranceEventTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      RelationshipSeveranceEventTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
