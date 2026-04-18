//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon_openapi/src/model/create_marker_request_notifications.dart';
import 'package:mastodon_openapi/src/model/create_marker_request_home.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_marker_request.g.dart';

/// CreateMarkerRequest
///
/// Properties:
/// * [home]
/// * [notifications]
@BuiltValue()
abstract class CreateMarkerRequest
    implements Built<CreateMarkerRequest, CreateMarkerRequestBuilder> {
  @BuiltValueField(wireName: r'home')
  CreateMarkerRequestHome? get home;

  @BuiltValueField(wireName: r'notifications')
  CreateMarkerRequestNotifications? get notifications;

  CreateMarkerRequest._();

  factory CreateMarkerRequest([void updates(CreateMarkerRequestBuilder b)]) =
      _$CreateMarkerRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateMarkerRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateMarkerRequest> get serializer =>
      _$CreateMarkerRequestSerializer();
}

class _$CreateMarkerRequestSerializer
    implements PrimitiveSerializer<CreateMarkerRequest> {
  @override
  final Iterable<Type> types = const [
    CreateMarkerRequest,
    _$CreateMarkerRequest
  ];

  @override
  final String wireName = r'CreateMarkerRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateMarkerRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.home != null) {
      yield r'home';
      yield serializers.serialize(
        object.home,
        specifiedType: const FullType(CreateMarkerRequestHome),
      );
    }
    if (object.notifications != null) {
      yield r'notifications';
      yield serializers.serialize(
        object.notifications,
        specifiedType: const FullType(CreateMarkerRequestNotifications),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateMarkerRequest object, {
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
    required CreateMarkerRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'home':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CreateMarkerRequestHome),
          ) as CreateMarkerRequestHome;
          result.home.replace(valueDes);
          break;
        case r'notifications':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CreateMarkerRequestNotifications),
          ) as CreateMarkerRequestNotifications;
          result.notifications.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateMarkerRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateMarkerRequestBuilder();
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
