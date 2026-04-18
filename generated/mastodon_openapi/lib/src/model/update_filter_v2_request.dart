//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:mastodon_openapi/src/model/update_filter_v2_request_keywords_attributes_inner.dart';
import 'package:mastodon_openapi/src/model/filter_context_enum.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_filter_v2_request.g.dart';

/// UpdateFilterV2Request
///
/// Properties:
/// * [context] - Where the filter should be applied. Specify at least one of `home`, `notifications`, `public`, `thread`, `account`.
/// * [expiresIn] - How many seconds from now should the filter expire?
/// * [filterAction] - The policy to be applied when the filter is matched. Specify `warn`, `hide` or `blur`.
/// * [keywordsAttributes] - Array of objects with properties: keyword, whole_word, id, _destroy
/// * [title] - The name of the filter group.
@BuiltValue()
abstract class UpdateFilterV2Request
    implements Built<UpdateFilterV2Request, UpdateFilterV2RequestBuilder> {
  /// Where the filter should be applied. Specify at least one of `home`, `notifications`, `public`, `thread`, `account`.
  @BuiltValueField(wireName: r'context')
  BuiltList<FilterContextEnum>? get context;

  /// How many seconds from now should the filter expire?
  @BuiltValueField(wireName: r'expires_in')
  int? get expiresIn;

  /// The policy to be applied when the filter is matched. Specify `warn`, `hide` or `blur`.
  @BuiltValueField(wireName: r'filter_action')
  String? get filterAction;

  /// Array of objects with properties: keyword, whole_word, id, _destroy
  @BuiltValueField(wireName: r'keywords_attributes')
  BuiltList<UpdateFilterV2RequestKeywordsAttributesInner>?
      get keywordsAttributes;

  /// The name of the filter group.
  @BuiltValueField(wireName: r'title')
  String? get title;

  UpdateFilterV2Request._();

  factory UpdateFilterV2Request(
      [void updates(UpdateFilterV2RequestBuilder b)]) = _$UpdateFilterV2Request;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateFilterV2RequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateFilterV2Request> get serializer =>
      _$UpdateFilterV2RequestSerializer();
}

class _$UpdateFilterV2RequestSerializer
    implements PrimitiveSerializer<UpdateFilterV2Request> {
  @override
  final Iterable<Type> types = const [
    UpdateFilterV2Request,
    _$UpdateFilterV2Request
  ];

  @override
  final String wireName = r'UpdateFilterV2Request';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateFilterV2Request object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.context != null) {
      yield r'context';
      yield serializers.serialize(
        object.context,
        specifiedType: const FullType(BuiltList, [FullType(FilterContextEnum)]),
      );
    }
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
            [FullType(UpdateFilterV2RequestKeywordsAttributesInner)]),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateFilterV2Request object, {
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
    required UpdateFilterV2RequestBuilder result,
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
                [FullType(UpdateFilterV2RequestKeywordsAttributesInner)]),
          ) as BuiltList<UpdateFilterV2RequestKeywordsAttributesInner>;
          result.keywordsAttributes.replace(valueDes);
          break;
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
  UpdateFilterV2Request deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateFilterV2RequestBuilder();
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
