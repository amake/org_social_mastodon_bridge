//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon_openapi/src/model/instance_configuration_timelines_access_trending_link_feeds.dart';
import 'package:mastodon_openapi/src/model/instance_configuration_timelines_access_live_feeds.dart';
import 'package:mastodon_openapi/src/model/instance_configuration_timelines_access_hashtag_feeds.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'instance_configuration_timelines_access.g.dart';

/// Access restrictions on different timelines.
///
/// Properties:
/// * [liveFeeds]
/// * [hashtagFeeds]
/// * [trendingLinkFeeds]
@BuiltValue()
abstract class InstanceConfigurationTimelinesAccess
    implements
        Built<InstanceConfigurationTimelinesAccess,
            InstanceConfigurationTimelinesAccessBuilder> {
  @BuiltValueField(wireName: r'live_feeds')
  InstanceConfigurationTimelinesAccessLiveFeeds? get liveFeeds;

  @BuiltValueField(wireName: r'hashtag_feeds')
  InstanceConfigurationTimelinesAccessHashtagFeeds? get hashtagFeeds;

  @BuiltValueField(wireName: r'trending_link_feeds')
  InstanceConfigurationTimelinesAccessTrendingLinkFeeds? get trendingLinkFeeds;

  InstanceConfigurationTimelinesAccess._();

  factory InstanceConfigurationTimelinesAccess(
          [void updates(InstanceConfigurationTimelinesAccessBuilder b)]) =
      _$InstanceConfigurationTimelinesAccess;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InstanceConfigurationTimelinesAccessBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InstanceConfigurationTimelinesAccess> get serializer =>
      _$InstanceConfigurationTimelinesAccessSerializer();
}

class _$InstanceConfigurationTimelinesAccessSerializer
    implements PrimitiveSerializer<InstanceConfigurationTimelinesAccess> {
  @override
  final Iterable<Type> types = const [
    InstanceConfigurationTimelinesAccess,
    _$InstanceConfigurationTimelinesAccess
  ];

  @override
  final String wireName = r'InstanceConfigurationTimelinesAccess';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InstanceConfigurationTimelinesAccess object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.liveFeeds != null) {
      yield r'live_feeds';
      yield serializers.serialize(
        object.liveFeeds,
        specifiedType:
            const FullType(InstanceConfigurationTimelinesAccessLiveFeeds),
      );
    }
    if (object.hashtagFeeds != null) {
      yield r'hashtag_feeds';
      yield serializers.serialize(
        object.hashtagFeeds,
        specifiedType:
            const FullType(InstanceConfigurationTimelinesAccessHashtagFeeds),
      );
    }
    if (object.trendingLinkFeeds != null) {
      yield r'trending_link_feeds';
      yield serializers.serialize(
        object.trendingLinkFeeds,
        specifiedType: const FullType(
            InstanceConfigurationTimelinesAccessTrendingLinkFeeds),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    InstanceConfigurationTimelinesAccess object, {
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
    required InstanceConfigurationTimelinesAccessBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'live_feeds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(InstanceConfigurationTimelinesAccessLiveFeeds),
          ) as InstanceConfigurationTimelinesAccessLiveFeeds;
          result.liveFeeds.replace(valueDes);
          break;
        case r'hashtag_feeds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                InstanceConfigurationTimelinesAccessHashtagFeeds),
          ) as InstanceConfigurationTimelinesAccessHashtagFeeds;
          result.hashtagFeeds.replace(valueDes);
          break;
        case r'trending_link_feeds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                InstanceConfigurationTimelinesAccessTrendingLinkFeeds),
          ) as InstanceConfigurationTimelinesAccessTrendingLinkFeeds;
          result.trendingLinkFeeds.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InstanceConfigurationTimelinesAccess deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceConfigurationTimelinesAccessBuilder();
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
