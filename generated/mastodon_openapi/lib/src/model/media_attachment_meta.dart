//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon_openapi/src/model/media_attachment_meta_focus.dart';
import 'package:mastodon_openapi/src/model/meta_details.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'media_attachment_meta.g.dart';

/// Metadata returned by Paperclip.
///
/// Properties:
/// * [small]
/// * [original]
/// * [focus]
@BuiltValue()
abstract class MediaAttachmentMeta
    implements Built<MediaAttachmentMeta, MediaAttachmentMetaBuilder> {
  @BuiltValueField(wireName: r'small')
  MetaDetails? get small;

  @BuiltValueField(wireName: r'original')
  MetaDetails? get original;

  @BuiltValueField(wireName: r'focus')
  MediaAttachmentMetaFocus? get focus;

  MediaAttachmentMeta._();

  factory MediaAttachmentMeta([void updates(MediaAttachmentMetaBuilder b)]) =
      _$MediaAttachmentMeta;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MediaAttachmentMetaBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MediaAttachmentMeta> get serializer =>
      _$MediaAttachmentMetaSerializer();
}

class _$MediaAttachmentMetaSerializer
    implements PrimitiveSerializer<MediaAttachmentMeta> {
  @override
  final Iterable<Type> types = const [
    MediaAttachmentMeta,
    _$MediaAttachmentMeta
  ];

  @override
  final String wireName = r'MediaAttachmentMeta';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MediaAttachmentMeta object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.small != null) {
      yield r'small';
      yield serializers.serialize(
        object.small,
        specifiedType: const FullType.nullable(MetaDetails),
      );
    }
    if (object.original != null) {
      yield r'original';
      yield serializers.serialize(
        object.original,
        specifiedType: const FullType.nullable(MetaDetails),
      );
    }
    if (object.focus != null) {
      yield r'focus';
      yield serializers.serialize(
        object.focus,
        specifiedType: const FullType(MediaAttachmentMetaFocus),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MediaAttachmentMeta object, {
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
    required MediaAttachmentMetaBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'small':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(MetaDetails),
          ) as MetaDetails?;
          if (valueDes == null) continue;
          result.small.replace(valueDes);
          break;
        case r'original':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(MetaDetails),
          ) as MetaDetails?;
          if (valueDes == null) continue;
          result.original.replace(valueDes);
          break;
        case r'focus':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MediaAttachmentMetaFocus),
          ) as MediaAttachmentMetaFocus;
          result.focus.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MediaAttachmentMeta deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MediaAttachmentMetaBuilder();
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
