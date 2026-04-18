//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'quote_approval_automatic_enum.g.dart';

class QuoteApprovalAutomaticEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'public')
  static const QuoteApprovalAutomaticEnum public = _$public;
  @BuiltValueEnumConst(wireName: r'followers')
  static const QuoteApprovalAutomaticEnum followers = _$followers;
  @BuiltValueEnumConst(wireName: r'following')
  static const QuoteApprovalAutomaticEnum following = _$following;
  @BuiltValueEnumConst(wireName: r'unsupported_policy')
  static const QuoteApprovalAutomaticEnum unsupportedPolicy =
      _$unsupportedPolicy;

  static Serializer<QuoteApprovalAutomaticEnum> get serializer =>
      _$quoteApprovalAutomaticEnumSerializer;

  const QuoteApprovalAutomaticEnum._(String name) : super(name);

  static BuiltSet<QuoteApprovalAutomaticEnum> get values => _$values;
  static QuoteApprovalAutomaticEnum valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class QuoteApprovalAutomaticEnumMixin = Object
    with _$QuoteApprovalAutomaticEnumMixin;
