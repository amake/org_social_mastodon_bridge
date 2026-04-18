//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'status_visibility_enum.g.dart';

class StatusVisibilityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'public')
  static const StatusVisibilityEnum public = _$public;
  @BuiltValueEnumConst(wireName: r'unlisted')
  static const StatusVisibilityEnum unlisted = _$unlisted;
  @BuiltValueEnumConst(wireName: r'private')
  static const StatusVisibilityEnum private = _$private;
  @BuiltValueEnumConst(wireName: r'direct')
  static const StatusVisibilityEnum direct = _$direct;

  static Serializer<StatusVisibilityEnum> get serializer =>
      _$statusVisibilityEnumSerializer;

  const StatusVisibilityEnum._(String name) : super(name);

  static BuiltSet<StatusVisibilityEnum> get values => _$values;
  static StatusVisibilityEnum valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class StatusVisibilityEnumMixin = Object
    with _$StatusVisibilityEnumMixin;
