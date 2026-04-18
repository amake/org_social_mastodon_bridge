//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'instance_configuration_accounts.g.dart';

/// Limits related to accounts.
///
/// Properties:
/// * [maxFeaturedTags] - The maximum number of featured tags allowed for each account.
/// * [maxDisplayNameLength] - The maximum length allowed for an account's display name.
/// * [maxNoteLength] - The maximum length allowed for an account's bio.
/// * [maxPinnedStatuses] - The maximum number of pinned statuses for each account.
/// * [maxProfileFields] - The maximum number of custom profile fields allowed to be set.
/// * [profileFieldNameLimit] - The maximum size of a profile field name, in characters.
/// * [profileFieldValueLimit] - The maximum size of a profile field value, in characters.
@BuiltValue()
abstract class InstanceConfigurationAccounts
    implements
        Built<InstanceConfigurationAccounts,
            InstanceConfigurationAccountsBuilder> {
  /// The maximum number of featured tags allowed for each account.
  @BuiltValueField(wireName: r'max_featured_tags')
  int get maxFeaturedTags;

  /// The maximum length allowed for an account's display name.
  @BuiltValueField(wireName: r'max_display_name_length')
  int? get maxDisplayNameLength;

  /// The maximum length allowed for an account's bio.
  @BuiltValueField(wireName: r'max_note_length')
  int? get maxNoteLength;

  /// The maximum number of pinned statuses for each account.
  @BuiltValueField(wireName: r'max_pinned_statuses')
  int? get maxPinnedStatuses;

  /// The maximum number of custom profile fields allowed to be set.
  @BuiltValueField(wireName: r'max_profile_fields')
  int? get maxProfileFields;

  /// The maximum size of a profile field name, in characters.
  @BuiltValueField(wireName: r'profile_field_name_limit')
  int? get profileFieldNameLimit;

  /// The maximum size of a profile field value, in characters.
  @BuiltValueField(wireName: r'profile_field_value_limit')
  int? get profileFieldValueLimit;

  InstanceConfigurationAccounts._();

  factory InstanceConfigurationAccounts(
          [void updates(InstanceConfigurationAccountsBuilder b)]) =
      _$InstanceConfigurationAccounts;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InstanceConfigurationAccountsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InstanceConfigurationAccounts> get serializer =>
      _$InstanceConfigurationAccountsSerializer();
}

class _$InstanceConfigurationAccountsSerializer
    implements PrimitiveSerializer<InstanceConfigurationAccounts> {
  @override
  final Iterable<Type> types = const [
    InstanceConfigurationAccounts,
    _$InstanceConfigurationAccounts
  ];

  @override
  final String wireName = r'InstanceConfigurationAccounts';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InstanceConfigurationAccounts object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'max_featured_tags';
    yield serializers.serialize(
      object.maxFeaturedTags,
      specifiedType: const FullType(int),
    );
    if (object.maxDisplayNameLength != null) {
      yield r'max_display_name_length';
      yield serializers.serialize(
        object.maxDisplayNameLength,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.maxNoteLength != null) {
      yield r'max_note_length';
      yield serializers.serialize(
        object.maxNoteLength,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.maxPinnedStatuses != null) {
      yield r'max_pinned_statuses';
      yield serializers.serialize(
        object.maxPinnedStatuses,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.maxProfileFields != null) {
      yield r'max_profile_fields';
      yield serializers.serialize(
        object.maxProfileFields,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.profileFieldNameLimit != null) {
      yield r'profile_field_name_limit';
      yield serializers.serialize(
        object.profileFieldNameLimit,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.profileFieldValueLimit != null) {
      yield r'profile_field_value_limit';
      yield serializers.serialize(
        object.profileFieldValueLimit,
        specifiedType: const FullType.nullable(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    InstanceConfigurationAccounts object, {
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
    required InstanceConfigurationAccountsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'max_featured_tags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.maxFeaturedTags = valueDes;
          break;
        case r'max_display_name_length':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxDisplayNameLength = valueDes;
          break;
        case r'max_note_length':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxNoteLength = valueDes;
          break;
        case r'max_pinned_statuses':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxPinnedStatuses = valueDes;
          break;
        case r'max_profile_fields':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxProfileFields = valueDes;
          break;
        case r'profile_field_name_limit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.profileFieldNameLimit = valueDes;
          break;
        case r'profile_field_value_limit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.profileFieldValueLimit = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InstanceConfigurationAccounts deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceConfigurationAccountsBuilder();
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
