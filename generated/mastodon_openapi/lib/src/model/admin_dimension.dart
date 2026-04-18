//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:mastodon_openapi/src/model/admin_dimension_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'admin_dimension.g.dart';

/// Represents qualitative data about the server.
///
/// Properties:
/// * [data] - The data available for the requested dimension.
/// * [key] - The unique keystring for the requested dimension.
@BuiltValue()
abstract class AdminDimension
    implements Built<AdminDimension, AdminDimensionBuilder> {
  /// The data available for the requested dimension.
  @BuiltValueField(wireName: r'data')
  BuiltList<AdminDimensionData> get data;

  /// The unique keystring for the requested dimension.
  @BuiltValueField(wireName: r'key')
  String get key;

  AdminDimension._();

  factory AdminDimension([void updates(AdminDimensionBuilder b)]) =
      _$AdminDimension;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AdminDimensionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AdminDimension> get serializer =>
      _$AdminDimensionSerializer();
}

class _$AdminDimensionSerializer
    implements PrimitiveSerializer<AdminDimension> {
  @override
  final Iterable<Type> types = const [AdminDimension, _$AdminDimension];

  @override
  final String wireName = r'AdminDimension';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AdminDimension object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(BuiltList, [FullType(AdminDimensionData)]),
    );
    yield r'key';
    yield serializers.serialize(
      object.key,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AdminDimension object, {
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
    required AdminDimensionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(AdminDimensionData)]),
          ) as BuiltList<AdminDimensionData>;
          result.data.replace(valueDes);
          break;
        case r'key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.key = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AdminDimension deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AdminDimensionBuilder();
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
