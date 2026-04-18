//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'marker.g.dart';

/// Represents the last read position within a user's timelines.
///
/// Properties:
/// * [lastReadId] - The ID of the most recently viewed entity.
/// * [updatedAt] - The timestamp of when the marker was set.
/// * [version] - An incrementing counter, used for locking to prevent write conflicts.
@BuiltValue()
abstract class Marker implements Built<Marker, MarkerBuilder> {
  /// The ID of the most recently viewed entity.
  @BuiltValueField(wireName: r'last_read_id')
  String get lastReadId;

  /// The timestamp of when the marker was set.
  @BuiltValueField(wireName: r'updated_at')
  DateTime get updatedAt;

  /// An incrementing counter, used for locking to prevent write conflicts.
  @BuiltValueField(wireName: r'version')
  int get version;

  Marker._();

  factory Marker([void updates(MarkerBuilder b)]) = _$Marker;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MarkerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Marker> get serializer => _$MarkerSerializer();
}

class _$MarkerSerializer implements PrimitiveSerializer<Marker> {
  @override
  final Iterable<Type> types = const [Marker, _$Marker];

  @override
  final String wireName = r'Marker';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Marker object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'last_read_id';
    yield serializers.serialize(
      object.lastReadId,
      specifiedType: const FullType(String),
    );
    yield r'updated_at';
    yield serializers.serialize(
      object.updatedAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'version';
    yield serializers.serialize(
      object.version,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Marker object, {
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
    required MarkerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'last_read_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.lastReadId = valueDes;
          break;
        case r'updated_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.updatedAt = valueDes;
          break;
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.version = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Marker deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MarkerBuilder();
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
