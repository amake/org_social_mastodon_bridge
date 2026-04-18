//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:mastodon_openapi/src/model/translation_attachment.dart';
import 'package:mastodon_openapi/src/model/translation_poll.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'translation.g.dart';

/// Represents the result of machine translating some status content
///
/// Properties:
/// * [content] - HTML-encoded translated content of the status.
/// * [detectedSourceLanguage] - The language of the source text, as auto-detected by the machine translation provider.
/// * [language] - The resulting language the text was translated into.
/// * [mediaAttachments] - The translated media descriptions of the status.
/// * [provider] - The service that provided the machine translation.
/// * [spoilerText] - The translated spoiler warning of the status.
/// * [poll]
@BuiltValue()
abstract class Translation implements Built<Translation, TranslationBuilder> {
  /// HTML-encoded translated content of the status.
  @BuiltValueField(wireName: r'content')
  String get content;

  /// The language of the source text, as auto-detected by the machine translation provider.
  @BuiltValueField(wireName: r'detected_source_language')
  String get detectedSourceLanguage;

  /// The resulting language the text was translated into.
  @BuiltValueField(wireName: r'language')
  String get language;

  /// The translated media descriptions of the status.
  @BuiltValueField(wireName: r'media_attachments')
  BuiltList<TranslationAttachment> get mediaAttachments;

  /// The service that provided the machine translation.
  @BuiltValueField(wireName: r'provider')
  String get provider;

  /// The translated spoiler warning of the status.
  @BuiltValueField(wireName: r'spoiler_text')
  String get spoilerText;

  @BuiltValueField(wireName: r'poll')
  TranslationPoll? get poll;

  Translation._();

  factory Translation([void updates(TranslationBuilder b)]) = _$Translation;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TranslationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Translation> get serializer => _$TranslationSerializer();
}

class _$TranslationSerializer implements PrimitiveSerializer<Translation> {
  @override
  final Iterable<Type> types = const [Translation, _$Translation];

  @override
  final String wireName = r'Translation';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Translation object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'content';
    yield serializers.serialize(
      object.content,
      specifiedType: const FullType(String),
    );
    yield r'detected_source_language';
    yield serializers.serialize(
      object.detectedSourceLanguage,
      specifiedType: const FullType(String),
    );
    yield r'language';
    yield serializers.serialize(
      object.language,
      specifiedType: const FullType(String),
    );
    yield r'media_attachments';
    yield serializers.serialize(
      object.mediaAttachments,
      specifiedType:
          const FullType(BuiltList, [FullType(TranslationAttachment)]),
    );
    yield r'provider';
    yield serializers.serialize(
      object.provider,
      specifiedType: const FullType(String),
    );
    yield r'spoiler_text';
    yield serializers.serialize(
      object.spoilerText,
      specifiedType: const FullType(String),
    );
    if (object.poll != null) {
      yield r'poll';
      yield serializers.serialize(
        object.poll,
        specifiedType: const FullType.nullable(TranslationPoll),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Translation object, {
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
    required TranslationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'content':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.content = valueDes;
          break;
        case r'detected_source_language':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.detectedSourceLanguage = valueDes;
          break;
        case r'language':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.language = valueDes;
          break;
        case r'media_attachments':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(TranslationAttachment)]),
          ) as BuiltList<TranslationAttachment>;
          result.mediaAttachments.replace(valueDes);
          break;
        case r'provider':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.provider = valueDes;
          break;
        case r'spoiler_text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.spoilerText = valueDes;
          break;
        case r'poll':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(TranslationPoll),
          ) as TranslationPoll?;
          if (valueDes == null) continue;
          result.poll.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Translation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TranslationBuilder();
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
