//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'status_application.g.dart';

/// The application used to post this status.
///
/// Properties:
/// * [name] - The name of the application that posted this status.
/// * [website] - The website associated with the application that posted this status.
@BuiltValue()
abstract class StatusApplication
    implements Built<StatusApplication, StatusApplicationBuilder> {
  /// The name of the application that posted this status.
  @BuiltValueField(wireName: r'name')
  String get name;

  /// The website associated with the application that posted this status.
  @BuiltValueField(wireName: r'website')
  String? get website;

  StatusApplication._();

  factory StatusApplication([void updates(StatusApplicationBuilder b)]) =
      _$StatusApplication;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StatusApplicationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StatusApplication> get serializer =>
      _$StatusApplicationSerializer();
}

class _$StatusApplicationSerializer
    implements PrimitiveSerializer<StatusApplication> {
  @override
  final Iterable<Type> types = const [StatusApplication, _$StatusApplication];

  @override
  final String wireName = r'StatusApplication';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StatusApplication object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.website != null) {
      yield r'website';
      yield serializers.serialize(
        object.website,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    StatusApplication object, {
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
    required StatusApplicationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'website':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.website = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StatusApplication deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StatusApplicationBuilder();
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
