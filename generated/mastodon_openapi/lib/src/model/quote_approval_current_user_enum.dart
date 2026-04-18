//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'quote_approval_current_user_enum.g.dart';

class QuoteApprovalCurrentUserEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'automatic')
  static const QuoteApprovalCurrentUserEnum automatic = _$automatic;
  @BuiltValueEnumConst(wireName: r'manual')
  static const QuoteApprovalCurrentUserEnum manual = _$manual;
  @BuiltValueEnumConst(wireName: r'denied')
  static const QuoteApprovalCurrentUserEnum denied = _$denied;
  @BuiltValueEnumConst(wireName: r'unknown')
  static const QuoteApprovalCurrentUserEnum unknown = _$unknown;

  static Serializer<QuoteApprovalCurrentUserEnum> get serializer =>
      _$quoteApprovalCurrentUserEnumSerializer;

  const QuoteApprovalCurrentUserEnum._(String name) : super(name);

  static BuiltSet<QuoteApprovalCurrentUserEnum> get values => _$values;
  static QuoteApprovalCurrentUserEnum valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class QuoteApprovalCurrentUserEnumMixin = Object
    with _$QuoteApprovalCurrentUserEnumMixin;
