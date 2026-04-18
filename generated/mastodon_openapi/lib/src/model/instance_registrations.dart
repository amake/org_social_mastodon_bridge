//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'instance_registrations.g.dart';

/// Information about registering for this website.
///
/// Properties:
/// * [approvalRequired] - Whether registrations require moderator approval.
/// * [enabled] - Whether registrations are enabled. This will be `false` if `registrations_mode` is `none` or if the server is in `single_user_mode`.
/// * [message] - A custom message to be shown when registrations are closed. Will be `null` if registrations are open.
/// * [minAge] - A minimum age required to register, if configured.
/// * [reasonRequired] - Whether registrations require the user to provide a reason for joining. Only applicable when `registrations[approval_required]` is true.
/// * [url] - A custom URL for account registration, when using external authentication.
@BuiltValue()
abstract class InstanceRegistrations
    implements Built<InstanceRegistrations, InstanceRegistrationsBuilder> {
  /// Whether registrations require moderator approval.
  @BuiltValueField(wireName: r'approval_required')
  bool get approvalRequired;

  /// Whether registrations are enabled. This will be `false` if `registrations_mode` is `none` or if the server is in `single_user_mode`.
  @BuiltValueField(wireName: r'enabled')
  bool get enabled;

  /// A custom message to be shown when registrations are closed. Will be `null` if registrations are open.
  @BuiltValueField(wireName: r'message')
  String? get message;

  /// A minimum age required to register, if configured.
  @BuiltValueField(wireName: r'min_age')
  int? get minAge;

  /// Whether registrations require the user to provide a reason for joining. Only applicable when `registrations[approval_required]` is true.
  @BuiltValueField(wireName: r'reason_required')
  bool? get reasonRequired;

  /// A custom URL for account registration, when using external authentication.
  @BuiltValueField(wireName: r'url')
  String? get url;

  InstanceRegistrations._();

  factory InstanceRegistrations(
      [void updates(InstanceRegistrationsBuilder b)]) = _$InstanceRegistrations;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InstanceRegistrationsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InstanceRegistrations> get serializer =>
      _$InstanceRegistrationsSerializer();
}

class _$InstanceRegistrationsSerializer
    implements PrimitiveSerializer<InstanceRegistrations> {
  @override
  final Iterable<Type> types = const [
    InstanceRegistrations,
    _$InstanceRegistrations
  ];

  @override
  final String wireName = r'InstanceRegistrations';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InstanceRegistrations object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'approval_required';
    yield serializers.serialize(
      object.approvalRequired,
      specifiedType: const FullType(bool),
    );
    yield r'enabled';
    yield serializers.serialize(
      object.enabled,
      specifiedType: const FullType(bool),
    );
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.minAge != null) {
      yield r'min_age';
      yield serializers.serialize(
        object.minAge,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.reasonRequired != null) {
      yield r'reason_required';
      yield serializers.serialize(
        object.reasonRequired,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    InstanceRegistrations object, {
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
    required InstanceRegistrationsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'approval_required':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.approvalRequired = valueDes;
          break;
        case r'enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.enabled = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.message = valueDes;
          break;
        case r'min_age':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.minAge = valueDes;
          break;
        case r'reason_required':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.reasonRequired = valueDes;
          break;
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.url = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InstanceRegistrations deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceRegistrationsBuilder();
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
