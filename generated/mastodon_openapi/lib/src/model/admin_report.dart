//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon_openapi/src/model/rule.dart';
import 'package:built_collection/built_collection.dart';
import 'package:mastodon_openapi/src/model/report_category_enum.dart';
import 'package:mastodon_openapi/src/model/status.dart';
import 'package:mastodon_openapi/src/model/admin_account.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'admin_report.g.dart';

/// Admin-level information about a filed report.
///
/// Properties:
/// * [account] - The account which filed the report.
/// * [actionTaken] - Whether an action was taken to resolve this report.
/// * [category] - The category under which the report is classified.
/// * [comment] - An optional reason for reporting.
/// * [createdAt] - The time the report was filed.
/// * [forwarded] - Whether a report was forwarded to a remote instance.
/// * [id] - The ID of the report in the database.
/// * [rules] - Rules attached to the report, for context.
/// * [statuses] - Statuses attached to the report, for context.
/// * [targetAccount] - The account being reported.
/// * [updatedAt] - The time of last action on this report.
/// * [actionTakenAt] - When an action was taken, if this report is currently resolved.
/// * [actionTakenByAccount]
/// * [assignedAccount]
@BuiltValue()
abstract class AdminReport implements Built<AdminReport, AdminReportBuilder> {
  /// The account which filed the report.
  @BuiltValueField(wireName: r'account')
  AdminAccount get account;

  /// Whether an action was taken to resolve this report.
  @BuiltValueField(wireName: r'action_taken')
  bool get actionTaken;

  /// The category under which the report is classified.
  @BuiltValueField(wireName: r'category')
  ReportCategoryEnum get category;
  // enum categoryEnum {  spam,  legal,  violation,  other,  };

  /// An optional reason for reporting.
  @BuiltValueField(wireName: r'comment')
  String get comment;

  /// The time the report was filed.
  @BuiltValueField(wireName: r'created_at')
  DateTime get createdAt;

  /// Whether a report was forwarded to a remote instance.
  @BuiltValueField(wireName: r'forwarded')
  bool get forwarded;

  /// The ID of the report in the database.
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Rules attached to the report, for context.
  @BuiltValueField(wireName: r'rules')
  BuiltList<Rule> get rules;

  /// Statuses attached to the report, for context.
  @BuiltValueField(wireName: r'statuses')
  BuiltList<Status> get statuses;

  /// The account being reported.
  @BuiltValueField(wireName: r'target_account')
  AdminAccount get targetAccount;

  /// The time of last action on this report.
  @BuiltValueField(wireName: r'updated_at')
  DateTime get updatedAt;

  /// When an action was taken, if this report is currently resolved.
  @BuiltValueField(wireName: r'action_taken_at')
  DateTime? get actionTakenAt;

  @BuiltValueField(wireName: r'action_taken_by_account')
  AdminAccount? get actionTakenByAccount;

  @BuiltValueField(wireName: r'assigned_account')
  AdminAccount? get assignedAccount;

  AdminReport._();

  factory AdminReport([void updates(AdminReportBuilder b)]) = _$AdminReport;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AdminReportBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AdminReport> get serializer => _$AdminReportSerializer();
}

class _$AdminReportSerializer implements PrimitiveSerializer<AdminReport> {
  @override
  final Iterable<Type> types = const [AdminReport, _$AdminReport];

  @override
  final String wireName = r'AdminReport';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AdminReport object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'account';
    yield serializers.serialize(
      object.account,
      specifiedType: const FullType(AdminAccount),
    );
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
    yield r'rules';
    yield serializers.serialize(
      object.rules,
      specifiedType: const FullType(BuiltList, [FullType(Rule)]),
    );
    yield r'statuses';
    yield serializers.serialize(
      object.statuses,
      specifiedType: const FullType(BuiltList, [FullType(Status)]),
    );
    yield r'target_account';
    yield serializers.serialize(
      object.targetAccount,
      specifiedType: const FullType(AdminAccount),
    );
    yield r'updated_at';
    yield serializers.serialize(
      object.updatedAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.actionTakenAt != null) {
      yield r'action_taken_at';
      yield serializers.serialize(
        object.actionTakenAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.actionTakenByAccount != null) {
      yield r'action_taken_by_account';
      yield serializers.serialize(
        object.actionTakenByAccount,
        specifiedType: const FullType.nullable(AdminAccount),
      );
    }
    if (object.assignedAccount != null) {
      yield r'assigned_account';
      yield serializers.serialize(
        object.assignedAccount,
        specifiedType: const FullType.nullable(AdminAccount),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AdminReport object, {
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
    required AdminReportBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'account':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AdminAccount),
          ) as AdminAccount;
          result.account.replace(valueDes);
          break;
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
        case r'rules':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Rule)]),
          ) as BuiltList<Rule>;
          result.rules.replace(valueDes);
          break;
        case r'statuses':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Status)]),
          ) as BuiltList<Status>;
          result.statuses.replace(valueDes);
          break;
        case r'target_account':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AdminAccount),
          ) as AdminAccount;
          result.targetAccount.replace(valueDes);
          break;
        case r'updated_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.updatedAt = valueDes;
          break;
        case r'action_taken_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.actionTakenAt = valueDes;
          break;
        case r'action_taken_by_account':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AdminAccount),
          ) as AdminAccount?;
          if (valueDes == null) continue;
          result.actionTakenByAccount.replace(valueDes);
          break;
        case r'assigned_account':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AdminAccount),
          ) as AdminAccount?;
          if (valueDes == null) continue;
          result.assignedAccount.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AdminReport deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AdminReportBuilder();
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
