//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'partial_account_with_avatar.g.dart';

/// These are stripped-down versions of [Account]({{< relref \"entities/Account\" >}}) that only contain what is necessary to display a list of avatars, as well as a few other useful properties. The aim is to cut back on expensive server-side serialization and reduce the network payload size of notification groups.
///
/// Properties:
/// * [acct] - The WebFinger account URI. Equal to `username` for local users, or `username@domain` for remote users.
/// * [avatar] - An image icon that is shown next to statuses and in the profile.
/// * [avatarStatic] - A static version of the avatar. Equal to `avatar` if its value is a static image; different if `avatar` is an animated GIF.
/// * [bot] - Indicates that the account may perform automated actions, may not be monitored, or identifies as a robot.
/// * [id] - The account id.
/// * [locked] - Whether the account manually approves follow requests.
/// * [url] - The location of the user's profile page.
@BuiltValue()
abstract class PartialAccountWithAvatar
    implements
        Built<PartialAccountWithAvatar, PartialAccountWithAvatarBuilder> {
  /// The WebFinger account URI. Equal to `username` for local users, or `username@domain` for remote users.
  @BuiltValueField(wireName: r'acct')
  String get acct;

  /// An image icon that is shown next to statuses and in the profile.
  @BuiltValueField(wireName: r'avatar')
  String get avatar;

  /// A static version of the avatar. Equal to `avatar` if its value is a static image; different if `avatar` is an animated GIF.
  @BuiltValueField(wireName: r'avatar_static')
  String get avatarStatic;

  /// Indicates that the account may perform automated actions, may not be monitored, or identifies as a robot.
  @BuiltValueField(wireName: r'bot')
  bool get bot;

  /// The account id.
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Whether the account manually approves follow requests.
  @BuiltValueField(wireName: r'locked')
  bool get locked;

  /// The location of the user's profile page.
  @BuiltValueField(wireName: r'url')
  String get url;

  PartialAccountWithAvatar._();

  factory PartialAccountWithAvatar(
          [void updates(PartialAccountWithAvatarBuilder b)]) =
      _$PartialAccountWithAvatar;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PartialAccountWithAvatarBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PartialAccountWithAvatar> get serializer =>
      _$PartialAccountWithAvatarSerializer();
}

class _$PartialAccountWithAvatarSerializer
    implements PrimitiveSerializer<PartialAccountWithAvatar> {
  @override
  final Iterable<Type> types = const [
    PartialAccountWithAvatar,
    _$PartialAccountWithAvatar
  ];

  @override
  final String wireName = r'PartialAccountWithAvatar';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PartialAccountWithAvatar object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'acct';
    yield serializers.serialize(
      object.acct,
      specifiedType: const FullType(String),
    );
    yield r'avatar';
    yield serializers.serialize(
      object.avatar,
      specifiedType: const FullType(String),
    );
    yield r'avatar_static';
    yield serializers.serialize(
      object.avatarStatic,
      specifiedType: const FullType(String),
    );
    yield r'bot';
    yield serializers.serialize(
      object.bot,
      specifiedType: const FullType(bool),
    );
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'locked';
    yield serializers.serialize(
      object.locked,
      specifiedType: const FullType(bool),
    );
    yield r'url';
    yield serializers.serialize(
      object.url,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PartialAccountWithAvatar object, {
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
    required PartialAccountWithAvatarBuilder result,
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
        case r'avatar':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.avatar = valueDes;
          break;
        case r'avatar_static':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.avatarStatic = valueDes;
          break;
        case r'bot':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.bot = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'locked':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.locked = valueDes;
          break;
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
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
  PartialAccountWithAvatar deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PartialAccountWithAvatarBuilder();
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
