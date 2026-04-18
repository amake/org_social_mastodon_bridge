//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:mastodon_openapi/src/model/filter_context_enum.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_filter_request.g.dart';

/// CreateFilterRequest
///
/// Properties:
/// * [context] - Where the filter should be applied. Specify at least one of `home`, `notifications`, `public`, `thread`, `account`.
/// * [phrase] - The text to be filtered.
/// * [expiresIn] - Number of seconds from now that the filter should expire. Otherwise, `null` for a filter that doesn't expire.
/// * [irreversible] - Should the server irreversibly drop matching entities from home and notifications? Defaults to false.
/// * [wholeWord] - Should the filter consider word boundaries for this keyword? Defaults to false.
@BuiltValue()
abstract class CreateFilterRequest
    implements Built<CreateFilterRequest, CreateFilterRequestBuilder> {
  /// Where the filter should be applied. Specify at least one of `home`, `notifications`, `public`, `thread`, `account`.
  @BuiltValueField(wireName: r'context')
  BuiltList<FilterContextEnum> get context;

  /// The text to be filtered.
  @BuiltValueField(wireName: r'phrase')
  String get phrase;

  /// Number of seconds from now that the filter should expire. Otherwise, `null` for a filter that doesn't expire.
  @BuiltValueField(wireName: r'expires_in')
  int? get expiresIn;

  /// Should the server irreversibly drop matching entities from home and notifications? Defaults to false.
  @BuiltValueField(wireName: r'irreversible')
  bool? get irreversible;

  /// Should the filter consider word boundaries for this keyword? Defaults to false.
  @BuiltValueField(wireName: r'whole_word')
  bool? get wholeWord;

  CreateFilterRequest._();

  factory CreateFilterRequest([void updates(CreateFilterRequestBuilder b)]) =
      _$CreateFilterRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateFilterRequestBuilder b) => b
    ..irreversible = false
    ..wholeWord = false;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateFilterRequest> get serializer =>
      _$CreateFilterRequestSerializer();
}

class _$CreateFilterRequestSerializer
    implements PrimitiveSerializer<CreateFilterRequest> {
  @override
  final Iterable<Type> types = const [
    CreateFilterRequest,
    _$CreateFilterRequest
  ];

  @override
  final String wireName = r'CreateFilterRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateFilterRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'context';
    yield serializers.serialize(
      object.context,
      specifiedType: const FullType(BuiltList, [FullType(FilterContextEnum)]),
    );
    yield r'phrase';
    yield serializers.serialize(
      object.phrase,
      specifiedType: const FullType(String),
    );
    if (object.expiresIn != null) {
      yield r'expires_in';
      yield serializers.serialize(
        object.expiresIn,
        specifiedType: const FullType(int),
      );
    }
    if (object.irreversible != null) {
      yield r'irreversible';
      yield serializers.serialize(
        object.irreversible,
        specifiedType: const FullType(bool),
      );
    }
    if (object.wholeWord != null) {
      yield r'whole_word';
      yield serializers.serialize(
        object.wholeWord,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateFilterRequest object, {
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
    required CreateFilterRequestBuilder result,
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
        case r'phrase':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.phrase = valueDes;
          break;
        case r'expires_in':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.expiresIn = valueDes;
          break;
        case r'irreversible':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.irreversible = valueDes;
          break;
        case r'whole_word':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.wholeWord = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateFilterRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateFilterRequestBuilder();
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
