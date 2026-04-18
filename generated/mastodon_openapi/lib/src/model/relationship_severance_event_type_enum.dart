//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'relationship_severance_event_type_enum.g.dart';

class RelationshipSeveranceEventTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'domain_block')
  static const RelationshipSeveranceEventTypeEnum domainBlock = _$domainBlock;
  @BuiltValueEnumConst(wireName: r'user_domain_block')
  static const RelationshipSeveranceEventTypeEnum userDomainBlock =
      _$userDomainBlock;
  @BuiltValueEnumConst(wireName: r'account_suspension')
  static const RelationshipSeveranceEventTypeEnum accountSuspension =
      _$accountSuspension;

  static Serializer<RelationshipSeveranceEventTypeEnum> get serializer =>
      _$relationshipSeveranceEventTypeEnumSerializer;

  const RelationshipSeveranceEventTypeEnum._(String name) : super(name);

  static BuiltSet<RelationshipSeveranceEventTypeEnum> get values => _$values;
  static RelationshipSeveranceEventTypeEnum valueOf(String name) =>
      _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class RelationshipSeveranceEventTypeEnumMixin = Object
    with _$RelationshipSeveranceEventTypeEnumMixin;
