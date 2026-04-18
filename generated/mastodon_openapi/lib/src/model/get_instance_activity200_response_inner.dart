//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_instance_activity200_response_inner.g.dart';

/// GetInstanceActivity200ResponseInner
///
/// Properties:
/// * [week] - Midnight at the first day of the week.
/// * [statuses] - The number of Statuses created since the week began.
/// * [logins] - The number of user logins since the week began.
/// * [registrations] - The number of user registrations since the week began.
@BuiltValue()
abstract class GetInstanceActivity200ResponseInner
    implements
        Built<GetInstanceActivity200ResponseInner,
            GetInstanceActivity200ResponseInnerBuilder> {
  /// Midnight at the first day of the week.
  @BuiltValueField(wireName: r'week')
  String? get week;

  /// The number of Statuses created since the week began.
  @BuiltValueField(wireName: r'statuses')
  String? get statuses;

  /// The number of user logins since the week began.
  @BuiltValueField(wireName: r'logins')
  String? get logins;

  /// The number of user registrations since the week began.
  @BuiltValueField(wireName: r'registrations')
  String? get registrations;

  GetInstanceActivity200ResponseInner._();

  factory GetInstanceActivity200ResponseInner(
          [void updates(GetInstanceActivity200ResponseInnerBuilder b)]) =
      _$GetInstanceActivity200ResponseInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetInstanceActivity200ResponseInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetInstanceActivity200ResponseInner> get serializer =>
      _$GetInstanceActivity200ResponseInnerSerializer();
}

class _$GetInstanceActivity200ResponseInnerSerializer
    implements PrimitiveSerializer<GetInstanceActivity200ResponseInner> {
  @override
  final Iterable<Type> types = const [
    GetInstanceActivity200ResponseInner,
    _$GetInstanceActivity200ResponseInner
  ];

  @override
  final String wireName = r'GetInstanceActivity200ResponseInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetInstanceActivity200ResponseInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.week != null) {
      yield r'week';
      yield serializers.serialize(
        object.week,
        specifiedType: const FullType(String),
      );
    }
    if (object.statuses != null) {
      yield r'statuses';
      yield serializers.serialize(
        object.statuses,
        specifiedType: const FullType(String),
      );
    }
    if (object.logins != null) {
      yield r'logins';
      yield serializers.serialize(
        object.logins,
        specifiedType: const FullType(String),
      );
    }
    if (object.registrations != null) {
      yield r'registrations';
      yield serializers.serialize(
        object.registrations,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetInstanceActivity200ResponseInner object, {
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
    required GetInstanceActivity200ResponseInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'week':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.week = valueDes;
          break;
        case r'statuses':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.statuses = valueDes;
          break;
        case r'logins':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.logins = valueDes;
          break;
        case r'registrations':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.registrations = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetInstanceActivity200ResponseInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetInstanceActivity200ResponseInnerBuilder();
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
