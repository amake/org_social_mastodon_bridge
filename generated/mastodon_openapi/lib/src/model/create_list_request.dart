//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon_openapi/src/model/list_replies_policy_enum.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_list_request.g.dart';

/// CreateListRequest
///
/// Properties:
/// * [title] - The title of the list to be created.
/// * [exclusive] - Whether members of this list need to get removed from the “Home” feed.
/// * [repliesPolicy] - One of `followed`, `list`, or `none`. Defaults to `list`.
@BuiltValue()
abstract class CreateListRequest
    implements Built<CreateListRequest, CreateListRequestBuilder> {
  /// The title of the list to be created.
  @BuiltValueField(wireName: r'title')
  String get title;

  /// Whether members of this list need to get removed from the “Home” feed.
  @BuiltValueField(wireName: r'exclusive')
  bool? get exclusive;

  /// One of `followed`, `list`, or `none`. Defaults to `list`.
  @BuiltValueField(wireName: r'replies_policy')
  ListRepliesPolicyEnum? get repliesPolicy;
  // enum repliesPolicyEnum {  followed,  list,  none,  };

  CreateListRequest._();

  factory CreateListRequest([void updates(CreateListRequestBuilder b)]) =
      _$CreateListRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateListRequestBuilder b) =>
      b..repliesPolicy = ListRepliesPolicyEnum.list;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateListRequest> get serializer =>
      _$CreateListRequestSerializer();
}

class _$CreateListRequestSerializer
    implements PrimitiveSerializer<CreateListRequest> {
  @override
  final Iterable<Type> types = const [CreateListRequest, _$CreateListRequest];

  @override
  final String wireName = r'CreateListRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateListRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    if (object.exclusive != null) {
      yield r'exclusive';
      yield serializers.serialize(
        object.exclusive,
        specifiedType: const FullType(bool),
      );
    }
    if (object.repliesPolicy != null) {
      yield r'replies_policy';
      yield serializers.serialize(
        object.repliesPolicy,
        specifiedType: const FullType(ListRepliesPolicyEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateListRequest object, {
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
    required CreateListRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'exclusive':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.exclusive = valueDes;
          break;
        case r'replies_policy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ListRepliesPolicyEnum),
          ) as ListRepliesPolicyEnum;
          result.repliesPolicy = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateListRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateListRequestBuilder();
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
