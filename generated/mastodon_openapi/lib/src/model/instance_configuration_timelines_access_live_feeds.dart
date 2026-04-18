//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'instance_configuration_timelines_access_live_feeds.g.dart';

/// Access restrictions on [public feeds]({{< relref \"methods/timelines#public\" >}}).
///
/// Properties:
/// * [local] - Access restrictions for local posts in the public feed.
/// * [remote] - Access restrictions for remote posts in the public feed.
@BuiltValue()
abstract class InstanceConfigurationTimelinesAccessLiveFeeds
    implements
        Built<InstanceConfigurationTimelinesAccessLiveFeeds,
            InstanceConfigurationTimelinesAccessLiveFeedsBuilder> {
  /// Access restrictions for local posts in the public feed.
  @BuiltValueField(wireName: r'local')
  InstanceConfigurationTimelinesAccessLiveFeedsLocalEnum? get local;
  // enum localEnum {  public,  authenticated,  disabled,  };

  /// Access restrictions for remote posts in the public feed.
  @BuiltValueField(wireName: r'remote')
  InstanceConfigurationTimelinesAccessLiveFeedsRemoteEnum? get remote;
  // enum remoteEnum {  public,  authenticated,  disabled,  };

  InstanceConfigurationTimelinesAccessLiveFeeds._();

  factory InstanceConfigurationTimelinesAccessLiveFeeds(
          [void updates(
              InstanceConfigurationTimelinesAccessLiveFeedsBuilder b)]) =
      _$InstanceConfigurationTimelinesAccessLiveFeeds;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
          InstanceConfigurationTimelinesAccessLiveFeedsBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InstanceConfigurationTimelinesAccessLiveFeeds>
      get serializer =>
          _$InstanceConfigurationTimelinesAccessLiveFeedsSerializer();
}

class _$InstanceConfigurationTimelinesAccessLiveFeedsSerializer
    implements
        PrimitiveSerializer<InstanceConfigurationTimelinesAccessLiveFeeds> {
  @override
  final Iterable<Type> types = const [
    InstanceConfigurationTimelinesAccessLiveFeeds,
    _$InstanceConfigurationTimelinesAccessLiveFeeds
  ];

  @override
  final String wireName = r'InstanceConfigurationTimelinesAccessLiveFeeds';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InstanceConfigurationTimelinesAccessLiveFeeds object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.local != null) {
      yield r'local';
      yield serializers.serialize(
        object.local,
        specifiedType: const FullType.nullable(
            InstanceConfigurationTimelinesAccessLiveFeedsLocalEnum),
      );
    }
    if (object.remote != null) {
      yield r'remote';
      yield serializers.serialize(
        object.remote,
        specifiedType: const FullType.nullable(
            InstanceConfigurationTimelinesAccessLiveFeedsRemoteEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    InstanceConfigurationTimelinesAccessLiveFeeds object, {
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
    required InstanceConfigurationTimelinesAccessLiveFeedsBuilder result,
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
                InstanceConfigurationTimelinesAccessLiveFeedsLocalEnum),
          ) as InstanceConfigurationTimelinesAccessLiveFeedsLocalEnum?;
          if (valueDes == null) continue;
          result.local = valueDes;
          break;
        case r'remote':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                InstanceConfigurationTimelinesAccessLiveFeedsRemoteEnum),
          ) as InstanceConfigurationTimelinesAccessLiveFeedsRemoteEnum?;
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
  InstanceConfigurationTimelinesAccessLiveFeeds deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceConfigurationTimelinesAccessLiveFeedsBuilder();
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

class InstanceConfigurationTimelinesAccessLiveFeedsLocalEnum extends EnumClass {
  /// Access restrictions for local posts in the public feed.
  @BuiltValueEnumConst(wireName: r'public')
  static const InstanceConfigurationTimelinesAccessLiveFeedsLocalEnum public =
      _$instanceConfigurationTimelinesAccessLiveFeedsLocalEnum_public;

  /// Access restrictions for local posts in the public feed.
  @BuiltValueEnumConst(wireName: r'authenticated')
  static const InstanceConfigurationTimelinesAccessLiveFeedsLocalEnum
      authenticated =
      _$instanceConfigurationTimelinesAccessLiveFeedsLocalEnum_authenticated;

  /// Access restrictions for local posts in the public feed.
  @BuiltValueEnumConst(wireName: r'disabled')
  static const InstanceConfigurationTimelinesAccessLiveFeedsLocalEnum disabled =
      _$instanceConfigurationTimelinesAccessLiveFeedsLocalEnum_disabled;

  static Serializer<InstanceConfigurationTimelinesAccessLiveFeedsLocalEnum>
      get serializer =>
          _$instanceConfigurationTimelinesAccessLiveFeedsLocalEnumSerializer;

  const InstanceConfigurationTimelinesAccessLiveFeedsLocalEnum._(String name)
      : super(name);

  static BuiltSet<InstanceConfigurationTimelinesAccessLiveFeedsLocalEnum>
      get values =>
          _$instanceConfigurationTimelinesAccessLiveFeedsLocalEnumValues;
  static InstanceConfigurationTimelinesAccessLiveFeedsLocalEnum valueOf(
          String name) =>
      _$instanceConfigurationTimelinesAccessLiveFeedsLocalEnumValueOf(name);
}

class InstanceConfigurationTimelinesAccessLiveFeedsRemoteEnum
    extends EnumClass {
  /// Access restrictions for remote posts in the public feed.
  @BuiltValueEnumConst(wireName: r'public')
  static const InstanceConfigurationTimelinesAccessLiveFeedsRemoteEnum public =
      _$instanceConfigurationTimelinesAccessLiveFeedsRemoteEnum_public;

  /// Access restrictions for remote posts in the public feed.
  @BuiltValueEnumConst(wireName: r'authenticated')
  static const InstanceConfigurationTimelinesAccessLiveFeedsRemoteEnum
      authenticated =
      _$instanceConfigurationTimelinesAccessLiveFeedsRemoteEnum_authenticated;

  /// Access restrictions for remote posts in the public feed.
  @BuiltValueEnumConst(wireName: r'disabled')
  static const InstanceConfigurationTimelinesAccessLiveFeedsRemoteEnum
      disabled =
      _$instanceConfigurationTimelinesAccessLiveFeedsRemoteEnum_disabled;

  static Serializer<InstanceConfigurationTimelinesAccessLiveFeedsRemoteEnum>
      get serializer =>
          _$instanceConfigurationTimelinesAccessLiveFeedsRemoteEnumSerializer;

  const InstanceConfigurationTimelinesAccessLiveFeedsRemoteEnum._(String name)
      : super(name);

  static BuiltSet<InstanceConfigurationTimelinesAccessLiveFeedsRemoteEnum>
      get values =>
          _$instanceConfigurationTimelinesAccessLiveFeedsRemoteEnumValues;
  static InstanceConfigurationTimelinesAccessLiveFeedsRemoteEnum valueOf(
          String name) =>
      _$instanceConfigurationTimelinesAccessLiveFeedsRemoteEnumValueOf(name);
}
