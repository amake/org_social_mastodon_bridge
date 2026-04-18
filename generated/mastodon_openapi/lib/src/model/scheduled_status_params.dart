//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon_openapi/src/model/status_visibility_enum.dart';
import 'package:built_collection/built_collection.dart';
import 'package:mastodon_openapi/src/model/scheduled_status_params_poll.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'scheduled_status_params.g.dart';

/// The parameters that were used when scheduling the status, to be used when the status is posted.
///
/// Properties:
/// * [applicationId] - Internal ID of the Application that posted the status. Provided for historical compatibility only and can be ignored.
/// * [text] - Text to be used as status content.
/// * [visibility] - The visibility that the status will have once it is posted.
/// * [withRateLimit] - Whether status creation is subject to rate limiting. Provided for historical compatibility only and can be ignored.
/// * [idempotency] - Idempotency key to prevent duplicate statuses.
/// * [inReplyToId] - ID of the Status that will be replied to.
/// * [language] - The language that will be used for the status.
/// * [mediaIds] - IDs of the MediaAttachments that will be attached to the status.
/// * [poll]
/// * [scheduledAt] - When the status will be scheduled. This will be null because the status is only scheduled once.
/// * [sensitive] - Whether the status will be marked as sensitive.
/// * [spoilerText] - The text of the content warning or summary for the status.
@BuiltValue()
abstract class ScheduledStatusParams
    implements Built<ScheduledStatusParams, ScheduledStatusParamsBuilder> {
  /// Internal ID of the Application that posted the status. Provided for historical compatibility only and can be ignored.
  @Deprecated('applicationId has been deprecated')
  @BuiltValueField(wireName: r'application_id')
  int get applicationId;

  /// Text to be used as status content.
  @BuiltValueField(wireName: r'text')
  String get text;

  /// The visibility that the status will have once it is posted.
  @BuiltValueField(wireName: r'visibility')
  StatusVisibilityEnum get visibility;
  // enum visibilityEnum {  public,  unlisted,  private,  direct,  };

  /// Whether status creation is subject to rate limiting. Provided for historical compatibility only and can be ignored.
  @Deprecated('withRateLimit has been deprecated')
  @BuiltValueField(wireName: r'with_rate_limit')
  bool get withRateLimit;

  /// Idempotency key to prevent duplicate statuses.
  @BuiltValueField(wireName: r'idempotency')
  String? get idempotency;

  /// ID of the Status that will be replied to.
  @BuiltValueField(wireName: r'in_reply_to_id')
  int? get inReplyToId;

  /// The language that will be used for the status.
  @BuiltValueField(wireName: r'language')
  String? get language;

  /// IDs of the MediaAttachments that will be attached to the status.
  @BuiltValueField(wireName: r'media_ids')
  BuiltList<String>? get mediaIds;

  @BuiltValueField(wireName: r'poll')
  ScheduledStatusParamsPoll? get poll;

  /// When the status will be scheduled. This will be null because the status is only scheduled once.
  @BuiltValueField(wireName: r'scheduled_at')
  String? get scheduledAt;

  /// Whether the status will be marked as sensitive.
  @BuiltValueField(wireName: r'sensitive')
  bool? get sensitive;

  /// The text of the content warning or summary for the status.
  @BuiltValueField(wireName: r'spoiler_text')
  String? get spoilerText;

  ScheduledStatusParams._();

  factory ScheduledStatusParams(
      [void updates(ScheduledStatusParamsBuilder b)]) = _$ScheduledStatusParams;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ScheduledStatusParamsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ScheduledStatusParams> get serializer =>
      _$ScheduledStatusParamsSerializer();
}

class _$ScheduledStatusParamsSerializer
    implements PrimitiveSerializer<ScheduledStatusParams> {
  @override
  final Iterable<Type> types = const [
    ScheduledStatusParams,
    _$ScheduledStatusParams
  ];

  @override
  final String wireName = r'ScheduledStatusParams';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ScheduledStatusParams object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'application_id';
    yield serializers.serialize(
      object.applicationId,
      specifiedType: const FullType(int),
    );
    yield r'text';
    yield serializers.serialize(
      object.text,
      specifiedType: const FullType(String),
    );
    yield r'visibility';
    yield serializers.serialize(
      object.visibility,
      specifiedType: const FullType(StatusVisibilityEnum),
    );
    yield r'with_rate_limit';
    yield serializers.serialize(
      object.withRateLimit,
      specifiedType: const FullType(bool),
    );
    if (object.idempotency != null) {
      yield r'idempotency';
      yield serializers.serialize(
        object.idempotency,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.inReplyToId != null) {
      yield r'in_reply_to_id';
      yield serializers.serialize(
        object.inReplyToId,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.language != null) {
      yield r'language';
      yield serializers.serialize(
        object.language,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.mediaIds != null) {
      yield r'media_ids';
      yield serializers.serialize(
        object.mediaIds,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
    if (object.poll != null) {
      yield r'poll';
      yield serializers.serialize(
        object.poll,
        specifiedType: const FullType(ScheduledStatusParamsPoll),
      );
    }
    if (object.scheduledAt != null) {
      yield r'scheduled_at';
      yield serializers.serialize(
        object.scheduledAt,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.sensitive != null) {
      yield r'sensitive';
      yield serializers.serialize(
        object.sensitive,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.spoilerText != null) {
      yield r'spoiler_text';
      yield serializers.serialize(
        object.spoilerText,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ScheduledStatusParams object, {
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
    required ScheduledStatusParamsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'application_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.applicationId = valueDes;
          break;
        case r'text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.text = valueDes;
          break;
        case r'visibility':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(StatusVisibilityEnum),
          ) as StatusVisibilityEnum;
          result.visibility = valueDes;
          break;
        case r'with_rate_limit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.withRateLimit = valueDes;
          break;
        case r'idempotency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.idempotency = valueDes;
          break;
        case r'in_reply_to_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.inReplyToId = valueDes;
          break;
        case r'language':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.language = valueDes;
          break;
        case r'media_ids':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.mediaIds.replace(valueDes);
          break;
        case r'poll':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ScheduledStatusParamsPoll),
          ) as ScheduledStatusParamsPoll;
          result.poll.replace(valueDes);
          break;
        case r'scheduled_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.scheduledAt = valueDes;
          break;
        case r'sensitive':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.sensitive = valueDes;
          break;
        case r'spoiler_text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.spoilerText = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ScheduledStatusParams deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ScheduledStatusParamsBuilder();
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
