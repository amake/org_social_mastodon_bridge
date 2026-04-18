//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_push_subscription_request_data_alerts.g.dart';

/// CreatePushSubscriptionRequestDataAlerts
///
/// Properties:
/// * [mention] - Receive mention notifications? Defaults to false.
/// * [quote] - Receive quote notifications? Defaults to false.
/// * [status] - Receive new subscribed account notifications? Defaults to false.
/// * [reblog] - Receive reblog notifications? Defaults to false.
/// * [follow] - Receive follow notifications? Defaults to false.
/// * [followRequest] - Receive follow request notifications? Defaults to false.
/// * [favourite] - Receive favourite notifications? Defaults to false.
/// * [poll] - Receive poll notifications? Defaults to false.
/// * [updateValue] - Receive status edited notifications? Defaults to false.
/// * [quotedUpdate] - Receive quoted status edit notifications? Defaults to false.
/// * [adminPeriodSignUp] - Receive new user signup notifications? Defaults to false. Must have a role with the appropriate permissions.
/// * [adminPeriodReport] - Receive new report notifications? Defaults to false. Must have a role with the appropriate permissions.
@BuiltValue()
abstract class CreatePushSubscriptionRequestDataAlerts
    implements
        Built<CreatePushSubscriptionRequestDataAlerts,
            CreatePushSubscriptionRequestDataAlertsBuilder> {
  /// Receive mention notifications? Defaults to false.
  @BuiltValueField(wireName: r'mention')
  bool? get mention;

  /// Receive quote notifications? Defaults to false.
  @BuiltValueField(wireName: r'quote')
  bool? get quote;

  /// Receive new subscribed account notifications? Defaults to false.
  @BuiltValueField(wireName: r'status')
  bool? get status;

  /// Receive reblog notifications? Defaults to false.
  @BuiltValueField(wireName: r'reblog')
  bool? get reblog;

  /// Receive follow notifications? Defaults to false.
  @BuiltValueField(wireName: r'follow')
  bool? get follow;

  /// Receive follow request notifications? Defaults to false.
  @BuiltValueField(wireName: r'follow_request')
  bool? get followRequest;

  /// Receive favourite notifications? Defaults to false.
  @BuiltValueField(wireName: r'favourite')
  bool? get favourite;

  /// Receive poll notifications? Defaults to false.
  @BuiltValueField(wireName: r'poll')
  bool? get poll;

  /// Receive status edited notifications? Defaults to false.
  @BuiltValueField(wireName: r'update')
  bool? get updateValue;

  /// Receive quoted status edit notifications? Defaults to false.
  @BuiltValueField(wireName: r'quoted_update')
  bool? get quotedUpdate;

  /// Receive new user signup notifications? Defaults to false. Must have a role with the appropriate permissions.
  @BuiltValueField(wireName: r'admin.sign_up')
  bool? get adminPeriodSignUp;

  /// Receive new report notifications? Defaults to false. Must have a role with the appropriate permissions.
  @BuiltValueField(wireName: r'admin.report')
  bool? get adminPeriodReport;

  CreatePushSubscriptionRequestDataAlerts._();

  factory CreatePushSubscriptionRequestDataAlerts(
          [void updates(CreatePushSubscriptionRequestDataAlertsBuilder b)]) =
      _$CreatePushSubscriptionRequestDataAlerts;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreatePushSubscriptionRequestDataAlertsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreatePushSubscriptionRequestDataAlerts> get serializer =>
      _$CreatePushSubscriptionRequestDataAlertsSerializer();
}

class _$CreatePushSubscriptionRequestDataAlertsSerializer
    implements PrimitiveSerializer<CreatePushSubscriptionRequestDataAlerts> {
  @override
  final Iterable<Type> types = const [
    CreatePushSubscriptionRequestDataAlerts,
    _$CreatePushSubscriptionRequestDataAlerts
  ];

  @override
  final String wireName = r'CreatePushSubscriptionRequestDataAlerts';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreatePushSubscriptionRequestDataAlerts object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.mention != null) {
      yield r'mention';
      yield serializers.serialize(
        object.mention,
        specifiedType: const FullType(bool),
      );
    }
    if (object.quote != null) {
      yield r'quote';
      yield serializers.serialize(
        object.quote,
        specifiedType: const FullType(bool),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(bool),
      );
    }
    if (object.reblog != null) {
      yield r'reblog';
      yield serializers.serialize(
        object.reblog,
        specifiedType: const FullType(bool),
      );
    }
    if (object.follow != null) {
      yield r'follow';
      yield serializers.serialize(
        object.follow,
        specifiedType: const FullType(bool),
      );
    }
    if (object.followRequest != null) {
      yield r'follow_request';
      yield serializers.serialize(
        object.followRequest,
        specifiedType: const FullType(bool),
      );
    }
    if (object.favourite != null) {
      yield r'favourite';
      yield serializers.serialize(
        object.favourite,
        specifiedType: const FullType(bool),
      );
    }
    if (object.poll != null) {
      yield r'poll';
      yield serializers.serialize(
        object.poll,
        specifiedType: const FullType(bool),
      );
    }
    if (object.updateValue != null) {
      yield r'update';
      yield serializers.serialize(
        object.updateValue,
        specifiedType: const FullType(bool),
      );
    }
    if (object.quotedUpdate != null) {
      yield r'quoted_update';
      yield serializers.serialize(
        object.quotedUpdate,
        specifiedType: const FullType(bool),
      );
    }
    if (object.adminPeriodSignUp != null) {
      yield r'admin.sign_up';
      yield serializers.serialize(
        object.adminPeriodSignUp,
        specifiedType: const FullType(bool),
      );
    }
    if (object.adminPeriodReport != null) {
      yield r'admin.report';
      yield serializers.serialize(
        object.adminPeriodReport,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreatePushSubscriptionRequestDataAlerts object, {
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
    required CreatePushSubscriptionRequestDataAlertsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'mention':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.mention = valueDes;
          break;
        case r'quote':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.quote = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.status = valueDes;
          break;
        case r'reblog':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.reblog = valueDes;
          break;
        case r'follow':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.follow = valueDes;
          break;
        case r'follow_request':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.followRequest = valueDes;
          break;
        case r'favourite':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.favourite = valueDes;
          break;
        case r'poll':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.poll = valueDes;
          break;
        case r'update':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.updateValue = valueDes;
          break;
        case r'quoted_update':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.quotedUpdate = valueDes;
          break;
        case r'admin.sign_up':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.adminPeriodSignUp = valueDes;
          break;
        case r'admin.report':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.adminPeriodReport = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreatePushSubscriptionRequestDataAlerts deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreatePushSubscriptionRequestDataAlertsBuilder();
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
