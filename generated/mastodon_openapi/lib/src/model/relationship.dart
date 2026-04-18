//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'relationship.g.dart';

/// Represents the relationship between accounts, such as following / blocking / muting / etc.
///
/// Properties:
/// * [blockedBy] - Is this user blocking you?
/// * [blocking] - Are you blocking this user?
/// * [domainBlocking] - Are you blocking this user's domain?
/// * [endorsed] - Are you featuring this user on your profile?
/// * [followedBy] - Are you followed by this user?
/// * [following] - Are you following this user?
/// * [id] - The account ID.
/// * [muting] - Are you muting this user?
/// * [mutingNotifications] - Are you muting notifications from this user?
/// * [note] - The authenticated user's personal comment about this account
/// * [notifying] - Have you enabled notifications for this user?
/// * [requested] - Do you have a pending follow request for this user?
/// * [requestedBy] - Has this user requested to follow you?
/// * [showingReblogs] - Are you receiving this user's boosts in your home timeline?
/// * [languages] - Which languages are you following from this user?
/// * [mutingExpiresAt] - Date at which the mute expires, if there is any.
@BuiltValue()
abstract class Relationship
    implements Built<Relationship, RelationshipBuilder> {
  /// Is this user blocking you?
  @BuiltValueField(wireName: r'blocked_by')
  bool get blockedBy;

  /// Are you blocking this user?
  @BuiltValueField(wireName: r'blocking')
  bool get blocking;

  /// Are you blocking this user's domain?
  @BuiltValueField(wireName: r'domain_blocking')
  bool get domainBlocking;

  /// Are you featuring this user on your profile?
  @BuiltValueField(wireName: r'endorsed')
  bool get endorsed;

  /// Are you followed by this user?
  @BuiltValueField(wireName: r'followed_by')
  bool get followedBy;

  /// Are you following this user?
  @BuiltValueField(wireName: r'following')
  bool get following;

  /// The account ID.
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Are you muting this user?
  @BuiltValueField(wireName: r'muting')
  bool get muting;

  /// Are you muting notifications from this user?
  @BuiltValueField(wireName: r'muting_notifications')
  bool get mutingNotifications;

  /// The authenticated user's personal comment about this account
  @BuiltValueField(wireName: r'note')
  String get note;

  /// Have you enabled notifications for this user?
  @BuiltValueField(wireName: r'notifying')
  bool get notifying;

  /// Do you have a pending follow request for this user?
  @BuiltValueField(wireName: r'requested')
  bool get requested;

  /// Has this user requested to follow you?
  @BuiltValueField(wireName: r'requested_by')
  bool get requestedBy;

  /// Are you receiving this user's boosts in your home timeline?
  @BuiltValueField(wireName: r'showing_reblogs')
  bool get showingReblogs;

  /// Which languages are you following from this user?
  @BuiltValueField(wireName: r'languages')
  BuiltList<String>? get languages;

  /// Date at which the mute expires, if there is any.
  @BuiltValueField(wireName: r'muting_expires_at')
  DateTime? get mutingExpiresAt;

  Relationship._();

  factory Relationship([void updates(RelationshipBuilder b)]) = _$Relationship;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RelationshipBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Relationship> get serializer => _$RelationshipSerializer();
}

class _$RelationshipSerializer implements PrimitiveSerializer<Relationship> {
  @override
  final Iterable<Type> types = const [Relationship, _$Relationship];

  @override
  final String wireName = r'Relationship';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Relationship object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'blocked_by';
    yield serializers.serialize(
      object.blockedBy,
      specifiedType: const FullType(bool),
    );
    yield r'blocking';
    yield serializers.serialize(
      object.blocking,
      specifiedType: const FullType(bool),
    );
    yield r'domain_blocking';
    yield serializers.serialize(
      object.domainBlocking,
      specifiedType: const FullType(bool),
    );
    yield r'endorsed';
    yield serializers.serialize(
      object.endorsed,
      specifiedType: const FullType(bool),
    );
    yield r'followed_by';
    yield serializers.serialize(
      object.followedBy,
      specifiedType: const FullType(bool),
    );
    yield r'following';
    yield serializers.serialize(
      object.following,
      specifiedType: const FullType(bool),
    );
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'muting';
    yield serializers.serialize(
      object.muting,
      specifiedType: const FullType(bool),
    );
    yield r'muting_notifications';
    yield serializers.serialize(
      object.mutingNotifications,
      specifiedType: const FullType(bool),
    );
    yield r'note';
    yield serializers.serialize(
      object.note,
      specifiedType: const FullType(String),
    );
    yield r'notifying';
    yield serializers.serialize(
      object.notifying,
      specifiedType: const FullType(bool),
    );
    yield r'requested';
    yield serializers.serialize(
      object.requested,
      specifiedType: const FullType(bool),
    );
    yield r'requested_by';
    yield serializers.serialize(
      object.requestedBy,
      specifiedType: const FullType(bool),
    );
    yield r'showing_reblogs';
    yield serializers.serialize(
      object.showingReblogs,
      specifiedType: const FullType(bool),
    );
    if (object.languages != null) {
      yield r'languages';
      yield serializers.serialize(
        object.languages,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
    if (object.mutingExpiresAt != null) {
      yield r'muting_expires_at';
      yield serializers.serialize(
        object.mutingExpiresAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Relationship object, {
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
    required RelationshipBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'blocked_by':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.blockedBy = valueDes;
          break;
        case r'blocking':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.blocking = valueDes;
          break;
        case r'domain_blocking':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.domainBlocking = valueDes;
          break;
        case r'endorsed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.endorsed = valueDes;
          break;
        case r'followed_by':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.followedBy = valueDes;
          break;
        case r'following':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.following = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'muting':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.muting = valueDes;
          break;
        case r'muting_notifications':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.mutingNotifications = valueDes;
          break;
        case r'note':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.note = valueDes;
          break;
        case r'notifying':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.notifying = valueDes;
          break;
        case r'requested':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.requested = valueDes;
          break;
        case r'requested_by':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.requestedBy = valueDes;
          break;
        case r'showing_reblogs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.showingReblogs = valueDes;
          break;
        case r'languages':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.languages.replace(valueDes);
          break;
        case r'muting_expires_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.mutingExpiresAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Relationship deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RelationshipBuilder();
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
