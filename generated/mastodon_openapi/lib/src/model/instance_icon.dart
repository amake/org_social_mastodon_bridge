//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'instance_icon.g.dart';

/// Additional entity definition for InstanceIcon
///
/// Properties:
/// * [size] - The size of this icon.
/// * [src] - The URL of this icon.
@BuiltValue()
abstract class InstanceIcon
    implements Built<InstanceIcon, InstanceIconBuilder> {
  /// The size of this icon.
  @BuiltValueField(wireName: r'size')
  String get size;

  /// The URL of this icon.
  @BuiltValueField(wireName: r'src')
  String get src;

  InstanceIcon._();

  factory InstanceIcon([void updates(InstanceIconBuilder b)]) = _$InstanceIcon;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InstanceIconBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InstanceIcon> get serializer => _$InstanceIconSerializer();
}

class _$InstanceIconSerializer implements PrimitiveSerializer<InstanceIcon> {
  @override
  final Iterable<Type> types = const [InstanceIcon, _$InstanceIcon];

  @override
  final String wireName = r'InstanceIcon';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InstanceIcon object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'size';
    yield serializers.serialize(
      object.size,
      specifiedType: const FullType(String),
    );
    yield r'src';
    yield serializers.serialize(
      object.src,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    InstanceIcon object, {
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
    required InstanceIconBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.size = valueDes;
          break;
        case r'src':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.src = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InstanceIcon deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceIconBuilder();
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
