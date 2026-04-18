//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon_openapi/src/model/async_refresh_status_enum.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'async_refresh.g.dart';

/// Status of an asynchronous refresh.
///
/// Properties:
/// * [id] - The ID of the async refresh
/// * [status] - Status of the async refresh.
/// * [resultCount] - Optional number of results already created/fetched as part of this async refresh.
@BuiltValue()
abstract class AsyncRefresh
    implements Built<AsyncRefresh, AsyncRefreshBuilder> {
  /// The ID of the async refresh
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Status of the async refresh.
  @BuiltValueField(wireName: r'status')
  AsyncRefreshStatusEnum get status;
  // enum statusEnum {  running,  finished,  };

  /// Optional number of results already created/fetched as part of this async refresh.
  @BuiltValueField(wireName: r'result_count')
  int? get resultCount;

  AsyncRefresh._();

  factory AsyncRefresh([void updates(AsyncRefreshBuilder b)]) = _$AsyncRefresh;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AsyncRefreshBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AsyncRefresh> get serializer => _$AsyncRefreshSerializer();
}

class _$AsyncRefreshSerializer implements PrimitiveSerializer<AsyncRefresh> {
  @override
  final Iterable<Type> types = const [AsyncRefresh, _$AsyncRefresh];

  @override
  final String wireName = r'AsyncRefresh';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AsyncRefresh object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(AsyncRefreshStatusEnum),
    );
    if (object.resultCount != null) {
      yield r'result_count';
      yield serializers.serialize(
        object.resultCount,
        specifiedType: const FullType.nullable(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AsyncRefresh object, {
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
    required AsyncRefreshBuilder result,
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
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AsyncRefreshStatusEnum),
          ) as AsyncRefreshStatusEnum;
          result.status = valueDes;
          break;
        case r'result_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.resultCount = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AsyncRefresh deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AsyncRefreshBuilder();
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
