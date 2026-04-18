//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'instance_configuration_timelines_access_trending_link_feeds.g.dart';

/// Access restrictions on [trending link feeds]({{< relref \"methods/timelines#link\" >}}).
///
/// Properties:
/// * [local] - Access restrictions for local posts in the trending link feeds.
/// * [remote] - Access restrictions for remote posts in trending link feeds.
@BuiltValue()
abstract class InstanceConfigurationTimelinesAccessTrendingLinkFeeds
    implements
        Built<InstanceConfigurationTimelinesAccessTrendingLinkFeeds,
            InstanceConfigurationTimelinesAccessTrendingLinkFeedsBuilder> {
  /// Access restrictions for local posts in the trending link feeds.
  @BuiltValueField(wireName: r'local')
  InstanceConfigurationTimelinesAccessTrendingLinkFeedsLocalEnum? get local;
  // enum localEnum {  public,  authenticated,  };

  /// Access restrictions for remote posts in trending link feeds.
  @BuiltValueField(wireName: r'remote')
  InstanceConfigurationTimelinesAccessTrendingLinkFeedsRemoteEnum? get remote;
  // enum remoteEnum {  public,  authenticated,  disabled,  };

  InstanceConfigurationTimelinesAccessTrendingLinkFeeds._();

  factory InstanceConfigurationTimelinesAccessTrendingLinkFeeds(
      [void updates(
          InstanceConfigurationTimelinesAccessTrendingLinkFeedsBuilder
              b)]) = _$InstanceConfigurationTimelinesAccessTrendingLinkFeeds;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
          InstanceConfigurationTimelinesAccessTrendingLinkFeedsBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InstanceConfigurationTimelinesAccessTrendingLinkFeeds>
      get serializer =>
          _$InstanceConfigurationTimelinesAccessTrendingLinkFeedsSerializer();
}

class _$InstanceConfigurationTimelinesAccessTrendingLinkFeedsSerializer
    implements
        PrimitiveSerializer<
            InstanceConfigurationTimelinesAccessTrendingLinkFeeds> {
  @override
  final Iterable<Type> types = const [
    InstanceConfigurationTimelinesAccessTrendingLinkFeeds,
    _$InstanceConfigurationTimelinesAccessTrendingLinkFeeds
  ];

  @override
  final String wireName =
      r'InstanceConfigurationTimelinesAccessTrendingLinkFeeds';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InstanceConfigurationTimelinesAccessTrendingLinkFeeds object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.local != null) {
      yield r'local';
      yield serializers.serialize(
        object.local,
        specifiedType: const FullType.nullable(
            InstanceConfigurationTimelinesAccessTrendingLinkFeedsLocalEnum),
      );
    }
    if (object.remote != null) {
      yield r'remote';
      yield serializers.serialize(
        object.remote,
        specifiedType: const FullType.nullable(
            InstanceConfigurationTimelinesAccessTrendingLinkFeedsRemoteEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    InstanceConfigurationTimelinesAccessTrendingLinkFeeds object, {
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
    required InstanceConfigurationTimelinesAccessTrendingLinkFeedsBuilder
        result,
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
                InstanceConfigurationTimelinesAccessTrendingLinkFeedsLocalEnum),
          ) as InstanceConfigurationTimelinesAccessTrendingLinkFeedsLocalEnum?;
          if (valueDes == null) continue;
          result.local = valueDes;
          break;
        case r'remote':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                InstanceConfigurationTimelinesAccessTrendingLinkFeedsRemoteEnum),
          ) as InstanceConfigurationTimelinesAccessTrendingLinkFeedsRemoteEnum?;
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
  InstanceConfigurationTimelinesAccessTrendingLinkFeeds deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        InstanceConfigurationTimelinesAccessTrendingLinkFeedsBuilder();
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

class InstanceConfigurationTimelinesAccessTrendingLinkFeedsLocalEnum
    extends EnumClass {
  /// Access restrictions for local posts in the trending link feeds.
  @BuiltValueEnumConst(wireName: r'public')
  static const InstanceConfigurationTimelinesAccessTrendingLinkFeedsLocalEnum
      public =
      _$instanceConfigurationTimelinesAccessTrendingLinkFeedsLocalEnum_public;

  /// Access restrictions for local posts in the trending link feeds.
  @BuiltValueEnumConst(wireName: r'authenticated')
  static const InstanceConfigurationTimelinesAccessTrendingLinkFeedsLocalEnum
      authenticated =
      _$instanceConfigurationTimelinesAccessTrendingLinkFeedsLocalEnum_authenticated;

  static Serializer<
          InstanceConfigurationTimelinesAccessTrendingLinkFeedsLocalEnum>
      get serializer =>
          _$instanceConfigurationTimelinesAccessTrendingLinkFeedsLocalEnumSerializer;

  const InstanceConfigurationTimelinesAccessTrendingLinkFeedsLocalEnum._(
      String name)
      : super(name);

  static BuiltSet<
          InstanceConfigurationTimelinesAccessTrendingLinkFeedsLocalEnum>
      get values =>
          _$instanceConfigurationTimelinesAccessTrendingLinkFeedsLocalEnumValues;
  static InstanceConfigurationTimelinesAccessTrendingLinkFeedsLocalEnum valueOf(
          String name) =>
      _$instanceConfigurationTimelinesAccessTrendingLinkFeedsLocalEnumValueOf(
          name);
}

class InstanceConfigurationTimelinesAccessTrendingLinkFeedsRemoteEnum
    extends EnumClass {
  /// Access restrictions for remote posts in trending link feeds.
  @BuiltValueEnumConst(wireName: r'public')
  static const InstanceConfigurationTimelinesAccessTrendingLinkFeedsRemoteEnum
      public =
      _$instanceConfigurationTimelinesAccessTrendingLinkFeedsRemoteEnum_public;

  /// Access restrictions for remote posts in trending link feeds.
  @BuiltValueEnumConst(wireName: r'authenticated')
  static const InstanceConfigurationTimelinesAccessTrendingLinkFeedsRemoteEnum
      authenticated =
      _$instanceConfigurationTimelinesAccessTrendingLinkFeedsRemoteEnum_authenticated;

  /// Access restrictions for remote posts in trending link feeds.
  @BuiltValueEnumConst(wireName: r'disabled')
  static const InstanceConfigurationTimelinesAccessTrendingLinkFeedsRemoteEnum
      disabled =
      _$instanceConfigurationTimelinesAccessTrendingLinkFeedsRemoteEnum_disabled;

  static Serializer<
          InstanceConfigurationTimelinesAccessTrendingLinkFeedsRemoteEnum>
      get serializer =>
          _$instanceConfigurationTimelinesAccessTrendingLinkFeedsRemoteEnumSerializer;

  const InstanceConfigurationTimelinesAccessTrendingLinkFeedsRemoteEnum._(
      String name)
      : super(name);

  static BuiltSet<
          InstanceConfigurationTimelinesAccessTrendingLinkFeedsRemoteEnum>
      get values =>
          _$instanceConfigurationTimelinesAccessTrendingLinkFeedsRemoteEnumValues;
  static InstanceConfigurationTimelinesAccessTrendingLinkFeedsRemoteEnum valueOf(
          String name) =>
      _$instanceConfigurationTimelinesAccessTrendingLinkFeedsRemoteEnumValueOf(
          name);
}
