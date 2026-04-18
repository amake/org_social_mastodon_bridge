//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_filter_v2_request_keywords_attributes_inner.g.dart';

/// CreateFilterV2RequestKeywordsAttributesInner
///
/// Properties:
/// * [keyword] - A keyword to be added to the newly-created filter group.
/// * [wholeWord] - Whether the keyword should consider word boundaries.
/// * [id] - Will cause a 404 error if provided.
/// * [destroy] - Will cause the keyword to not be attached if provided.
@BuiltValue()
abstract class CreateFilterV2RequestKeywordsAttributesInner
    implements
        Built<CreateFilterV2RequestKeywordsAttributesInner,
            CreateFilterV2RequestKeywordsAttributesInnerBuilder> {
  /// A keyword to be added to the newly-created filter group.
  @BuiltValueField(wireName: r'keyword')
  String? get keyword;

  /// Whether the keyword should consider word boundaries.
  @BuiltValueField(wireName: r'whole_word')
  bool? get wholeWord;

  /// Will cause a 404 error if provided.
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// Will cause the keyword to not be attached if provided.
  @BuiltValueField(wireName: r'_destroy')
  bool? get destroy;

  CreateFilterV2RequestKeywordsAttributesInner._();

  factory CreateFilterV2RequestKeywordsAttributesInner(
          [void updates(
              CreateFilterV2RequestKeywordsAttributesInnerBuilder b)]) =
      _$CreateFilterV2RequestKeywordsAttributesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
          CreateFilterV2RequestKeywordsAttributesInnerBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateFilterV2RequestKeywordsAttributesInner>
      get serializer =>
          _$CreateFilterV2RequestKeywordsAttributesInnerSerializer();
}

class _$CreateFilterV2RequestKeywordsAttributesInnerSerializer
    implements
        PrimitiveSerializer<CreateFilterV2RequestKeywordsAttributesInner> {
  @override
  final Iterable<Type> types = const [
    CreateFilterV2RequestKeywordsAttributesInner,
    _$CreateFilterV2RequestKeywordsAttributesInner
  ];

  @override
  final String wireName = r'CreateFilterV2RequestKeywordsAttributesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateFilterV2RequestKeywordsAttributesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.keyword != null) {
      yield r'keyword';
      yield serializers.serialize(
        object.keyword,
        specifiedType: const FullType(String),
      );
    }
    if (object.wholeWord != null) {
      yield r'whole_word';
      yield serializers.serialize(
        object.wholeWord,
        specifiedType: const FullType(bool),
      );
    }
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.destroy != null) {
      yield r'_destroy';
      yield serializers.serialize(
        object.destroy,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateFilterV2RequestKeywordsAttributesInner object, {
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
    required CreateFilterV2RequestKeywordsAttributesInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'keyword':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.keyword = valueDes;
          break;
        case r'whole_word':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.wholeWord = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'_destroy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.destroy = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateFilterV2RequestKeywordsAttributesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateFilterV2RequestKeywordsAttributesInnerBuilder();
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
