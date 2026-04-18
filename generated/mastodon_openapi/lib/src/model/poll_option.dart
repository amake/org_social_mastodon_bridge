//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'poll_option.g.dart';

/// Additional entity definition for Poll::Option
///
/// Properties:
/// * [title] - The text value of the poll option.
/// * [votesCount] - The total number of received votes for this option.
@BuiltValue()
abstract class PollOption implements Built<PollOption, PollOptionBuilder> {
  /// The text value of the poll option.
  @BuiltValueField(wireName: r'title')
  String get title;

  /// The total number of received votes for this option.
  @BuiltValueField(wireName: r'votes_count')
  int? get votesCount;

  PollOption._();

  factory PollOption([void updates(PollOptionBuilder b)]) = _$PollOption;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PollOptionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PollOption> get serializer => _$PollOptionSerializer();
}

class _$PollOptionSerializer implements PrimitiveSerializer<PollOption> {
  @override
  final Iterable<Type> types = const [PollOption, _$PollOption];

  @override
  final String wireName = r'PollOption';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PollOption object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    if (object.votesCount != null) {
      yield r'votes_count';
      yield serializers.serialize(
        object.votesCount,
        specifiedType: const FullType.nullable(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PollOption object, {
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
    required PollOptionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'votes_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.votesCount = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PollOption deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PollOptionBuilder();
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
