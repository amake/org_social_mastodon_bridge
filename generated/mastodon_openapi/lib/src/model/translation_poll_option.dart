//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'translation_poll_option.g.dart';

/// Additional entity definition for Translation::Poll::Option
///
/// Properties:
/// * [title] - The translated title of the poll option.
@BuiltValue()
abstract class TranslationPollOption
    implements Built<TranslationPollOption, TranslationPollOptionBuilder> {
  /// The translated title of the poll option.
  @BuiltValueField(wireName: r'title')
  String get title;

  TranslationPollOption._();

  factory TranslationPollOption(
      [void updates(TranslationPollOptionBuilder b)]) = _$TranslationPollOption;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TranslationPollOptionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TranslationPollOption> get serializer =>
      _$TranslationPollOptionSerializer();
}

class _$TranslationPollOptionSerializer
    implements PrimitiveSerializer<TranslationPollOption> {
  @override
  final Iterable<Type> types = const [
    TranslationPollOption,
    _$TranslationPollOption
  ];

  @override
  final String wireName = r'TranslationPollOption';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TranslationPollOption object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TranslationPollOption object, {
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
    required TranslationPollOptionBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TranslationPollOption deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TranslationPollOptionBuilder();
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
