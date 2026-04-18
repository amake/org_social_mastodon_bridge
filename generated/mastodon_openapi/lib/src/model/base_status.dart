//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon_openapi/src/model/status_visibility_enum.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'base_status.g.dart';

/// Common fields for all status creation requests
///
/// Properties:
/// * [inReplyToId] - ID of the status being replied to, if status is a reply.
/// * [language] - ISO 639-1 language code for this status.
/// * [quoteApprovalPolicy] - String (Enumerable, oneOf). Sets who is allowed to quote the status. When omitted, the user's [default setting] will be used instead. Ignored if `visibility` is `private` or `direct`, in which case the policy will always be set to `nobody`.
/// * [quotedStatusId] - ID of the status being quoted, if any. Will raise an error if the status does not exist, the author does not have access to it, or quoting is denied by Mastodon's understanding of the attached quote policy. All posts except Private Mentions (`direct` visibility) are quotable by their author. Quoting a `private` post will restrict the quoting post's `visibility` to `private` or `direct` (if the given `visibility` is `public` or `unlisted`, `private` will be used instead). An error will be returned when making a quote post with `direct` visibility and the quote author is not explicitly mentioned. If the `status` text doesn't include a link to the quoted post, Mastodon will prepend a `<p class=\"quote-inline\">RE: <a href=\"…\">…</a></p>` paragraph for backward compatibility (such a paragraph will be hidden by Mastodon's web interface).
/// * [scheduledAt] - [Datetime] at which to schedule a status. Providing this parameter will cause ScheduledStatus to be returned instead of Status. Must be at least 5 minutes in the future.
/// * [sensitive] - Mark status and attached media as sensitive? Defaults to false.
/// * [spoilerText] - Text to be shown as a warning or subject before the actual content. Statuses are generally collapsed behind this field.
/// * [visibility] - Sets the visibility of the posted status to `public`, `unlisted`, `private`, `direct`.
@BuiltValue(instantiable: false)
abstract class BaseStatus {
  /// ID of the status being replied to, if status is a reply.
  @BuiltValueField(wireName: r'in_reply_to_id')
  String? get inReplyToId;

  /// ISO 639-1 language code for this status.
  @BuiltValueField(wireName: r'language')
  String? get language;

  /// String (Enumerable, oneOf). Sets who is allowed to quote the status. When omitted, the user's [default setting] will be used instead. Ignored if `visibility` is `private` or `direct`, in which case the policy will always be set to `nobody`.
  @BuiltValueField(wireName: r'quote_approval_policy')
  String? get quoteApprovalPolicy;

  /// ID of the status being quoted, if any. Will raise an error if the status does not exist, the author does not have access to it, or quoting is denied by Mastodon's understanding of the attached quote policy. All posts except Private Mentions (`direct` visibility) are quotable by their author. Quoting a `private` post will restrict the quoting post's `visibility` to `private` or `direct` (if the given `visibility` is `public` or `unlisted`, `private` will be used instead). An error will be returned when making a quote post with `direct` visibility and the quote author is not explicitly mentioned. If the `status` text doesn't include a link to the quoted post, Mastodon will prepend a `<p class=\"quote-inline\">RE: <a href=\"…\">…</a></p>` paragraph for backward compatibility (such a paragraph will be hidden by Mastodon's web interface).
  @BuiltValueField(wireName: r'quoted_status_id')
  String? get quotedStatusId;

  /// [Datetime] at which to schedule a status. Providing this parameter will cause ScheduledStatus to be returned instead of Status. Must be at least 5 minutes in the future.
  @BuiltValueField(wireName: r'scheduled_at')
  DateTime? get scheduledAt;

  /// Mark status and attached media as sensitive? Defaults to false.
  @BuiltValueField(wireName: r'sensitive')
  bool? get sensitive;

  /// Text to be shown as a warning or subject before the actual content. Statuses are generally collapsed behind this field.
  @BuiltValueField(wireName: r'spoiler_text')
  String? get spoilerText;

  /// Sets the visibility of the posted status to `public`, `unlisted`, `private`, `direct`.
  @BuiltValueField(wireName: r'visibility')
  StatusVisibilityEnum? get visibility;
  // enum visibilityEnum {  public,  unlisted,  private,  direct,  };

  @BuiltValueSerializer(custom: true)
  static Serializer<BaseStatus> get serializer => _$BaseStatusSerializer();
}

class _$BaseStatusSerializer implements PrimitiveSerializer<BaseStatus> {
  @override
  final Iterable<Type> types = const [BaseStatus];

  @override
  final String wireName = r'BaseStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BaseStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.inReplyToId != null) {
      yield r'in_reply_to_id';
      yield serializers.serialize(
        object.inReplyToId,
        specifiedType: const FullType(String),
      );
    }
    if (object.language != null) {
      yield r'language';
      yield serializers.serialize(
        object.language,
        specifiedType: const FullType(String),
      );
    }
    if (object.quoteApprovalPolicy != null) {
      yield r'quote_approval_policy';
      yield serializers.serialize(
        object.quoteApprovalPolicy,
        specifiedType: const FullType(String),
      );
    }
    if (object.quotedStatusId != null) {
      yield r'quoted_status_id';
      yield serializers.serialize(
        object.quotedStatusId,
        specifiedType: const FullType(String),
      );
    }
    if (object.scheduledAt != null) {
      yield r'scheduled_at';
      yield serializers.serialize(
        object.scheduledAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.sensitive != null) {
      yield r'sensitive';
      yield serializers.serialize(
        object.sensitive,
        specifiedType: const FullType(bool),
      );
    }
    if (object.spoilerText != null) {
      yield r'spoiler_text';
      yield serializers.serialize(
        object.spoilerText,
        specifiedType: const FullType(String),
      );
    }
    if (object.visibility != null) {
      yield r'visibility';
      yield serializers.serialize(
        object.visibility,
        specifiedType: const FullType(StatusVisibilityEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BaseStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  @override
  BaseStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized,
        specifiedType: FullType($BaseStatus)) as $BaseStatus;
  }
}

/// a concrete implementation of [BaseStatus], since [BaseStatus] is not instantiable
@BuiltValue(instantiable: true)
abstract class $BaseStatus
    implements BaseStatus, Built<$BaseStatus, $BaseStatusBuilder> {
  $BaseStatus._();

  factory $BaseStatus([void Function($BaseStatusBuilder)? updates]) =
      _$$BaseStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($BaseStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$BaseStatus> get serializer => _$$BaseStatusSerializer();
}

class _$$BaseStatusSerializer implements PrimitiveSerializer<$BaseStatus> {
  @override
  final Iterable<Type> types = const [$BaseStatus, _$$BaseStatus];

  @override
  final String wireName = r'$BaseStatus';

  @override
  Object serialize(
    Serializers serializers,
    $BaseStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(BaseStatus))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BaseStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'in_reply_to_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.inReplyToId = valueDes;
          break;
        case r'language':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.language = valueDes;
          break;
        case r'quote_approval_policy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.quoteApprovalPolicy = valueDes;
          break;
        case r'quoted_status_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.quotedStatusId = valueDes;
          break;
        case r'scheduled_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.scheduledAt = valueDes;
          break;
        case r'sensitive':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.sensitive = valueDes;
          break;
        case r'spoiler_text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.spoilerText = valueDes;
          break;
        case r'visibility':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(StatusVisibilityEnum),
          ) as StatusVisibilityEnum;
          result.visibility = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $BaseStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $BaseStatusBuilder();
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
