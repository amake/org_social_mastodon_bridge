//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'trends_link_type_enum.g.dart';

class TrendsLinkTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'link')
  static const TrendsLinkTypeEnum link = _$link;
  @BuiltValueEnumConst(wireName: r'photo')
  static const TrendsLinkTypeEnum photo = _$photo;
  @BuiltValueEnumConst(wireName: r'video')
  static const TrendsLinkTypeEnum video = _$video;
  @BuiltValueEnumConst(wireName: r'rich')
  static const TrendsLinkTypeEnum rich = _$rich;

  static Serializer<TrendsLinkTypeEnum> get serializer =>
      _$trendsLinkTypeEnumSerializer;

  const TrendsLinkTypeEnum._(String name) : super(name);

  static BuiltSet<TrendsLinkTypeEnum> get values => _$values;
  static TrendsLinkTypeEnum valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class TrendsLinkTypeEnumMixin = Object with _$TrendsLinkTypeEnumMixin;
