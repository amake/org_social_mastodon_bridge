//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'admin_ip_block_severity_enum.g.dart';

class AdminIpBlockSeverityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'sign_up_requires_approval')
  static const AdminIpBlockSeverityEnum signUpRequiresApproval =
      _$signUpRequiresApproval;
  @BuiltValueEnumConst(wireName: r'sign_up_block')
  static const AdminIpBlockSeverityEnum signUpBlock = _$signUpBlock;
  @BuiltValueEnumConst(wireName: r'no_access')
  static const AdminIpBlockSeverityEnum noAccess = _$noAccess;

  static Serializer<AdminIpBlockSeverityEnum> get serializer =>
      _$adminIpBlockSeverityEnumSerializer;

  const AdminIpBlockSeverityEnum._(String name) : super(name);

  static BuiltSet<AdminIpBlockSeverityEnum> get values => _$values;
  static AdminIpBlockSeverityEnum valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class AdminIpBlockSeverityEnumMixin = Object
    with _$AdminIpBlockSeverityEnumMixin;
