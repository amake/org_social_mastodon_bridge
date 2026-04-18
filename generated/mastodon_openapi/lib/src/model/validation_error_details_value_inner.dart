//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'validation_error_details_value_inner.g.dart';

/// ValidationErrorDetailsValueInner
///
/// Properties:
/// * [error] - The error code (e.g., ERR_BLANK, ERR_INVALID).
/// * [description] - Human-readable description of the error.
@BuiltValue()
abstract class ValidationErrorDetailsValueInner
    implements
        Built<ValidationErrorDetailsValueInner,
            ValidationErrorDetailsValueInnerBuilder> {
  /// The error code (e.g., ERR_BLANK, ERR_INVALID).
  @BuiltValueField(wireName: r'error')
  String get error;

  /// Human-readable description of the error.
  @BuiltValueField(wireName: r'description')
  String get description;

  ValidationErrorDetailsValueInner._();

  factory ValidationErrorDetailsValueInner(
          [void updates(ValidationErrorDetailsValueInnerBuilder b)]) =
      _$ValidationErrorDetailsValueInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ValidationErrorDetailsValueInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ValidationErrorDetailsValueInner> get serializer =>
      _$ValidationErrorDetailsValueInnerSerializer();
}

class _$ValidationErrorDetailsValueInnerSerializer
    implements PrimitiveSerializer<ValidationErrorDetailsValueInner> {
  @override
  final Iterable<Type> types = const [
    ValidationErrorDetailsValueInner,
    _$ValidationErrorDetailsValueInner
  ];

  @override
  final String wireName = r'ValidationErrorDetailsValueInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ValidationErrorDetailsValueInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'error';
    yield serializers.serialize(
      object.error,
      specifiedType: const FullType(String),
    );
    yield r'description';
    yield serializers.serialize(
      object.description,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ValidationErrorDetailsValueInner object, {
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
    required ValidationErrorDetailsValueInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'error':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.error = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ValidationErrorDetailsValueInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ValidationErrorDetailsValueInnerBuilder();
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
