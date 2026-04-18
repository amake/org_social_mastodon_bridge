//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_scheduled_status_request.g.dart';

/// UpdateScheduledStatusRequest
///
/// Properties:
/// * [scheduledAt] - [Datetime] at which the status will be published. Must be at least 5 minutes into the future.
@BuiltValue()
abstract class UpdateScheduledStatusRequest
    implements
        Built<UpdateScheduledStatusRequest,
            UpdateScheduledStatusRequestBuilder> {
  /// [Datetime] at which the status will be published. Must be at least 5 minutes into the future.
  @BuiltValueField(wireName: r'scheduled_at')
  DateTime? get scheduledAt;

  UpdateScheduledStatusRequest._();

  factory UpdateScheduledStatusRequest(
          [void updates(UpdateScheduledStatusRequestBuilder b)]) =
      _$UpdateScheduledStatusRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateScheduledStatusRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateScheduledStatusRequest> get serializer =>
      _$UpdateScheduledStatusRequestSerializer();
}

class _$UpdateScheduledStatusRequestSerializer
    implements PrimitiveSerializer<UpdateScheduledStatusRequest> {
  @override
  final Iterable<Type> types = const [
    UpdateScheduledStatusRequest,
    _$UpdateScheduledStatusRequest
  ];

  @override
  final String wireName = r'UpdateScheduledStatusRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateScheduledStatusRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.scheduledAt != null) {
      yield r'scheduled_at';
      yield serializers.serialize(
        object.scheduledAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateScheduledStatusRequest object, {
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
    required UpdateScheduledStatusRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'scheduled_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.scheduledAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateScheduledStatusRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateScheduledStatusRequestBuilder();
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
