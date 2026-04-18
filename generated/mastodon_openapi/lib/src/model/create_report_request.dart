//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:mastodon_openapi/src/model/report_category_enum.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_report_request.g.dart';

/// CreateReportRequest
///
/// Properties:
/// * [accountId] - ID of the account to report.
/// * [category] - Specify if the report is due to `spam`, `legal` (illegal content), `violation` of enumerated instance rules, or some `other` reason. Defaults to `other`. Will be set to `violation` if `rule_ids[]` is provided (regardless of any category value you provide).
/// * [comment] - The reason for the report. Default maximum of 1000 characters.
/// * [forward] - If the account is remote, should the report be forwarded to the remote admin? Defaults to false.
/// * [ruleIds] - For `violation` category reports, specify the ID of the exact rules broken. Rules and their IDs are available via [GET /api/v1/instance/rules] and [GET /api/v1/instance]. See [Handling and sorting IDs] for more information.
/// * [statusIds] - You can attach statuses to the report to provide additional context.
@BuiltValue()
abstract class CreateReportRequest
    implements Built<CreateReportRequest, CreateReportRequestBuilder> {
  /// ID of the account to report.
  @BuiltValueField(wireName: r'account_id')
  String get accountId;

  /// Specify if the report is due to `spam`, `legal` (illegal content), `violation` of enumerated instance rules, or some `other` reason. Defaults to `other`. Will be set to `violation` if `rule_ids[]` is provided (regardless of any category value you provide).
  @BuiltValueField(wireName: r'category')
  ReportCategoryEnum? get category;
  // enum categoryEnum {  spam,  legal,  violation,  other,  };

  /// The reason for the report. Default maximum of 1000 characters.
  @BuiltValueField(wireName: r'comment')
  String? get comment;

  /// If the account is remote, should the report be forwarded to the remote admin? Defaults to false.
  @BuiltValueField(wireName: r'forward')
  bool? get forward;

  /// For `violation` category reports, specify the ID of the exact rules broken. Rules and their IDs are available via [GET /api/v1/instance/rules] and [GET /api/v1/instance]. See [Handling and sorting IDs] for more information.
  @BuiltValueField(wireName: r'rule_ids')
  BuiltList<String>? get ruleIds;

  /// You can attach statuses to the report to provide additional context.
  @BuiltValueField(wireName: r'status_ids')
  BuiltList<String>? get statusIds;

  CreateReportRequest._();

  factory CreateReportRequest([void updates(CreateReportRequestBuilder b)]) =
      _$CreateReportRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateReportRequestBuilder b) => b
    ..category = ReportCategoryEnum.other
    ..forward = false;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateReportRequest> get serializer =>
      _$CreateReportRequestSerializer();
}

class _$CreateReportRequestSerializer
    implements PrimitiveSerializer<CreateReportRequest> {
  @override
  final Iterable<Type> types = const [
    CreateReportRequest,
    _$CreateReportRequest
  ];

  @override
  final String wireName = r'CreateReportRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateReportRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'account_id';
    yield serializers.serialize(
      object.accountId,
      specifiedType: const FullType(String),
    );
    if (object.category != null) {
      yield r'category';
      yield serializers.serialize(
        object.category,
        specifiedType: const FullType(ReportCategoryEnum),
      );
    }
    if (object.comment != null) {
      yield r'comment';
      yield serializers.serialize(
        object.comment,
        specifiedType: const FullType(String),
      );
    }
    if (object.forward != null) {
      yield r'forward';
      yield serializers.serialize(
        object.forward,
        specifiedType: const FullType(bool),
      );
    }
    if (object.ruleIds != null) {
      yield r'rule_ids';
      yield serializers.serialize(
        object.ruleIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.statusIds != null) {
      yield r'status_ids';
      yield serializers.serialize(
        object.statusIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateReportRequest object, {
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
    required CreateReportRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'account_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.accountId = valueDes;
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
        case r'forward':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.forward = valueDes;
          break;
        case r'rule_ids':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.ruleIds.replace(valueDes);
          break;
        case r'status_ids':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
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
  CreateReportRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateReportRequestBuilder();
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
