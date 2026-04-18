//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notification_type_enum.g.dart';

class NotificationTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'mention')
  static const NotificationTypeEnum mention = _$mention;
  @BuiltValueEnumConst(wireName: r'status')
  static const NotificationTypeEnum status = _$status;
  @BuiltValueEnumConst(wireName: r'reblog')
  static const NotificationTypeEnum reblog = _$reblog;
  @BuiltValueEnumConst(wireName: r'follow')
  static const NotificationTypeEnum follow = _$follow;
  @BuiltValueEnumConst(wireName: r'follow_request')
  static const NotificationTypeEnum followRequest = _$followRequest;
  @BuiltValueEnumConst(wireName: r'favourite')
  static const NotificationTypeEnum favourite = _$favourite;
  @BuiltValueEnumConst(wireName: r'poll')
  static const NotificationTypeEnum poll = _$poll;
  @BuiltValueEnumConst(wireName: r'update')
  static const NotificationTypeEnum updateValue = _$updateValue;
  @BuiltValueEnumConst(wireName: r'admin.sign_up')
  static const NotificationTypeEnum adminPeriodSignUp = _$adminPeriodSignUp;
  @BuiltValueEnumConst(wireName: r'admin.report')
  static const NotificationTypeEnum adminPeriodReport = _$adminPeriodReport;
  @BuiltValueEnumConst(wireName: r'severed_relationships')
  static const NotificationTypeEnum severedRelationships =
      _$severedRelationships;
  @BuiltValueEnumConst(wireName: r'moderation_warning')
  static const NotificationTypeEnum moderationWarning = _$moderationWarning;
  @BuiltValueEnumConst(wireName: r'quote')
  static const NotificationTypeEnum quote = _$quote;
  @BuiltValueEnumConst(wireName: r'quoted_update')
  static const NotificationTypeEnum quotedUpdate = _$quotedUpdate;

  static Serializer<NotificationTypeEnum> get serializer =>
      _$notificationTypeEnumSerializer;

  const NotificationTypeEnum._(String name) : super(name);

  static BuiltSet<NotificationTypeEnum> get values => _$values;
  static NotificationTypeEnum valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class NotificationTypeEnumMixin = Object
    with _$NotificationTypeEnumMixin;
