//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_filter_v2_request_keywords_attributes_inner.g.dart';

/// UpdateFilterV2RequestKeywordsAttributesInner
///
/// Properties:
/// * [keyword] - A keyword to be added to the newly-created filter group.
/// * [wholeWord] - Whether the keyword should consider word boundaries.
/// * [id] - Provide the ID of an existing keyword to modify it, instead of creating a new keyword.
/// * [destroy] - If true, will remove the keyword with the given ID.
@BuiltValue()
abstract class UpdateFilterV2RequestKeywordsAttributesInner
    implements
        Built<UpdateFilterV2RequestKeywordsAttributesInner,
            UpdateFilterV2RequestKeywordsAttributesInnerBuilder> {
  /// A keyword to be added to the newly-created filter group.
  @BuiltValueField(wireName: r'keyword')
  String? get keyword;

  /// Whether the keyword should consider word boundaries.
  @BuiltValueField(wireName: r'whole_word')
  bool? get wholeWord;

  /// Provide the ID of an existing keyword to modify it, instead of creating a new keyword.
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// If true, will remove the keyword with the given ID.
  @BuiltValueField(wireName: r'_destroy')
  bool? get destroy;

  UpdateFilterV2RequestKeywordsAttributesInner._();

  factory UpdateFilterV2RequestKeywordsAttributesInner(
          [void updates(
              UpdateFilterV2RequestKeywordsAttributesInnerBuilder b)]) =
      _$UpdateFilterV2RequestKeywordsAttributesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
          UpdateFilterV2RequestKeywordsAttributesInnerBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateFilterV2RequestKeywordsAttributesInner>
      get serializer =>
          _$UpdateFilterV2RequestKeywordsAttributesInnerSerializer();
}

class _$UpdateFilterV2RequestKeywordsAttributesInnerSerializer
    implements
        PrimitiveSerializer<UpdateFilterV2RequestKeywordsAttributesInner> {
  @override
  final Iterable<Type> types = const [
    UpdateFilterV2RequestKeywordsAttributesInner,
    _$UpdateFilterV2RequestKeywordsAttributesInner
  ];

  @override
  final String wireName = r'UpdateFilterV2RequestKeywordsAttributesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateFilterV2RequestKeywordsAttributesInner object, {
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
    UpdateFilterV2RequestKeywordsAttributesInner object, {
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
    required UpdateFilterV2RequestKeywordsAttributesInnerBuilder result,
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
  UpdateFilterV2RequestKeywordsAttributesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateFilterV2RequestKeywordsAttributesInnerBuilder();
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
