//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon_openapi/src/model/translation_poll_option.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'translation_poll.g.dart';

/// Additional entity definition for Translation::Poll
///
/// Properties:
/// * [id] - The ID of the poll.
/// * [options] - The translated poll options.
@BuiltValue()
abstract class TranslationPoll
    implements Built<TranslationPoll, TranslationPollBuilder> {
  /// The ID of the poll.
  @BuiltValueField(wireName: r'id')
  String get id;

  /// The translated poll options.
  @BuiltValueField(wireName: r'options')
  BuiltList<TranslationPollOption> get options;

  TranslationPoll._();

  factory TranslationPoll([void updates(TranslationPollBuilder b)]) =
      _$TranslationPoll;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TranslationPollBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TranslationPoll> get serializer =>
      _$TranslationPollSerializer();
}

class _$TranslationPollSerializer
    implements PrimitiveSerializer<TranslationPoll> {
  @override
  final Iterable<Type> types = const [TranslationPoll, _$TranslationPoll];

  @override
  final String wireName = r'TranslationPoll';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TranslationPoll object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'options';
    yield serializers.serialize(
      object.options,
      specifiedType:
          const FullType(BuiltList, [FullType(TranslationPollOption)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TranslationPoll object, {
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
    required TranslationPollBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'options':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(TranslationPollOption)]),
          ) as BuiltList<TranslationPollOption>;
          result.options.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TranslationPoll deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TranslationPollBuilder();
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
