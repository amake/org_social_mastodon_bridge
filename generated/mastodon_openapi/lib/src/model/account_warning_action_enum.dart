//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'account_warning_action_enum.g.dart';

class AccountWarningActionEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'none')
  static const AccountWarningActionEnum none = _$none;
  @BuiltValueEnumConst(wireName: r'disable')
  static const AccountWarningActionEnum disable = _$disable;
  @BuiltValueEnumConst(wireName: r'mark_statuses_as_sensitive')
  static const AccountWarningActionEnum markStatusesAsSensitive =
      _$markStatusesAsSensitive;
  @BuiltValueEnumConst(wireName: r'delete_statuses')
  static const AccountWarningActionEnum deleteStatuses = _$deleteStatuses;
  @BuiltValueEnumConst(wireName: r'sensitive')
  static const AccountWarningActionEnum sensitive = _$sensitive;
  @BuiltValueEnumConst(wireName: r'silence')
  static const AccountWarningActionEnum silence = _$silence;
  @BuiltValueEnumConst(wireName: r'suspend')
  static const AccountWarningActionEnum suspend = _$suspend;

  static Serializer<AccountWarningActionEnum> get serializer =>
      _$accountWarningActionEnumSerializer;

  const AccountWarningActionEnum._(String name) : super(name);

  static BuiltSet<AccountWarningActionEnum> get values => _$values;
  static AccountWarningActionEnum valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class AccountWarningActionEnumMixin = Object
    with _$AccountWarningActionEnumMixin;
