//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon_openapi/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'terms_of_service.g.dart';

/// Represents the terms of service of the instance.
///
/// Properties:
/// * [content] - The rendered HTML content of the terms of service.
/// * [effective] - Whether these terms of service are currently in effect.
/// * [effectiveDate] - The date these terms of service are coming or have come in effect.
/// * [succeededBy] - If there are newer terms of service, their effective date.
@BuiltValue()
abstract class TermsOfService
    implements Built<TermsOfService, TermsOfServiceBuilder> {
  /// The rendered HTML content of the terms of service.
  @BuiltValueField(wireName: r'content')
  String get content;

  /// Whether these terms of service are currently in effect.
  @BuiltValueField(wireName: r'effective')
  bool get effective;

  /// The date these terms of service are coming or have come in effect.
  @BuiltValueField(wireName: r'effective_date')
  Date get effectiveDate;

  /// If there are newer terms of service, their effective date.
  @BuiltValueField(wireName: r'succeeded_by')
  Date? get succeededBy;

  TermsOfService._();

  factory TermsOfService([void updates(TermsOfServiceBuilder b)]) =
      _$TermsOfService;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TermsOfServiceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TermsOfService> get serializer =>
      _$TermsOfServiceSerializer();
}

class _$TermsOfServiceSerializer
    implements PrimitiveSerializer<TermsOfService> {
  @override
  final Iterable<Type> types = const [TermsOfService, _$TermsOfService];

  @override
  final String wireName = r'TermsOfService';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TermsOfService object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'content';
    yield serializers.serialize(
      object.content,
      specifiedType: const FullType(String),
    );
    yield r'effective';
    yield serializers.serialize(
      object.effective,
      specifiedType: const FullType(bool),
    );
    yield r'effective_date';
    yield serializers.serialize(
      object.effectiveDate,
      specifiedType: const FullType(Date),
    );
    if (object.succeededBy != null) {
      yield r'succeeded_by';
      yield serializers.serialize(
        object.succeededBy,
        specifiedType: const FullType.nullable(Date),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TermsOfService object, {
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
    required TermsOfServiceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'content':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.content = valueDes;
          break;
        case r'effective':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.effective = valueDes;
          break;
        case r'effective_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.effectiveDate = valueDes;
          break;
        case r'succeeded_by':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Date),
          ) as Date?;
          if (valueDes == null) continue;
          result.succeededBy = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TermsOfService deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TermsOfServiceBuilder();
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
