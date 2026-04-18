//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'admin_cohort_frequency_enum.g.dart';

class AdminCohortFrequencyEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'day')
  static const AdminCohortFrequencyEnum day = _$day;
  @BuiltValueEnumConst(wireName: r'month')
  static const AdminCohortFrequencyEnum month = _$month;

  static Serializer<AdminCohortFrequencyEnum> get serializer =>
      _$adminCohortFrequencyEnumSerializer;

  const AdminCohortFrequencyEnum._(String name) : super(name);

  static BuiltSet<AdminCohortFrequencyEnum> get values => _$values;
  static AdminCohortFrequencyEnum valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class AdminCohortFrequencyEnumMixin = Object
    with _$AdminCohortFrequencyEnumMixin;
