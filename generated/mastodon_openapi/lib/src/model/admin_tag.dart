//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'admin_tag.g.dart';

/// Additional entity definition for Admin::Tag
///
/// Properties:
/// * [requiresReview] - Whether the hashtag has not been reviewed yet to approve or deny its trending.
/// * [trendable] - Whether the hashtag has been approved to trend.
/// * [usable] - Whether the hashtag has not been disabled from auto-linking.
@BuiltValue()
abstract class AdminTag implements Built<AdminTag, AdminTagBuilder> {
  /// Whether the hashtag has not been reviewed yet to approve or deny its trending.
  @BuiltValueField(wireName: r'requires_review')
  bool get requiresReview;

  /// Whether the hashtag has been approved to trend.
  @BuiltValueField(wireName: r'trendable')
  bool get trendable;

  /// Whether the hashtag has not been disabled from auto-linking.
  @BuiltValueField(wireName: r'usable')
  bool get usable;

  AdminTag._();

  factory AdminTag([void updates(AdminTagBuilder b)]) = _$AdminTag;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AdminTagBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AdminTag> get serializer => _$AdminTagSerializer();
}

class _$AdminTagSerializer implements PrimitiveSerializer<AdminTag> {
  @override
  final Iterable<Type> types = const [AdminTag, _$AdminTag];

  @override
  final String wireName = r'AdminTag';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AdminTag object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'requires_review';
    yield serializers.serialize(
      object.requiresReview,
      specifiedType: const FullType(bool),
    );
    yield r'trendable';
    yield serializers.serialize(
      object.trendable,
      specifiedType: const FullType(bool),
    );
    yield r'usable';
    yield serializers.serialize(
      object.usable,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AdminTag object, {
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
    required AdminTagBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'requires_review':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.requiresReview = valueDes;
          break;
        case r'trendable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.trendable = valueDes;
          break;
        case r'usable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.usable = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AdminTag deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AdminTagBuilder();
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
