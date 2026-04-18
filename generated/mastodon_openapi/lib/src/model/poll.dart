//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon_openapi/src/model/custom_emoji.dart';
import 'package:built_collection/built_collection.dart';
import 'package:mastodon_openapi/src/model/poll_option.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'poll.g.dart';

/// Represents a poll attached to a status.
///
/// Properties:
/// * [emojis] - Custom emoji to be used for rendering poll options.
/// * [expired] - Is the poll currently expired?
/// * [id] - The ID of the poll in the database.
/// * [multiple] - Does the poll allow multiple-choice answers?
/// * [options] - Possible answers for the poll.
/// * [votesCount] - How many votes have been received.
/// * [expiresAt] - When the poll ends.
/// * [ownVotes] - When called with a user token, which options has the authorized user chosen? Contains an array of index values for `options`.
/// * [voted] - When called with a user token, has the authorized user voted?
/// * [votersCount] - How many unique accounts have voted on a multiple-choice poll.
@BuiltValue()
abstract class Poll implements Built<Poll, PollBuilder> {
  /// Custom emoji to be used for rendering poll options.
  @BuiltValueField(wireName: r'emojis')
  BuiltList<CustomEmoji> get emojis;

  /// Is the poll currently expired?
  @BuiltValueField(wireName: r'expired')
  bool get expired;

  /// The ID of the poll in the database.
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Does the poll allow multiple-choice answers?
  @BuiltValueField(wireName: r'multiple')
  bool get multiple;

  /// Possible answers for the poll.
  @BuiltValueField(wireName: r'options')
  BuiltList<PollOption> get options;

  /// How many votes have been received.
  @BuiltValueField(wireName: r'votes_count')
  int get votesCount;

  /// When the poll ends.
  @BuiltValueField(wireName: r'expires_at')
  DateTime? get expiresAt;

  /// When called with a user token, which options has the authorized user chosen? Contains an array of index values for `options`.
  @BuiltValueField(wireName: r'own_votes')
  BuiltList<int>? get ownVotes;

  /// When called with a user token, has the authorized user voted?
  @BuiltValueField(wireName: r'voted')
  bool? get voted;

  /// How many unique accounts have voted on a multiple-choice poll.
  @BuiltValueField(wireName: r'voters_count')
  int? get votersCount;

  Poll._();

  factory Poll([void updates(PollBuilder b)]) = _$Poll;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PollBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Poll> get serializer => _$PollSerializer();
}

class _$PollSerializer implements PrimitiveSerializer<Poll> {
  @override
  final Iterable<Type> types = const [Poll, _$Poll];

  @override
  final String wireName = r'Poll';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Poll object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'emojis';
    yield serializers.serialize(
      object.emojis,
      specifiedType: const FullType(BuiltList, [FullType(CustomEmoji)]),
    );
    yield r'expired';
    yield serializers.serialize(
      object.expired,
      specifiedType: const FullType(bool),
    );
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'multiple';
    yield serializers.serialize(
      object.multiple,
      specifiedType: const FullType(bool),
    );
    yield r'options';
    yield serializers.serialize(
      object.options,
      specifiedType: const FullType(BuiltList, [FullType(PollOption)]),
    );
    yield r'votes_count';
    yield serializers.serialize(
      object.votesCount,
      specifiedType: const FullType(int),
    );
    if (object.expiresAt != null) {
      yield r'expires_at';
      yield serializers.serialize(
        object.expiresAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.ownVotes != null) {
      yield r'own_votes';
      yield serializers.serialize(
        object.ownVotes,
        specifiedType: const FullType.nullable(BuiltList, [FullType(int)]),
      );
    }
    if (object.voted != null) {
      yield r'voted';
      yield serializers.serialize(
        object.voted,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.votersCount != null) {
      yield r'voters_count';
      yield serializers.serialize(
        object.votersCount,
        specifiedType: const FullType.nullable(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Poll object, {
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
    required PollBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'emojis':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CustomEmoji)]),
          ) as BuiltList<CustomEmoji>;
          result.emojis.replace(valueDes);
          break;
        case r'expired':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.expired = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'multiple':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.multiple = valueDes;
          break;
        case r'options':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(PollOption)]),
          ) as BuiltList<PollOption>;
          result.options.replace(valueDes);
          break;
        case r'votes_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.votesCount = valueDes;
          break;
        case r'expires_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.expiresAt = valueDes;
          break;
        case r'own_votes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(int)]),
          ) as BuiltList<int>?;
          if (valueDes == null) continue;
          result.ownVotes.replace(valueDes);
          break;
        case r'voted':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.voted = valueDes;
          break;
        case r'voters_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.votersCount = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Poll deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PollBuilder();
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
