// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_type_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NotificationTypeEnum _$mention = const NotificationTypeEnum._('mention');
const NotificationTypeEnum _$status = const NotificationTypeEnum._('status');
const NotificationTypeEnum _$reblog = const NotificationTypeEnum._('reblog');
const NotificationTypeEnum _$follow = const NotificationTypeEnum._('follow');
const NotificationTypeEnum _$followRequest =
    const NotificationTypeEnum._('followRequest');
const NotificationTypeEnum _$favourite =
    const NotificationTypeEnum._('favourite');
const NotificationTypeEnum _$poll = const NotificationTypeEnum._('poll');
const NotificationTypeEnum _$updateValue =
    const NotificationTypeEnum._('updateValue');
const NotificationTypeEnum _$adminPeriodSignUp =
    const NotificationTypeEnum._('adminPeriodSignUp');
const NotificationTypeEnum _$adminPeriodReport =
    const NotificationTypeEnum._('adminPeriodReport');
const NotificationTypeEnum _$severedRelationships =
    const NotificationTypeEnum._('severedRelationships');
const NotificationTypeEnum _$moderationWarning =
    const NotificationTypeEnum._('moderationWarning');
const NotificationTypeEnum _$quote = const NotificationTypeEnum._('quote');
const NotificationTypeEnum _$quotedUpdate =
    const NotificationTypeEnum._('quotedUpdate');

NotificationTypeEnum _$valueOf(String name) {
  switch (name) {
    case 'mention':
      return _$mention;
    case 'status':
      return _$status;
    case 'reblog':
      return _$reblog;
    case 'follow':
      return _$follow;
    case 'followRequest':
      return _$followRequest;
    case 'favourite':
      return _$favourite;
    case 'poll':
      return _$poll;
    case 'updateValue':
      return _$updateValue;
    case 'adminPeriodSignUp':
      return _$adminPeriodSignUp;
    case 'adminPeriodReport':
      return _$adminPeriodReport;
    case 'severedRelationships':
      return _$severedRelationships;
    case 'moderationWarning':
      return _$moderationWarning;
    case 'quote':
      return _$quote;
    case 'quotedUpdate':
      return _$quotedUpdate;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<NotificationTypeEnum> _$values =
    BuiltSet<NotificationTypeEnum>(const <NotificationTypeEnum>[
  _$mention,
  _$status,
  _$reblog,
  _$follow,
  _$followRequest,
  _$favourite,
  _$poll,
  _$updateValue,
  _$adminPeriodSignUp,
  _$adminPeriodReport,
  _$severedRelationships,
  _$moderationWarning,
  _$quote,
  _$quotedUpdate,
]);

class _$NotificationTypeEnumMeta {
  const _$NotificationTypeEnumMeta();
  NotificationTypeEnum get mention => _$mention;
  NotificationTypeEnum get status => _$status;
  NotificationTypeEnum get reblog => _$reblog;
  NotificationTypeEnum get follow => _$follow;
  NotificationTypeEnum get followRequest => _$followRequest;
  NotificationTypeEnum get favourite => _$favourite;
  NotificationTypeEnum get poll => _$poll;
  NotificationTypeEnum get updateValue => _$updateValue;
  NotificationTypeEnum get adminPeriodSignUp => _$adminPeriodSignUp;
  NotificationTypeEnum get adminPeriodReport => _$adminPeriodReport;
  NotificationTypeEnum get severedRelationships => _$severedRelationships;
  NotificationTypeEnum get moderationWarning => _$moderationWarning;
  NotificationTypeEnum get quote => _$quote;
  NotificationTypeEnum get quotedUpdate => _$quotedUpdate;
  NotificationTypeEnum valueOf(String name) => _$valueOf(name);
  BuiltSet<NotificationTypeEnum> get values => _$values;
}

abstract class _$NotificationTypeEnumMixin {
  // ignore: non_constant_identifier_names
  _$NotificationTypeEnumMeta get NotificationTypeEnum =>
      const _$NotificationTypeEnumMeta();
}

Serializer<NotificationTypeEnum> _$notificationTypeEnumSerializer =
    _$NotificationTypeEnumSerializer();

class _$NotificationTypeEnumSerializer
    implements PrimitiveSerializer<NotificationTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'mention': 'mention',
    'status': 'status',
    'reblog': 'reblog',
    'follow': 'follow',
    'followRequest': 'follow_request',
    'favourite': 'favourite',
    'poll': 'poll',
    'updateValue': 'update',
    'adminPeriodSignUp': 'admin.sign_up',
    'adminPeriodReport': 'admin.report',
    'severedRelationships': 'severed_relationships',
    'moderationWarning': 'moderation_warning',
    'quote': 'quote',
    'quotedUpdate': 'quoted_update',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'mention': 'mention',
    'status': 'status',
    'reblog': 'reblog',
    'follow': 'follow',
    'follow_request': 'followRequest',
    'favourite': 'favourite',
    'poll': 'poll',
    'update': 'updateValue',
    'admin.sign_up': 'adminPeriodSignUp',
    'admin.report': 'adminPeriodReport',
    'severed_relationships': 'severedRelationships',
    'moderation_warning': 'moderationWarning',
    'quote': 'quote',
    'quoted_update': 'quotedUpdate',
  };

  @override
  final Iterable<Type> types = const <Type>[NotificationTypeEnum];
  @override
  final String wireName = 'NotificationTypeEnum';

  @override
  Object serialize(Serializers serializers, NotificationTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  NotificationTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      NotificationTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
