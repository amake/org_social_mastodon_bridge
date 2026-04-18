//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'filter_filter_action_enum.g.dart';

class FilterFilterActionEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'warn')
  static const FilterFilterActionEnum warn = _$warn;
  @BuiltValueEnumConst(wireName: r'hide')
  static const FilterFilterActionEnum hide_ = _$hide_;
  @BuiltValueEnumConst(wireName: r'blur')
  static const FilterFilterActionEnum blur = _$blur;

  static Serializer<FilterFilterActionEnum> get serializer =>
      _$filterFilterActionEnumSerializer;

  const FilterFilterActionEnum._(String name) : super(name);

  static BuiltSet<FilterFilterActionEnum> get values => _$values;
  static FilterFilterActionEnum valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class FilterFilterActionEnumMixin = Object
    with _$FilterFilterActionEnumMixin;
