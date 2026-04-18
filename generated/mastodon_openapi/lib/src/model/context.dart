//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:mastodon_openapi/src/model/status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'context.g.dart';

/// Represents the tree around a given status. Used for reconstructing threads of statuses.
///
/// Properties:
/// * [ancestors] - Parents in the thread.
/// * [descendants] - Children in the thread.
@BuiltValue()
abstract class Context implements Built<Context, ContextBuilder> {
  /// Parents in the thread.
  @BuiltValueField(wireName: r'ancestors')
  BuiltList<Status> get ancestors;

  /// Children in the thread.
  @BuiltValueField(wireName: r'descendants')
  BuiltList<Status> get descendants;

  Context._();

  factory Context([void updates(ContextBuilder b)]) = _$Context;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ContextBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Context> get serializer => _$ContextSerializer();
}

class _$ContextSerializer implements PrimitiveSerializer<Context> {
  @override
  final Iterable<Type> types = const [Context, _$Context];

  @override
  final String wireName = r'Context';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Context object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ancestors';
    yield serializers.serialize(
      object.ancestors,
      specifiedType: const FullType(BuiltList, [FullType(Status)]),
    );
    yield r'descendants';
    yield serializers.serialize(
      object.descendants,
      specifiedType: const FullType(BuiltList, [FullType(Status)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Context object, {
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
    required ContextBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ancestors':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Status)]),
          ) as BuiltList<Status>;
          result.ancestors.replace(valueDes);
          break;
        case r'descendants':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Status)]),
          ) as BuiltList<Status>;
          result.descendants.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Context deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ContextBuilder();
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
