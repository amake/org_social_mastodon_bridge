//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:mastodon_openapi/src/model/preview_card_author.dart';
import 'package:mastodon_openapi/src/model/trends_link_history_inner.dart';
import 'package:mastodon_openapi/src/model/trends_link_type_enum.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'trends_link.g.dart';

/// Additional entity definition for Trends::Link
///
/// Properties:
/// * [description] - Description of preview.
/// * [embedUrl] - Used for photo embeds, instead of custom `html`.
/// * [height] - Height of preview, in pixels.
/// * [history] - Usage statistics for given days (typically the past week).
/// * [html] - HTML to be used for generating the preview card.
/// * [providerName] - The provider of the original resource.
/// * [providerUrl] - A link to the provider of the original resource.
/// * [title] - Title of linked resource.
/// * [type] - The type of the preview card.
/// * [url] - Location of linked resource.
/// * [width] - Width of preview, in pixels.
/// * [authorName] - The author of the original resource. Deprecated since 4.3.0, clients should use `authors` instead.
/// * [authorUrl] - A link to the author of the original resource. Deprecated since 4.3.0, clients should use `authors` instead.
/// * [authors] - Fediverse account of the authors of the original resource.
/// * [blurhash] - A hash computed by [the BlurHash algorithm](https://github.com/woltapp/blurhash), for generating colorful preview thumbnails when media has not been downloaded yet.
/// * [image] - Preview thumbnail.
/// * [missingAttribution] - True if the linked article claims to be written by the current user without the user having the article's domain in their [`attribution_domains`]({{< relref \"entities/Account#source[attribution_domains]\" >}})). This is used to prompt them to review and add the domain.
@BuiltValue()
abstract class TrendsLink implements Built<TrendsLink, TrendsLinkBuilder> {
  /// Description of preview.
  @BuiltValueField(wireName: r'description')
  String get description;

  /// Used for photo embeds, instead of custom `html`.
  @BuiltValueField(wireName: r'embed_url')
  String get embedUrl;

  /// Height of preview, in pixels.
  @BuiltValueField(wireName: r'height')
  int get height;

  /// Usage statistics for given days (typically the past week).
  @BuiltValueField(wireName: r'history')
  BuiltList<TrendsLinkHistoryInner> get history;

  /// HTML to be used for generating the preview card.
  @BuiltValueField(wireName: r'html')
  String get html;

  /// The provider of the original resource.
  @BuiltValueField(wireName: r'provider_name')
  String get providerName;

  /// A link to the provider of the original resource.
  @BuiltValueField(wireName: r'provider_url')
  String get providerUrl;

  /// Title of linked resource.
  @BuiltValueField(wireName: r'title')
  String get title;

  /// The type of the preview card.
  @BuiltValueField(wireName: r'type')
  TrendsLinkTypeEnum get type;
  // enum typeEnum {  link,  photo,  video,  rich,  };

  /// Location of linked resource.
  @BuiltValueField(wireName: r'url')
  String get url;

  /// Width of preview, in pixels.
  @BuiltValueField(wireName: r'width')
  int get width;

  /// The author of the original resource. Deprecated since 4.3.0, clients should use `authors` instead.
  @BuiltValueField(wireName: r'author_name')
  String? get authorName;

  /// A link to the author of the original resource. Deprecated since 4.3.0, clients should use `authors` instead.
  @BuiltValueField(wireName: r'author_url')
  String? get authorUrl;

  /// Fediverse account of the authors of the original resource.
  @BuiltValueField(wireName: r'authors')
  BuiltList<PreviewCardAuthor>? get authors;

  /// A hash computed by [the BlurHash algorithm](https://github.com/woltapp/blurhash), for generating colorful preview thumbnails when media has not been downloaded yet.
  @BuiltValueField(wireName: r'blurhash')
  String? get blurhash;

  /// Preview thumbnail.
  @BuiltValueField(wireName: r'image')
  String? get image;

  /// True if the linked article claims to be written by the current user without the user having the article's domain in their [`attribution_domains`]({{< relref \"entities/Account#source[attribution_domains]\" >}})). This is used to prompt them to review and add the domain.
  @BuiltValueField(wireName: r'missing_attribution')
  bool? get missingAttribution;

  TrendsLink._();

  factory TrendsLink([void updates(TrendsLinkBuilder b)]) = _$TrendsLink;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TrendsLinkBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TrendsLink> get serializer => _$TrendsLinkSerializer();
}

class _$TrendsLinkSerializer implements PrimitiveSerializer<TrendsLink> {
  @override
  final Iterable<Type> types = const [TrendsLink, _$TrendsLink];

  @override
  final String wireName = r'TrendsLink';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TrendsLink object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'description';
    yield serializers.serialize(
      object.description,
      specifiedType: const FullType(String),
    );
    yield r'embed_url';
    yield serializers.serialize(
      object.embedUrl,
      specifiedType: const FullType(String),
    );
    yield r'height';
    yield serializers.serialize(
      object.height,
      specifiedType: const FullType(int),
    );
    yield r'history';
    yield serializers.serialize(
      object.history,
      specifiedType:
          const FullType(BuiltList, [FullType(TrendsLinkHistoryInner)]),
    );
    yield r'html';
    yield serializers.serialize(
      object.html,
      specifiedType: const FullType(String),
    );
    yield r'provider_name';
    yield serializers.serialize(
      object.providerName,
      specifiedType: const FullType(String),
    );
    yield r'provider_url';
    yield serializers.serialize(
      object.providerUrl,
      specifiedType: const FullType(String),
    );
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(TrendsLinkTypeEnum),
    );
    yield r'url';
    yield serializers.serialize(
      object.url,
      specifiedType: const FullType(String),
    );
    yield r'width';
    yield serializers.serialize(
      object.width,
      specifiedType: const FullType(int),
    );
    if (object.authorName != null) {
      yield r'author_name';
      yield serializers.serialize(
        object.authorName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.authorUrl != null) {
      yield r'author_url';
      yield serializers.serialize(
        object.authorUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.authors != null) {
      yield r'authors';
      yield serializers.serialize(
        object.authors,
        specifiedType:
            const FullType.nullable(BuiltList, [FullType(PreviewCardAuthor)]),
      );
    }
    if (object.blurhash != null) {
      yield r'blurhash';
      yield serializers.serialize(
        object.blurhash,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.image != null) {
      yield r'image';
      yield serializers.serialize(
        object.image,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.missingAttribution != null) {
      yield r'missing_attribution';
      yield serializers.serialize(
        object.missingAttribution,
        specifiedType: const FullType.nullable(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TrendsLink object, {
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
    required TrendsLinkBuilder result,
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
        case r'embed_url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.embedUrl = valueDes;
          break;
        case r'height':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.height = valueDes;
          break;
        case r'history':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(TrendsLinkHistoryInner)]),
          ) as BuiltList<TrendsLinkHistoryInner>;
          result.history.replace(valueDes);
          break;
        case r'html':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.html = valueDes;
          break;
        case r'provider_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.providerName = valueDes;
          break;
        case r'provider_url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.providerUrl = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TrendsLinkTypeEnum),
          ) as TrendsLinkTypeEnum;
          result.type = valueDes;
          break;
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.url = valueDes;
          break;
        case r'width':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.width = valueDes;
          break;
        case r'author_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.authorName = valueDes;
          break;
        case r'author_url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.authorUrl = valueDes;
          break;
        case r'authors':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(PreviewCardAuthor)]),
          ) as BuiltList<PreviewCardAuthor>?;
          if (valueDes == null) continue;
          result.authors.replace(valueDes);
          break;
        case r'blurhash':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.blurhash = valueDes;
          break;
        case r'image':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.image = valueDes;
          break;
        case r'missing_attribution':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.missingAttribution = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TrendsLink deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TrendsLinkBuilder();
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
