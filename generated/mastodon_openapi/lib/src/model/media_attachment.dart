//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon_openapi/src/model/media_attachment_meta.dart';
import 'package:mastodon_openapi/src/model/media_attachment_type_enum.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'media_attachment.g.dart';

/// Represents a file or media attachment that can be added to a status.
///
/// Properties:
/// * [id] - The ID of the attachment in the database.
/// * [type] - The type of the attachment.
/// * [blurhash] - A hash computed by [the BlurHash algorithm](https://github.com/woltapp/blurhash), for generating colorful preview thumbnails when media has not been downloaded yet.
/// * [description] - Alternate text that describes what is in the media attachment, to be used for the visually impaired or when media attachments do not load.
/// * [meta]
/// * [previewUrl] - The location of a scaled-down preview of the attachment.
/// * [remoteUrl] - The location of the full-size original attachment on the remote website.
/// * [url] - The location of the original full-size attachment. Url may be null if the file is still being processed. See [`POST /api/v2/media`]({{< relref \"methods/media\" >}}#v2).
@BuiltValue()
abstract class MediaAttachment
    implements Built<MediaAttachment, MediaAttachmentBuilder> {
  /// The ID of the attachment in the database.
  @BuiltValueField(wireName: r'id')
  String get id;

  /// The type of the attachment.
  @BuiltValueField(wireName: r'type')
  MediaAttachmentTypeEnum get type;
  // enum typeEnum {  unknown,  image,  gifv,  video,  audio,  };

  /// A hash computed by [the BlurHash algorithm](https://github.com/woltapp/blurhash), for generating colorful preview thumbnails when media has not been downloaded yet.
  @BuiltValueField(wireName: r'blurhash')
  String? get blurhash;

  /// Alternate text that describes what is in the media attachment, to be used for the visually impaired or when media attachments do not load.
  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'meta')
  MediaAttachmentMeta? get meta;

  /// The location of a scaled-down preview of the attachment.
  @BuiltValueField(wireName: r'preview_url')
  String? get previewUrl;

  /// The location of the full-size original attachment on the remote website.
  @BuiltValueField(wireName: r'remote_url')
  String? get remoteUrl;

  /// The location of the original full-size attachment. Url may be null if the file is still being processed. See [`POST /api/v2/media`]({{< relref \"methods/media\" >}}#v2).
  @BuiltValueField(wireName: r'url')
  String? get url;

  MediaAttachment._();

  factory MediaAttachment([void updates(MediaAttachmentBuilder b)]) =
      _$MediaAttachment;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MediaAttachmentBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MediaAttachment> get serializer =>
      _$MediaAttachmentSerializer();
}

class _$MediaAttachmentSerializer
    implements PrimitiveSerializer<MediaAttachment> {
  @override
  final Iterable<Type> types = const [MediaAttachment, _$MediaAttachment];

  @override
  final String wireName = r'MediaAttachment';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MediaAttachment object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(MediaAttachmentTypeEnum),
    );
    if (object.blurhash != null) {
      yield r'blurhash';
      yield serializers.serialize(
        object.blurhash,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.meta != null) {
      yield r'meta';
      yield serializers.serialize(
        object.meta,
        specifiedType: const FullType(MediaAttachmentMeta),
      );
    }
    if (object.previewUrl != null) {
      yield r'preview_url';
      yield serializers.serialize(
        object.previewUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.remoteUrl != null) {
      yield r'remote_url';
      yield serializers.serialize(
        object.remoteUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MediaAttachment object, {
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
    required MediaAttachmentBuilder result,
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
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MediaAttachmentTypeEnum),
          ) as MediaAttachmentTypeEnum;
          result.type = valueDes;
          break;
        case r'blurhash':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.blurhash = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'meta':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MediaAttachmentMeta),
          ) as MediaAttachmentMeta;
          result.meta.replace(valueDes);
          break;
        case r'preview_url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.previewUrl = valueDes;
          break;
        case r'remote_url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.remoteUrl = valueDes;
          break;
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
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
  MediaAttachment deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MediaAttachmentBuilder();
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
