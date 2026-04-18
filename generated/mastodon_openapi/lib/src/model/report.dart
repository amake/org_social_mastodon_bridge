//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:mastodon_openapi/src/model/report_category_enum.dart';
import 'package:mastodon_openapi/src/model/account.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'report.g.dart';

/// Reports filed against users and/or statuses, to be taken action on by moderators.
///
/// Properties:
/// * [actionTaken] - Whether an action was taken yet.
/// * [category] - The generic reason for the report.
/// * [comment] - The reason for the report.
/// * [createdAt] - When the report was created.
/// * [forwarded] - Whether the report was forwarded to a remote domain.
/// * [id] - The ID of the report in the database.
/// * [targetAccount] - The account that was reported.
/// * [actionTakenAt] - When an action was taken against the report.
/// * [collectionIds] - IDs of Featured Collections that have been attached to this report for additional context.
/// * [ruleIds] - IDs of the rules that have been cited as a violation by this report.
/// * [statusIds] - IDs of statuses that have been attached to this report for additional context.
@BuiltValue()
abstract class Report implements Built<Report, ReportBuilder> {
  /// Whether an action was taken yet.
  @BuiltValueField(wireName: r'action_taken')
  bool get actionTaken;

  /// The generic reason for the report.
  @BuiltValueField(wireName: r'category')
  ReportCategoryEnum get category;
  // enum categoryEnum {  spam,  legal,  violation,  other,  };

  /// The reason for the report.
  @BuiltValueField(wireName: r'comment')
  String get comment;

  /// When the report was created.
  @BuiltValueField(wireName: r'created_at')
  DateTime get createdAt;

  /// Whether the report was forwarded to a remote domain.
  @BuiltValueField(wireName: r'forwarded')
  bool get forwarded;

  /// The ID of the report in the database.
  @BuiltValueField(wireName: r'id')
  String get id;

  /// The account that was reported.
  @BuiltValueField(wireName: r'target_account')
  Account get targetAccount;

  /// When an action was taken against the report.
  @BuiltValueField(wireName: r'action_taken_at')
  DateTime? get actionTakenAt;

  /// IDs of Featured Collections that have been attached to this report for additional context.
  @BuiltValueField(wireName: r'collection_ids')
  BuiltList<String>? get collectionIds;

  /// IDs of the rules that have been cited as a violation by this report.
  @BuiltValueField(wireName: r'rule_ids')
  BuiltList<String>? get ruleIds;

  /// IDs of statuses that have been attached to this report for additional context.
  @BuiltValueField(wireName: r'status_ids')
  BuiltList<String>? get statusIds;

  Report._();

  factory Report([void updates(ReportBuilder b)]) = _$Report;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReportBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Report> get serializer => _$ReportSerializer();
}

class _$ReportSerializer implements PrimitiveSerializer<Report> {
  @override
  final Iterable<Type> types = const [Report, _$Report];

  @override
  final String wireName = r'Report';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Report object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'action_taken';
    yield serializers.serialize(
      object.actionTaken,
      specifiedType: const FullType(bool),
    );
    yield r'category';
    yield serializers.serialize(
      object.category,
      specifiedType: const FullType(ReportCategoryEnum),
    );
    yield r'comment';
    yield serializers.serialize(
      object.comment,
      specifiedType: const FullType(String),
    );
    yield r'created_at';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'forwarded';
    yield serializers.serialize(
      object.forwarded,
      specifiedType: const FullType(bool),
    );
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'target_account';
    yield serializers.serialize(
      object.targetAccount,
      specifiedType: const FullType(Account),
    );
    if (object.actionTakenAt != null) {
      yield r'action_taken_at';
      yield serializers.serialize(
        object.actionTakenAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.collectionIds != null) {
      yield r'collection_ids';
      yield serializers.serialize(
        object.collectionIds,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
    if (object.ruleIds != null) {
      yield r'rule_ids';
      yield serializers.serialize(
        object.ruleIds,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
    if (object.statusIds != null) {
      yield r'status_ids';
      yield serializers.serialize(
        object.statusIds,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Report object, {
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
    required ReportBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'action_taken':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.actionTaken = valueDes;
          break;
        case r'category':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ReportCategoryEnum),
          ) as ReportCategoryEnum;
          result.category = valueDes;
          break;
        case r'comment':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.comment = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'forwarded':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.forwarded = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'target_account':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Account),
          ) as Account;
          result.targetAccount.replace(valueDes);
          break;
        case r'action_taken_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.actionTakenAt = valueDes;
          break;
        case r'collection_ids':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.collectionIds.replace(valueDes);
          break;
        case r'rule_ids':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.ruleIds.replace(valueDes);
          break;
        case r'status_ids':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.statusIds.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Report deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReportBuilder();
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
