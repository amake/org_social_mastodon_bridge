//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'filter_context_enum.g.dart';

class FilterContextEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'home')
  static const FilterContextEnum home = _$home;
  @BuiltValueEnumConst(wireName: r'notifications')
  static const FilterContextEnum notifications = _$notifications;
  @BuiltValueEnumConst(wireName: r'public')
  static const FilterContextEnum public = _$public;
  @BuiltValueEnumConst(wireName: r'thread')
  static const FilterContextEnum thread = _$thread;
  @BuiltValueEnumConst(wireName: r'account')
  static const FilterContextEnum account = _$account;

  static Serializer<FilterContextEnum> get serializer =>
      _$filterContextEnumSerializer;

  const FilterContextEnum._(String name) : super(name);

  static BuiltSet<FilterContextEnum> get values => _$values;
  static FilterContextEnum valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class FilterContextEnumMixin = Object with _$FilterContextEnumMixin;
