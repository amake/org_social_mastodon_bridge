//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'instance_configuration_timelines_access_hashtag_feeds.g.dart';

/// Access restrictions on [hashtag feeds]({{< relref \"methods/timelines#tag\" >}}).
///
/// Properties:
/// * [local] - Access restrictions for local posts in hashtag feeds.
/// * [remote] - Access restrictions for remote posts in hashtag feeds.
@BuiltValue()
abstract class InstanceConfigurationTimelinesAccessHashtagFeeds
    implements
        Built<InstanceConfigurationTimelinesAccessHashtagFeeds,
            InstanceConfigurationTimelinesAccessHashtagFeedsBuilder> {
  /// Access restrictions for local posts in hashtag feeds.
  @BuiltValueField(wireName: r'local')
  InstanceConfigurationTimelinesAccessHashtagFeedsLocalEnum? get local;
  // enum localEnum {  public,  authenticated,  };

  /// Access restrictions for remote posts in hashtag feeds.
  @BuiltValueField(wireName: r'remote')
  InstanceConfigurationTimelinesAccessHashtagFeedsRemoteEnum? get remote;
  // enum remoteEnum {  public,  authenticated,  disabled,  };

  InstanceConfigurationTimelinesAccessHashtagFeeds._();

  factory InstanceConfigurationTimelinesAccessHashtagFeeds(
          [void updates(
              InstanceConfigurationTimelinesAccessHashtagFeedsBuilder b)]) =
      _$InstanceConfigurationTimelinesAccessHashtagFeeds;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
          InstanceConfigurationTimelinesAccessHashtagFeedsBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InstanceConfigurationTimelinesAccessHashtagFeeds>
      get serializer =>
          _$InstanceConfigurationTimelinesAccessHashtagFeedsSerializer();
}

class _$InstanceConfigurationTimelinesAccessHashtagFeedsSerializer
    implements
        PrimitiveSerializer<InstanceConfigurationTimelinesAccessHashtagFeeds> {
  @override
  final Iterable<Type> types = const [
    InstanceConfigurationTimelinesAccessHashtagFeeds,
    _$InstanceConfigurationTimelinesAccessHashtagFeeds
  ];

  @override
  final String wireName = r'InstanceConfigurationTimelinesAccessHashtagFeeds';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InstanceConfigurationTimelinesAccessHashtagFeeds object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.local != null) {
      yield r'local';
      yield serializers.serialize(
        object.local,
        specifiedType: const FullType.nullable(
            InstanceConfigurationTimelinesAccessHashtagFeedsLocalEnum),
      );
    }
    if (object.remote != null) {
      yield r'remote';
      yield serializers.serialize(
        object.remote,
        specifiedType: const FullType.nullable(
            InstanceConfigurationTimelinesAccessHashtagFeedsRemoteEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    InstanceConfigurationTimelinesAccessHashtagFeeds object, {
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
    required InstanceConfigurationTimelinesAccessHashtagFeedsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'local':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                InstanceConfigurationTimelinesAccessHashtagFeedsLocalEnum),
          ) as InstanceConfigurationTimelinesAccessHashtagFeedsLocalEnum?;
          if (valueDes == null) continue;
          result.local = valueDes;
          break;
        case r'remote':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                InstanceConfigurationTimelinesAccessHashtagFeedsRemoteEnum),
          ) as InstanceConfigurationTimelinesAccessHashtagFeedsRemoteEnum?;
          if (valueDes == null) continue;
          result.remote = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InstanceConfigurationTimelinesAccessHashtagFeeds deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceConfigurationTimelinesAccessHashtagFeedsBuilder();
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

class InstanceConfigurationTimelinesAccessHashtagFeedsLocalEnum
    extends EnumClass {
  /// Access restrictions for local posts in hashtag feeds.
  @BuiltValueEnumConst(wireName: r'public')
  static const InstanceConfigurationTimelinesAccessHashtagFeedsLocalEnum
      public =
      _$instanceConfigurationTimelinesAccessHashtagFeedsLocalEnum_public;

  /// Access restrictions for local posts in hashtag feeds.
  @BuiltValueEnumConst(wireName: r'authenticated')
  static const InstanceConfigurationTimelinesAccessHashtagFeedsLocalEnum
      authenticated =
      _$instanceConfigurationTimelinesAccessHashtagFeedsLocalEnum_authenticated;

  static Serializer<InstanceConfigurationTimelinesAccessHashtagFeedsLocalEnum>
      get serializer =>
          _$instanceConfigurationTimelinesAccessHashtagFeedsLocalEnumSerializer;

  const InstanceConfigurationTimelinesAccessHashtagFeedsLocalEnum._(String name)
      : super(name);

  static BuiltSet<InstanceConfigurationTimelinesAccessHashtagFeedsLocalEnum>
      get values =>
          _$instanceConfigurationTimelinesAccessHashtagFeedsLocalEnumValues;
  static InstanceConfigurationTimelinesAccessHashtagFeedsLocalEnum valueOf(
          String name) =>
      _$instanceConfigurationTimelinesAccessHashtagFeedsLocalEnumValueOf(name);
}

class InstanceConfigurationTimelinesAccessHashtagFeedsRemoteEnum
    extends EnumClass {
  /// Access restrictions for remote posts in hashtag feeds.
  @BuiltValueEnumConst(wireName: r'public')
  static const InstanceConfigurationTimelinesAccessHashtagFeedsRemoteEnum
      public =
      _$instanceConfigurationTimelinesAccessHashtagFeedsRemoteEnum_public;

  /// Access restrictions for remote posts in hashtag feeds.
  @BuiltValueEnumConst(wireName: r'authenticated')
  static const InstanceConfigurationTimelinesAccessHashtagFeedsRemoteEnum
      authenticated =
      _$instanceConfigurationTimelinesAccessHashtagFeedsRemoteEnum_authenticated;

  /// Access restrictions for remote posts in hashtag feeds.
  @BuiltValueEnumConst(wireName: r'disabled')
  static const InstanceConfigurationTimelinesAccessHashtagFeedsRemoteEnum
      disabled =
      _$instanceConfigurationTimelinesAccessHashtagFeedsRemoteEnum_disabled;

  static Serializer<InstanceConfigurationTimelinesAccessHashtagFeedsRemoteEnum>
      get serializer =>
          _$instanceConfigurationTimelinesAccessHashtagFeedsRemoteEnumSerializer;

  const InstanceConfigurationTimelinesAccessHashtagFeedsRemoteEnum._(
      String name)
      : super(name);

  static BuiltSet<InstanceConfigurationTimelinesAccessHashtagFeedsRemoteEnum>
      get values =>
          _$instanceConfigurationTimelinesAccessHashtagFeedsRemoteEnumValues;
  static InstanceConfigurationTimelinesAccessHashtagFeedsRemoteEnum valueOf(
          String name) =>
      _$instanceConfigurationTimelinesAccessHashtagFeedsRemoteEnumValueOf(name);
}
