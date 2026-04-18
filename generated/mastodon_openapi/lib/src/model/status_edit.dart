//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon_openapi/src/model/custom_emoji.dart';
import 'package:mastodon_openapi/src/model/media_attachment.dart';
import 'package:mastodon_openapi/src/model/status_edit_poll.dart';
import 'package:mastodon_openapi/src/model/status_quote.dart';
import 'package:built_collection/built_collection.dart';
import 'package:mastodon_openapi/src/model/account.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'status_edit.g.dart';

/// Represents a revision of a status that has been edited.
///
/// Properties:
/// * [account] - The account that published this revision.
/// * [content] - The content of the status at this revision.
/// * [createdAt] - The timestamp of when the revision was published.
/// * [emojis] - Any custom emoji that are used in the current revision.
/// * [mediaAttachments] - The current state of the media attachments at this revision.
/// * [sensitive] - Whether the status was marked sensitive at this revision.
/// * [spoilerText] - The content of the subject or content warning at this revision.
/// * [poll]
/// * [quote]
@BuiltValue()
abstract class StatusEdit implements Built<StatusEdit, StatusEditBuilder> {
  /// The account that published this revision.
  @BuiltValueField(wireName: r'account')
  Account get account;

  /// The content of the status at this revision.
  @BuiltValueField(wireName: r'content')
  String get content;

  /// The timestamp of when the revision was published.
  @BuiltValueField(wireName: r'created_at')
  DateTime get createdAt;

  /// Any custom emoji that are used in the current revision.
  @BuiltValueField(wireName: r'emojis')
  BuiltList<CustomEmoji> get emojis;

  /// The current state of the media attachments at this revision.
  @BuiltValueField(wireName: r'media_attachments')
  BuiltList<MediaAttachment> get mediaAttachments;

  /// Whether the status was marked sensitive at this revision.
  @BuiltValueField(wireName: r'sensitive')
  bool get sensitive;

  /// The content of the subject or content warning at this revision.
  @BuiltValueField(wireName: r'spoiler_text')
  String get spoilerText;

  @BuiltValueField(wireName: r'poll')
  StatusEditPoll? get poll;

  @BuiltValueField(wireName: r'quote')
  StatusQuote? get quote;

  StatusEdit._();

  factory StatusEdit([void updates(StatusEditBuilder b)]) = _$StatusEdit;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StatusEditBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StatusEdit> get serializer => _$StatusEditSerializer();
}

class _$StatusEditSerializer implements PrimitiveSerializer<StatusEdit> {
  @override
  final Iterable<Type> types = const [StatusEdit, _$StatusEdit];

  @override
  final String wireName = r'StatusEdit';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StatusEdit object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'account';
    yield serializers.serialize(
      object.account,
      specifiedType: const FullType(Account),
    );
    yield r'content';
    yield serializers.serialize(
      object.content,
      specifiedType: const FullType(String),
    );
    yield r'created_at';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'emojis';
    yield serializers.serialize(
      object.emojis,
      specifiedType: const FullType(BuiltList, [FullType(CustomEmoji)]),
    );
    yield r'media_attachments';
    yield serializers.serialize(
      object.mediaAttachments,
      specifiedType: const FullType(BuiltList, [FullType(MediaAttachment)]),
    );
    yield r'sensitive';
    yield serializers.serialize(
      object.sensitive,
      specifiedType: const FullType(bool),
    );
    yield r'spoiler_text';
    yield serializers.serialize(
      object.spoilerText,
      specifiedType: const FullType(String),
    );
    if (object.poll != null) {
      yield r'poll';
      yield serializers.serialize(
        object.poll,
        specifiedType: const FullType(StatusEditPoll),
      );
    }
    if (object.quote != null) {
      yield r'quote';
      yield serializers.serialize(
        object.quote,
        specifiedType: const FullType.nullable(StatusQuote),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    StatusEdit object, {
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
    required StatusEditBuilder result,
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
        case r'content':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.content = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'emojis':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CustomEmoji)]),
          ) as BuiltList<CustomEmoji>;
          result.emojis.replace(valueDes);
          break;
        case r'media_attachments':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(MediaAttachment)]),
          ) as BuiltList<MediaAttachment>;
          result.mediaAttachments.replace(valueDes);
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
        case r'poll':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(StatusEditPoll),
          ) as StatusEditPoll;
          result.poll.replace(valueDes);
          break;
        case r'quote':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(StatusQuote),
          ) as StatusQuote?;
          if (valueDes == null) continue;
          result.quote.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StatusEdit deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StatusEditBuilder();
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
