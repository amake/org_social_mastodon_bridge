//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'status_source.g.dart';

/// Represents a status's source as plain text.
///
/// Properties:
/// * [id] - ID of the status in the database.
/// * [spoilerText] - The plain text used to compose the status's subject or content warning.
/// * [text] - The plain text used to compose the status.
@BuiltValue()
abstract class StatusSource
    implements Built<StatusSource, StatusSourceBuilder> {
  /// ID of the status in the database.
  @BuiltValueField(wireName: r'id')
  String get id;

  /// The plain text used to compose the status's subject or content warning.
  @BuiltValueField(wireName: r'spoiler_text')
  String get spoilerText;

  /// The plain text used to compose the status.
  @BuiltValueField(wireName: r'text')
  String get text;

  StatusSource._();

  factory StatusSource([void updates(StatusSourceBuilder b)]) = _$StatusSource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StatusSourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StatusSource> get serializer => _$StatusSourceSerializer();
}

class _$StatusSourceSerializer implements PrimitiveSerializer<StatusSource> {
  @override
  final Iterable<Type> types = const [StatusSource, _$StatusSource];

  @override
  final String wireName = r'StatusSource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StatusSource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'spoiler_text';
    yield serializers.serialize(
      object.spoilerText,
      specifiedType: const FullType(String),
    );
    yield r'text';
    yield serializers.serialize(
      object.text,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    StatusSource object, {
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
    required StatusSourceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'spoiler_text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.spoilerText = valueDes;
          break;
        case r'text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.text = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StatusSource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StatusSourceBuilder();
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
