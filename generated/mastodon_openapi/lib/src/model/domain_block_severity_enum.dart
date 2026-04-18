//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'domain_block_severity_enum.g.dart';

class DomainBlockSeverityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'silence')
  static const DomainBlockSeverityEnum silence = _$silence;
  @BuiltValueEnumConst(wireName: r'suspend')
  static const DomainBlockSeverityEnum suspend = _$suspend;

  static Serializer<DomainBlockSeverityEnum> get serializer =>
      _$domainBlockSeverityEnumSerializer;

  const DomainBlockSeverityEnum._(String name) : super(name);

  static BuiltSet<DomainBlockSeverityEnum> get values => _$values;
  static DomainBlockSeverityEnum valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class DomainBlockSeverityEnumMixin = Object
    with _$DomainBlockSeverityEnumMixin;
