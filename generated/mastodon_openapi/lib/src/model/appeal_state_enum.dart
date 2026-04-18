//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'appeal_state_enum.g.dart';

class AppealStateEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'approved')
  static const AppealStateEnum approved = _$approved;
  @BuiltValueEnumConst(wireName: r'rejected')
  static const AppealStateEnum rejected = _$rejected;
  @BuiltValueEnumConst(wireName: r'pending')
  static const AppealStateEnum pending = _$pending;

  static Serializer<AppealStateEnum> get serializer =>
      _$appealStateEnumSerializer;

  const AppealStateEnum._(String name) : super(name);

  static BuiltSet<AppealStateEnum> get values => _$values;
  static AppealStateEnum valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class AppealStateEnumMixin = Object with _$AppealStateEnumMixin;
