//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'merged_response.g.dart';

/// Response containing a merged value
///
/// Properties:
/// * [merged]
@BuiltValue()
abstract class MergedResponse
    implements Built<MergedResponse, MergedResponseBuilder> {
  @BuiltValueField(wireName: r'merged')
  bool get merged;

  MergedResponse._();

  factory MergedResponse([void updates(MergedResponseBuilder b)]) =
      _$MergedResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MergedResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MergedResponse> get serializer =>
      _$MergedResponseSerializer();
}

class _$MergedResponseSerializer
    implements PrimitiveSerializer<MergedResponse> {
  @override
  final Iterable<Type> types = const [MergedResponse, _$MergedResponse];

  @override
  final String wireName = r'MergedResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MergedResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'merged';
    yield serializers.serialize(
      object.merged,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    MergedResponse object, {
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
    required MergedResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'merged':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.merged = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MergedResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MergedResponseBuilder();
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
