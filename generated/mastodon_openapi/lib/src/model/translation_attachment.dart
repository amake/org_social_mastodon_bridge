//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'translation_attachment.g.dart';

/// Additional entity definition for Translation::Attachment
///
/// Properties:
/// * [description] - The translated description of the attachment.
/// * [id] - The id of the attachment.
@BuiltValue()
abstract class TranslationAttachment
    implements Built<TranslationAttachment, TranslationAttachmentBuilder> {
  /// The translated description of the attachment.
  @BuiltValueField(wireName: r'description')
  String get description;

  /// The id of the attachment.
  @BuiltValueField(wireName: r'id')
  String get id;

  TranslationAttachment._();

  factory TranslationAttachment(
      [void updates(TranslationAttachmentBuilder b)]) = _$TranslationAttachment;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TranslationAttachmentBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TranslationAttachment> get serializer =>
      _$TranslationAttachmentSerializer();
}

class _$TranslationAttachmentSerializer
    implements PrimitiveSerializer<TranslationAttachment> {
  @override
  final Iterable<Type> types = const [
    TranslationAttachment,
    _$TranslationAttachment
  ];

  @override
  final String wireName = r'TranslationAttachment';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TranslationAttachment object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'description';
    yield serializers.serialize(
      object.description,
      specifiedType: const FullType(String),
    );
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TranslationAttachment object, {
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
    required TranslationAttachmentBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TranslationAttachment deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TranslationAttachmentBuilder();
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
