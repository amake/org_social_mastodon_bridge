//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon_openapi/src/model/media_attachment.dart';
import 'package:mastodon_openapi/src/model/scheduled_status_params.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'scheduled_status.g.dart';

/// Represents a status that will be published at a future scheduled date.
///
/// Properties:
/// * [id] - ID of the scheduled status in the database.
/// * [mediaAttachments] - Media that will be attached when the status is posted.
/// * [params]
/// * [scheduledAt] - The timestamp for when the status will be posted.
@BuiltValue()
abstract class ScheduledStatus
    implements Built<ScheduledStatus, ScheduledStatusBuilder> {
  /// ID of the scheduled status in the database.
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Media that will be attached when the status is posted.
  @BuiltValueField(wireName: r'media_attachments')
  BuiltList<MediaAttachment> get mediaAttachments;

  @BuiltValueField(wireName: r'params')
  ScheduledStatusParams get params;

  /// The timestamp for when the status will be posted.
  @BuiltValueField(wireName: r'scheduled_at')
  DateTime get scheduledAt;

  ScheduledStatus._();

  factory ScheduledStatus([void updates(ScheduledStatusBuilder b)]) =
      _$ScheduledStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ScheduledStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ScheduledStatus> get serializer =>
      _$ScheduledStatusSerializer();
}

class _$ScheduledStatusSerializer
    implements PrimitiveSerializer<ScheduledStatus> {
  @override
  final Iterable<Type> types = const [ScheduledStatus, _$ScheduledStatus];

  @override
  final String wireName = r'ScheduledStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ScheduledStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'media_attachments';
    yield serializers.serialize(
      object.mediaAttachments,
      specifiedType: const FullType(BuiltList, [FullType(MediaAttachment)]),
    );
    yield r'params';
    yield serializers.serialize(
      object.params,
      specifiedType: const FullType(ScheduledStatusParams),
    );
    yield r'scheduled_at';
    yield serializers.serialize(
      object.scheduledAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ScheduledStatus object, {
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
    required ScheduledStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'media_attachments':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(MediaAttachment)]),
          ) as BuiltList<MediaAttachment>;
          result.mediaAttachments.replace(valueDes);
          break;
        case r'params':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ScheduledStatusParams),
          ) as ScheduledStatusParams;
          result.params.replace(valueDes);
          break;
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
  ScheduledStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ScheduledStatusBuilder();
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
