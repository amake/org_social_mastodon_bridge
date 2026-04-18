//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon_openapi/src/model/account.dart';
import 'package:mastodon_openapi/src/model/status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notification_request.g.dart';

/// Represents a group of filtered notifications from a specific user.
///
/// Properties:
/// * [account] - The account that performed the action that generated the filtered notifications.
/// * [createdAt] - The timestamp of the notification request, i.e. when the first filtered notification from that user was created.
/// * [id] - The id of the notification request in the database.
/// * [notificationsCount] - How many of this account's notifications were filtered.
/// * [updatedAt] - The timestamp of when the notification request was last updated.
/// * [lastStatus]
@BuiltValue()
abstract class NotificationRequest
    implements Built<NotificationRequest, NotificationRequestBuilder> {
  /// The account that performed the action that generated the filtered notifications.
  @BuiltValueField(wireName: r'account')
  Account get account;

  /// The timestamp of the notification request, i.e. when the first filtered notification from that user was created.
  @BuiltValueField(wireName: r'created_at')
  DateTime get createdAt;

  /// The id of the notification request in the database.
  @BuiltValueField(wireName: r'id')
  String get id;

  /// How many of this account's notifications were filtered.
  @BuiltValueField(wireName: r'notifications_count')
  String get notificationsCount;

  /// The timestamp of when the notification request was last updated.
  @BuiltValueField(wireName: r'updated_at')
  DateTime get updatedAt;

  @BuiltValueField(wireName: r'last_status')
  Status? get lastStatus;

  NotificationRequest._();

  factory NotificationRequest([void updates(NotificationRequestBuilder b)]) =
      _$NotificationRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NotificationRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NotificationRequest> get serializer =>
      _$NotificationRequestSerializer();
}

class _$NotificationRequestSerializer
    implements PrimitiveSerializer<NotificationRequest> {
  @override
  final Iterable<Type> types = const [
    NotificationRequest,
    _$NotificationRequest
  ];

  @override
  final String wireName = r'NotificationRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NotificationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'account';
    yield serializers.serialize(
      object.account,
      specifiedType: const FullType(Account),
    );
    yield r'created_at';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'notifications_count';
    yield serializers.serialize(
      object.notificationsCount,
      specifiedType: const FullType(String),
    );
    yield r'updated_at';
    yield serializers.serialize(
      object.updatedAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.lastStatus != null) {
      yield r'last_status';
      yield serializers.serialize(
        object.lastStatus,
        specifiedType: const FullType.nullable(Status),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NotificationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required NotificationRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'account':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Account),
          ) as Account;
          result.account.replace(valueDes);
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'notifications_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.notificationsCount = valueDes;
          break;
        case r'updated_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.updatedAt = valueDes;
          break;
        case r'last_status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Status),
          ) as Status?;
          if (valueDes == null) continue;
          result.lastStatus.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NotificationRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NotificationRequestBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}
