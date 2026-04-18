//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_marker_request_home.g.dart';

/// Object containing properties
///
/// Properties:
/// * [lastReadId] - ID of the last status read in the home timeline.
@BuiltValue()
abstract class CreateMarkerRequestHome
    implements Built<CreateMarkerRequestHome, CreateMarkerRequestHomeBuilder> {
  /// ID of the last status read in the home timeline.
  @BuiltValueField(wireName: r'last_read_id')
  String? get lastReadId;

  CreateMarkerRequestHome._();

  factory CreateMarkerRequestHome(
          [void updates(CreateMarkerRequestHomeBuilder b)]) =
      _$CreateMarkerRequestHome;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateMarkerRequestHomeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateMarkerRequestHome> get serializer =>
      _$CreateMarkerRequestHomeSerializer();
}

class _$CreateMarkerRequestHomeSerializer
    implements PrimitiveSerializer<CreateMarkerRequestHome> {
  @override
  final Iterable<Type> types = const [
    CreateMarkerRequestHome,
    _$CreateMarkerRequestHome
  ];

  @override
  final String wireName = r'CreateMarkerRequestHome';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateMarkerRequestHome object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.lastReadId != null) {
      yield r'last_read_id';
      yield serializers.serialize(
        object.lastReadId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateMarkerRequestHome object, {
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
    required CreateMarkerRequestHomeBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateMarkerRequestHome deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateMarkerRequestHomeBuilder();
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
