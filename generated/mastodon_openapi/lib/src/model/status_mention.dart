//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'status_mention.g.dart';

/// Additional entity definition for Status::Mention
///
/// Properties:
/// * [acct] - The webfinger acct: URI of the mentioned user. Equivalent to `username` for local users, or `username@domain` for remote users.
/// * [id] - The account ID of the mentioned user.
/// * [url] - The location of the mentioned user's profile.
/// * [username] - The username of the mentioned user.
@BuiltValue()
abstract class StatusMention
    implements Built<StatusMention, StatusMentionBuilder> {
  /// The webfinger acct: URI of the mentioned user. Equivalent to `username` for local users, or `username@domain` for remote users.
  @BuiltValueField(wireName: r'acct')
  String get acct;

  /// The account ID of the mentioned user.
  @BuiltValueField(wireName: r'id')
  String get id;

  /// The location of the mentioned user's profile.
  @BuiltValueField(wireName: r'url')
  String get url;

  /// The username of the mentioned user.
  @BuiltValueField(wireName: r'username')
  String get username;

  StatusMention._();

  factory StatusMention([void updates(StatusMentionBuilder b)]) =
      _$StatusMention;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StatusMentionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StatusMention> get serializer =>
      _$StatusMentionSerializer();
}

class _$StatusMentionSerializer implements PrimitiveSerializer<StatusMention> {
  @override
  final Iterable<Type> types = const [StatusMention, _$StatusMention];

  @override
  final String wireName = r'StatusMention';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StatusMention object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'acct';
    yield serializers.serialize(
      object.acct,
      specifiedType: const FullType(String),
    );
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'url';
    yield serializers.serialize(
      object.url,
      specifiedType: const FullType(String),
    );
    yield r'username';
    yield serializers.serialize(
      object.username,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    StatusMention object, {
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
    required StatusMentionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'acct':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.acct = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.url = valueDes;
          break;
        case r'username':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.username = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StatusMention deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StatusMentionBuilder();
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
