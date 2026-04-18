//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon_openapi/src/model/list_replies_policy_enum.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'model_list.g.dart';

/// Represents a list of some users that the authenticated user follows.
///
/// Properties:
/// * [exclusive] - Whether members of the list should be removed from the “Home” feed.
/// * [id] - The ID of the list.
/// * [repliesPolicy] - Which replies should be shown in the list.
/// * [title] - The user-defined title of the list.
@BuiltValue()
abstract class ModelList implements Built<ModelList, ModelListBuilder> {
  /// Whether members of the list should be removed from the “Home” feed.
  @BuiltValueField(wireName: r'exclusive')
  bool get exclusive;

  /// The ID of the list.
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Which replies should be shown in the list.
  @BuiltValueField(wireName: r'replies_policy')
  ListRepliesPolicyEnum get repliesPolicy;
  // enum repliesPolicyEnum {  followed,  list,  none,  };

  /// The user-defined title of the list.
  @BuiltValueField(wireName: r'title')
  String get title;

  ModelList._();

  factory ModelList([void updates(ModelListBuilder b)]) = _$ModelList;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ModelListBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ModelList> get serializer => _$ModelListSerializer();
}

class _$ModelListSerializer implements PrimitiveSerializer<ModelList> {
  @override
  final Iterable<Type> types = const [ModelList, _$ModelList];

  @override
  final String wireName = r'ModelList';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ModelList object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'exclusive';
    yield serializers.serialize(
      object.exclusive,
      specifiedType: const FullType(bool),
    );
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'replies_policy';
    yield serializers.serialize(
      object.repliesPolicy,
      specifiedType: const FullType(ListRepliesPolicyEnum),
    );
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ModelList object, {
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
    required ModelListBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'exclusive':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.exclusive = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'replies_policy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ListRepliesPolicyEnum),
          ) as ListRepliesPolicyEnum;
          result.repliesPolicy = valueDes;
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
  ModelList deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModelListBuilder();
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
