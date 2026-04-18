//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'credential_account_source_quote_policy_enum.g.dart';

class CredentialAccountSourceQuotePolicyEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'public')
  static const CredentialAccountSourceQuotePolicyEnum public = _$public;
  @BuiltValueEnumConst(wireName: r'followers')
  static const CredentialAccountSourceQuotePolicyEnum followers = _$followers;
  @BuiltValueEnumConst(wireName: r'nobody')
  static const CredentialAccountSourceQuotePolicyEnum nobody = _$nobody;

  static Serializer<CredentialAccountSourceQuotePolicyEnum> get serializer =>
      _$credentialAccountSourceQuotePolicyEnumSerializer;

  const CredentialAccountSourceQuotePolicyEnum._(String name) : super(name);

  static BuiltSet<CredentialAccountSourceQuotePolicyEnum> get values =>
      _$values;
  static CredentialAccountSourceQuotePolicyEnum valueOf(String name) =>
      _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class CredentialAccountSourceQuotePolicyEnumMixin = Object
    with _$CredentialAccountSourceQuotePolicyEnumMixin;
