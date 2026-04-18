//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon_openapi/src/model/relationship_severance_event_type_enum.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'relationship_severance_event.g.dart';

/// Summary of a moderation or block event that caused follow relationships to be severed.
///
/// Properties:
/// * [createdAt] - When the event took place.
/// * [followersCount] - Number of followers that were removed as result of the event.
/// * [followingCount] - Number of accounts the user stopped following as result of the event.
/// * [id] - The ID of the relationship severance event in the database.
/// * [purged] - Whether the list of severed relationships is unavailable because the underlying issue has been purged.
/// * [targetName] - Name of the target of the moderation/block event. This is either a domain name or a user handle, depending on the event type.
/// * [type] - Type of event.
@BuiltValue()
abstract class RelationshipSeveranceEvent
    implements
        Built<RelationshipSeveranceEvent, RelationshipSeveranceEventBuilder> {
  /// When the event took place.
  @BuiltValueField(wireName: r'created_at')
  DateTime get createdAt;

  /// Number of followers that were removed as result of the event.
  @BuiltValueField(wireName: r'followers_count')
  int get followersCount;

  /// Number of accounts the user stopped following as result of the event.
  @BuiltValueField(wireName: r'following_count')
  int get followingCount;

  /// The ID of the relationship severance event in the database.
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Whether the list of severed relationships is unavailable because the underlying issue has been purged.
  @BuiltValueField(wireName: r'purged')
  bool get purged;

  /// Name of the target of the moderation/block event. This is either a domain name or a user handle, depending on the event type.
  @BuiltValueField(wireName: r'target_name')
  String get targetName;

  /// Type of event.
  @BuiltValueField(wireName: r'type')
  RelationshipSeveranceEventTypeEnum get type;
  // enum typeEnum {  domain_block,  user_domain_block,  account_suspension,  };

  RelationshipSeveranceEvent._();

  factory RelationshipSeveranceEvent(
          [void updates(RelationshipSeveranceEventBuilder b)]) =
      _$RelationshipSeveranceEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RelationshipSeveranceEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RelationshipSeveranceEvent> get serializer =>
      _$RelationshipSeveranceEventSerializer();
}

class _$RelationshipSeveranceEventSerializer
    implements PrimitiveSerializer<RelationshipSeveranceEvent> {
  @override
  final Iterable<Type> types = const [
    RelationshipSeveranceEvent,
    _$RelationshipSeveranceEvent
  ];

  @override
  final String wireName = r'RelationshipSeveranceEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RelationshipSeveranceEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'created_at';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'followers_count';
    yield serializers.serialize(
      object.followersCount,
      specifiedType: const FullType(int),
    );
    yield r'following_count';
    yield serializers.serialize(
      object.followingCount,
      specifiedType: const FullType(int),
    );
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'purged';
    yield serializers.serialize(
      object.purged,
      specifiedType: const FullType(bool),
    );
    yield r'target_name';
    yield serializers.serialize(
      object.targetName,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(RelationshipSeveranceEventTypeEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    RelationshipSeveranceEvent object, {
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
    required RelationshipSeveranceEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'followers_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.followersCount = valueDes;
          break;
        case r'following_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.followingCount = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'purged':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.purged = valueDes;
          break;
        case r'target_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.targetName = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RelationshipSeveranceEventTypeEnum),
          ) as RelationshipSeveranceEventTypeEnum;
          result.type = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RelationshipSeveranceEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RelationshipSeveranceEventBuilder();
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
