//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'quote_state_enum.g.dart';

class QuoteStateEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'pending')
  static const QuoteStateEnum pending = _$pending;
  @BuiltValueEnumConst(wireName: r'accepted')
  static const QuoteStateEnum accepted = _$accepted;
  @BuiltValueEnumConst(wireName: r'rejected')
  static const QuoteStateEnum rejected = _$rejected;
  @BuiltValueEnumConst(wireName: r'revoked')
  static const QuoteStateEnum revoked = _$revoked;
  @BuiltValueEnumConst(wireName: r'deleted')
  static const QuoteStateEnum deleted = _$deleted;
  @BuiltValueEnumConst(wireName: r'unauthorized')
  static const QuoteStateEnum unauthorized = _$unauthorized;
  @BuiltValueEnumConst(wireName: r'blocked_account')
  static const QuoteStateEnum blockedAccount = _$blockedAccount;
  @BuiltValueEnumConst(wireName: r'blocked_domain')
  static const QuoteStateEnum blockedDomain = _$blockedDomain;
  @BuiltValueEnumConst(wireName: r'muted_account')
  static const QuoteStateEnum mutedAccount = _$mutedAccount;

  static Serializer<QuoteStateEnum> get serializer =>
      _$quoteStateEnumSerializer;

  const QuoteStateEnum._(String name) : super(name);

  static BuiltSet<QuoteStateEnum> get values => _$values;
  static QuoteStateEnum valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class QuoteStateEnumMixin = Object with _$QuoteStateEnumMixin;
