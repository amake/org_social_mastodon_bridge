// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_warning_action_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AccountWarningActionEnum _$none =
    const AccountWarningActionEnum._('none');
const AccountWarningActionEnum _$disable =
    const AccountWarningActionEnum._('disable');
const AccountWarningActionEnum _$markStatusesAsSensitive =
    const AccountWarningActionEnum._('markStatusesAsSensitive');
const AccountWarningActionEnum _$deleteStatuses =
    const AccountWarningActionEnum._('deleteStatuses');
const AccountWarningActionEnum _$sensitive =
    const AccountWarningActionEnum._('sensitive');
const AccountWarningActionEnum _$silence =
    const AccountWarningActionEnum._('silence');
const AccountWarningActionEnum _$suspend =
    const AccountWarningActionEnum._('suspend');

AccountWarningActionEnum _$valueOf(String name) {
  switch (name) {
    case 'none':
      return _$none;
    case 'disable':
      return _$disable;
    case 'markStatusesAsSensitive':
      return _$markStatusesAsSensitive;
    case 'deleteStatuses':
      return _$deleteStatuses;
    case 'sensitive':
      return _$sensitive;
    case 'silence':
      return _$silence;
    case 'suspend':
      return _$suspend;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AccountWarningActionEnum> _$values =
    BuiltSet<AccountWarningActionEnum>(const <AccountWarningActionEnum>[
  _$none,
  _$disable,
  _$markStatusesAsSensitive,
  _$deleteStatuses,
  _$sensitive,
  _$silence,
  _$suspend,
]);

class _$AccountWarningActionEnumMeta {
  const _$AccountWarningActionEnumMeta();
  AccountWarningActionEnum get none => _$none;
  AccountWarningActionEnum get disable => _$disable;
  AccountWarningActionEnum get markStatusesAsSensitive =>
      _$markStatusesAsSensitive;
  AccountWarningActionEnum get deleteStatuses => _$deleteStatuses;
  AccountWarningActionEnum get sensitive => _$sensitive;
  AccountWarningActionEnum get silence => _$silence;
  AccountWarningActionEnum get suspend => _$suspend;
  AccountWarningActionEnum valueOf(String name) => _$valueOf(name);
  BuiltSet<AccountWarningActionEnum> get values => _$values;
}

abstract class _$AccountWarningActionEnumMixin {
  // ignore: non_constant_identifier_names
  _$AccountWarningActionEnumMeta get AccountWarningActionEnum =>
      const _$AccountWarningActionEnumMeta();
}

Serializer<AccountWarningActionEnum> _$accountWarningActionEnumSerializer =
    _$AccountWarningActionEnumSerializer();

class _$AccountWarningActionEnumSerializer
    implements PrimitiveSerializer<AccountWarningActionEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'none': 'none',
    'disable': 'disable',
    'markStatusesAsSensitive': 'mark_statuses_as_sensitive',
    'deleteStatuses': 'delete_statuses',
    'sensitive': 'sensitive',
    'silence': 'silence',
    'suspend': 'suspend',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'none': 'none',
    'disable': 'disable',
    'mark_statuses_as_sensitive': 'markStatusesAsSensitive',
    'delete_statuses': 'deleteStatuses',
    'sensitive': 'sensitive',
    'silence': 'silence',
    'suspend': 'suspend',
  };

  @override
  final Iterable<Type> types = const <Type>[AccountWarningActionEnum];
  @override
  final String wireName = 'AccountWarningActionEnum';

  @override
  Object serialize(Serializers serializers, AccountWarningActionEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AccountWarningActionEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AccountWarningActionEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
