//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:mastodon_openapi/src/model/create_filter_v2_request_keywords_attributes_inner.dart';
import 'package:mastodon_openapi/src/model/filter_context_enum.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_filter_v2_request.g.dart';

/// CreateFilterV2Request
///
/// Properties:
/// * [context] - Where the filter should be applied. Specify at least one of `home`, `notifications`, `public`, `thread`, `account`.
/// * [title] - The name of the filter group.
/// * [expiresIn] - How many seconds from now should the filter expire? Defaults to never expire.
/// * [filterAction] - The policy to be applied when the filter is matched. Specify `warn`, `hide` or `blur`.
/// * [keywordsAttributes] - Array of objects with properties: keyword, whole_word, id, _destroy
@BuiltValue()
abstract class CreateFilterV2Request
    implements Built<CreateFilterV2Request, CreateFilterV2RequestBuilder> {
  /// Where the filter should be applied. Specify at least one of `home`, `notifications`, `public`, `thread`, `account`.
  @BuiltValueField(wireName: r'context')
  BuiltList<FilterContextEnum> get context;

  /// The name of the filter group.
  @BuiltValueField(wireName: r'title')
  String get title;

  /// How many seconds from now should the filter expire? Defaults to never expire.
  @BuiltValueField(wireName: r'expires_in')
  int? get expiresIn;

  /// The policy to be applied when the filter is matched. Specify `warn`, `hide` or `blur`.
  @BuiltValueField(wireName: r'filter_action')
  String? get filterAction;

  /// Array of objects with properties: keyword, whole_word, id, _destroy
  @BuiltValueField(wireName: r'keywords_attributes')
  BuiltList<CreateFilterV2RequestKeywordsAttributesInner>?
      get keywordsAttributes;

  CreateFilterV2Request._();

  factory CreateFilterV2Request(
      [void updates(CreateFilterV2RequestBuilder b)]) = _$CreateFilterV2Request;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateFilterV2RequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateFilterV2Request> get serializer =>
      _$CreateFilterV2RequestSerializer();
}

class _$CreateFilterV2RequestSerializer
    implements PrimitiveSerializer<CreateFilterV2Request> {
  @override
  final Iterable<Type> types = const [
    CreateFilterV2Request,
    _$CreateFilterV2Request
  ];

  @override
  final String wireName = r'CreateFilterV2Request';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateFilterV2Request object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'context';
    yield serializers.serialize(
      object.context,
      specifiedType: const FullType(BuiltList, [FullType(FilterContextEnum)]),
    );
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    if (object.expiresIn != null) {
      yield r'expires_in';
      yield serializers.serialize(
        object.expiresIn,
        specifiedType: const FullType(int),
      );
    }
    if (object.filterAction != null) {
      yield r'filter_action';
      yield serializers.serialize(
        object.filterAction,
        specifiedType: const FullType(String),
      );
    }
    if (object.keywordsAttributes != null) {
      yield r'keywords_attributes';
      yield serializers.serialize(
        object.keywordsAttributes,
        specifiedType: const FullType(BuiltList,
            [FullType(CreateFilterV2RequestKeywordsAttributesInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateFilterV2Request object, {
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
    required CreateFilterV2RequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'context':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(FilterContextEnum)]),
          ) as BuiltList<FilterContextEnum>;
          result.context.replace(valueDes);
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'expires_in':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.expiresIn = valueDes;
          break;
        case r'filter_action':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.filterAction = valueDes;
          break;
        case r'keywords_attributes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList,
                [FullType(CreateFilterV2RequestKeywordsAttributesInner)]),
          ) as BuiltList<CreateFilterV2RequestKeywordsAttributesInner>;
          result.keywordsAttributes.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateFilterV2Request deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateFilterV2RequestBuilder();
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
