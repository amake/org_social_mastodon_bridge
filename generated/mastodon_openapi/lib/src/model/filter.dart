//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon_openapi/src/model/filter_status.dart';
import 'package:built_collection/built_collection.dart';
import 'package:mastodon_openapi/src/model/filter_filter_action_enum.dart';
import 'package:mastodon_openapi/src/model/filter_context_enum.dart';
import 'package:mastodon_openapi/src/model/filter_keyword.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'filter.g.dart';

/// Represents a user-defined filter for determining which statuses should not be shown to the user.
///
/// Properties:
/// * [context] - The contexts in which the filter should be applied.
/// * [filterAction] - The action to be taken when a status matches this filter.
/// * [id] - The ID of the Filter in the database.
/// * [title] - A title given by the user to name the filter.
/// * [expiresAt] - When the filter should no longer be applied.
/// * [keywords] - The keywords grouped under this filter. Omitted when part of a [FilterResult]({{< relref \"entities/FilterResult\" >}}).
/// * [statuses] - The statuses grouped under this filter. Omitted when part of a [FilterResult]({{< relref \"entities/FilterResult\" >}}).
@BuiltValue()
abstract class Filter implements Built<Filter, FilterBuilder> {
  /// The contexts in which the filter should be applied.
  @BuiltValueField(wireName: r'context')
  BuiltList<FilterContextEnum> get context;

  /// The action to be taken when a status matches this filter.
  @BuiltValueField(wireName: r'filter_action')
  FilterFilterActionEnum get filterAction;
  // enum filterActionEnum {  warn,  hide,  blur,  };

  /// The ID of the Filter in the database.
  @BuiltValueField(wireName: r'id')
  String get id;

  /// A title given by the user to name the filter.
  @BuiltValueField(wireName: r'title')
  String get title;

  /// When the filter should no longer be applied.
  @BuiltValueField(wireName: r'expires_at')
  DateTime? get expiresAt;

  /// The keywords grouped under this filter. Omitted when part of a [FilterResult]({{< relref \"entities/FilterResult\" >}}).
  @BuiltValueField(wireName: r'keywords')
  BuiltList<FilterKeyword>? get keywords;

  /// The statuses grouped under this filter. Omitted when part of a [FilterResult]({{< relref \"entities/FilterResult\" >}}).
  @BuiltValueField(wireName: r'statuses')
  BuiltList<FilterStatus>? get statuses;

  Filter._();

  factory Filter([void updates(FilterBuilder b)]) = _$Filter;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FilterBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Filter> get serializer => _$FilterSerializer();
}

class _$FilterSerializer implements PrimitiveSerializer<Filter> {
  @override
  final Iterable<Type> types = const [Filter, _$Filter];

  @override
  final String wireName = r'Filter';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Filter object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'context';
    yield serializers.serialize(
      object.context,
      specifiedType: const FullType(BuiltList, [FullType(FilterContextEnum)]),
    );
    yield r'filter_action';
    yield serializers.serialize(
      object.filterAction,
      specifiedType: const FullType(FilterFilterActionEnum),
    );
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    if (object.expiresAt != null) {
      yield r'expires_at';
      yield serializers.serialize(
        object.expiresAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.keywords != null) {
      yield r'keywords';
      yield serializers.serialize(
        object.keywords,
        specifiedType:
            const FullType.nullable(BuiltList, [FullType(FilterKeyword)]),
      );
    }
    if (object.statuses != null) {
      yield r'statuses';
      yield serializers.serialize(
        object.statuses,
        specifiedType:
            const FullType.nullable(BuiltList, [FullType(FilterStatus)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Filter object, {
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
    required FilterBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'context':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(FilterContextEnum)]),
          ) as BuiltList<FilterContextEnum>;
          result.context.replace(valueDes);
          break;
        case r'filter_action':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FilterFilterActionEnum),
          ) as FilterFilterActionEnum;
          result.filterAction = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'expires_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.expiresAt = valueDes;
          break;
        case r'keywords':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(FilterKeyword)]),
          ) as BuiltList<FilterKeyword>?;
          if (valueDes == null) continue;
          result.keywords.replace(valueDes);
          break;
        case r'statuses':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(FilterStatus)]),
          ) as BuiltList<FilterStatus>?;
          if (valueDes == null) continue;
          result.statuses.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Filter deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FilterBuilder();
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
