//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:mastodon_openapi/src/model/account.dart';
import 'package:mastodon_openapi/src/model/status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'conversation.g.dart';

/// Represents a conversation with \"direct message\" visibility.
///
/// Properties:
/// * [accounts] - Participants in the conversation.
/// * [id] - The ID of the conversation in the database.
/// * [unread] - Is the conversation currently marked as unread?
/// * [lastStatus]
@BuiltValue()
abstract class Conversation
    implements Built<Conversation, ConversationBuilder> {
  /// Participants in the conversation.
  @BuiltValueField(wireName: r'accounts')
  BuiltList<Account> get accounts;

  /// The ID of the conversation in the database.
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Is the conversation currently marked as unread?
  @BuiltValueField(wireName: r'unread')
  bool get unread;

  @BuiltValueField(wireName: r'last_status')
  Status? get lastStatus;

  Conversation._();

  factory Conversation([void updates(ConversationBuilder b)]) = _$Conversation;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConversationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Conversation> get serializer => _$ConversationSerializer();
}

class _$ConversationSerializer implements PrimitiveSerializer<Conversation> {
  @override
  final Iterable<Type> types = const [Conversation, _$Conversation];

  @override
  final String wireName = r'Conversation';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Conversation object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'accounts';
    yield serializers.serialize(
      object.accounts,
      specifiedType: const FullType(BuiltList, [FullType(Account)]),
    );
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'unread';
    yield serializers.serialize(
      object.unread,
      specifiedType: const FullType(bool),
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
    Conversation object, {
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
    required ConversationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'accounts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Account)]),
          ) as BuiltList<Account>;
          result.accounts.replace(valueDes);
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'unread':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.unread = valueDes;
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
  Conversation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConversationBuilder();
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
