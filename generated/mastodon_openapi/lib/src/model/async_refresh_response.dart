//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon_openapi/src/model/async_refresh.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'async_refresh_response.g.dart';

/// Response containing an AsyncRefresh object
///
/// Properties:
/// * [asyncRefresh]
@BuiltValue()
abstract class AsyncRefreshResponse
    implements Built<AsyncRefreshResponse, AsyncRefreshResponseBuilder> {
  @BuiltValueField(wireName: r'async_refresh')
  AsyncRefresh get asyncRefresh;

  AsyncRefreshResponse._();

  factory AsyncRefreshResponse([void updates(AsyncRefreshResponseBuilder b)]) =
      _$AsyncRefreshResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AsyncRefreshResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AsyncRefreshResponse> get serializer =>
      _$AsyncRefreshResponseSerializer();
}

class _$AsyncRefreshResponseSerializer
    implements PrimitiveSerializer<AsyncRefreshResponse> {
  @override
  final Iterable<Type> types = const [
    AsyncRefreshResponse,
    _$AsyncRefreshResponse
  ];

  @override
  final String wireName = r'AsyncRefreshResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AsyncRefreshResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'async_refresh';
    yield serializers.serialize(
      object.asyncRefresh,
      specifiedType: const FullType(AsyncRefresh),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AsyncRefreshResponse object, {
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
    required AsyncRefreshResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'async_refresh':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AsyncRefresh),
          ) as AsyncRefresh;
          result.asyncRefresh.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AsyncRefreshResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AsyncRefreshResponseBuilder();
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
