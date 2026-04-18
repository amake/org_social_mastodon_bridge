//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon_openapi/src/model/status_visibility_enum.dart';
import 'package:mastodon_openapi/src/model/base_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'text_status.g.dart';

/// Create a text-only status
///
/// Properties:
/// * [status] - The text content of the status. If `media_ids` is provided, this becomes optional. Attaching a `poll` is optional while `status` is provided.
/// * [inReplyToId] - ID of the status being replied to, if status is a reply.
/// * [language] - ISO 639-1 language code for this status.
/// * [quoteApprovalPolicy] - String (Enumerable, oneOf). Sets who is allowed to quote the status. When omitted, the user's [default setting] will be used instead. Ignored if `visibility` is `private` or `direct`, in which case the policy will always be set to `nobody`.
/// * [quotedStatusId] - ID of the status being quoted, if any. Will raise an error if the status does not exist, the author does not have access to it, or quoting is denied by Mastodon's understanding of the attached quote policy. All posts except Private Mentions (`direct` visibility) are quotable by their author. Quoting a `private` post will restrict the quoting post's `visibility` to `private` or `direct` (if the given `visibility` is `public` or `unlisted`, `private` will be used instead). An error will be returned when making a quote post with `direct` visibility and the quote author is not explicitly mentioned. If the `status` text doesn't include a link to the quoted post, Mastodon will prepend a `<p class=\"quote-inline\">RE: <a href=\"…\">…</a></p>` paragraph for backward compatibility (such a paragraph will be hidden by Mastodon's web interface).
/// * [scheduledAt] - [Datetime] at which to schedule a status. Providing this parameter will cause ScheduledStatus to be returned instead of Status. Must be at least 5 minutes in the future.
/// * [sensitive] - Mark status and attached media as sensitive? Defaults to false.
/// * [spoilerText] - Text to be shown as a warning or subject before the actual content. Statuses are generally collapsed behind this field.
/// * [visibility] - Sets the visibility of the posted status to `public`, `unlisted`, `private`, `direct`.
@BuiltValue()
abstract class TextStatus
    implements BaseStatus, Built<TextStatus, TextStatusBuilder> {
  /// The text content of the status. If `media_ids` is provided, this becomes optional. Attaching a `poll` is optional while `status` is provided.
  @BuiltValueField(wireName: r'status')
  String get status;

  TextStatus._();

  factory TextStatus([void updates(TextStatusBuilder b)]) = _$TextStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TextStatusBuilder b) => b..sensitive = false;

  @BuiltValueSerializer(custom: true)
  static Serializer<TextStatus> get serializer => _$TextStatusSerializer();
}

class _$TextStatusSerializer implements PrimitiveSerializer<TextStatus> {
  @override
  final Iterable<Type> types = const [TextStatus, _$TextStatus];

  @override
  final String wireName = r'TextStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TextStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    if (object.language != null) {
      yield r'language';
      yield serializers.serialize(
        object.language,
        specifiedType: const FullType(String),
      );
    }
    if (object.sensitive != null) {
      yield r'sensitive';
      yield serializers.serialize(
        object.sensitive,
        specifiedType: const FullType(bool),
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
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(String),
    );
    if (object.inReplyToId != null) {
      yield r'in_reply_to_id';
      yield serializers.serialize(
        object.inReplyToId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TextStatus object, {
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
    required TextStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'language':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.language = valueDes;
          break;
        case r'sensitive':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.sensitive = valueDes;
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
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
          break;
        case r'in_reply_to_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.inReplyToId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TextStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TextStatusBuilder();
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
