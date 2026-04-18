// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quote_state_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const QuoteStateEnum _$pending = const QuoteStateEnum._('pending');
const QuoteStateEnum _$accepted = const QuoteStateEnum._('accepted');
const QuoteStateEnum _$rejected = const QuoteStateEnum._('rejected');
const QuoteStateEnum _$revoked = const QuoteStateEnum._('revoked');
const QuoteStateEnum _$deleted = const QuoteStateEnum._('deleted');
const QuoteStateEnum _$unauthorized = const QuoteStateEnum._('unauthorized');
const QuoteStateEnum _$blockedAccount =
    const QuoteStateEnum._('blockedAccount');
const QuoteStateEnum _$blockedDomain = const QuoteStateEnum._('blockedDomain');
const QuoteStateEnum _$mutedAccount = const QuoteStateEnum._('mutedAccount');

QuoteStateEnum _$valueOf(String name) {
  switch (name) {
    case 'pending':
      return _$pending;
    case 'accepted':
      return _$accepted;
    case 'rejected':
      return _$rejected;
    case 'revoked':
      return _$revoked;
    case 'deleted':
      return _$deleted;
    case 'unauthorized':
      return _$unauthorized;
    case 'blockedAccount':
      return _$blockedAccount;
    case 'blockedDomain':
      return _$blockedDomain;
    case 'mutedAccount':
      return _$mutedAccount;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<QuoteStateEnum> _$values =
    BuiltSet<QuoteStateEnum>(const <QuoteStateEnum>[
  _$pending,
  _$accepted,
  _$rejected,
  _$revoked,
  _$deleted,
  _$unauthorized,
  _$blockedAccount,
  _$blockedDomain,
  _$mutedAccount,
]);

class _$QuoteStateEnumMeta {
  const _$QuoteStateEnumMeta();
  QuoteStateEnum get pending => _$pending;
  QuoteStateEnum get accepted => _$accepted;
  QuoteStateEnum get rejected => _$rejected;
  QuoteStateEnum get revoked => _$revoked;
  QuoteStateEnum get deleted => _$deleted;
  QuoteStateEnum get unauthorized => _$unauthorized;
  QuoteStateEnum get blockedAccount => _$blockedAccount;
  QuoteStateEnum get blockedDomain => _$blockedDomain;
  QuoteStateEnum get mutedAccount => _$mutedAccount;
  QuoteStateEnum valueOf(String name) => _$valueOf(name);
  BuiltSet<QuoteStateEnum> get values => _$values;
}

abstract class _$QuoteStateEnumMixin {
  // ignore: non_constant_identifier_names
  _$QuoteStateEnumMeta get QuoteStateEnum => const _$QuoteStateEnumMeta();
}

Serializer<QuoteStateEnum> _$quoteStateEnumSerializer =
    _$QuoteStateEnumSerializer();

class _$QuoteStateEnumSerializer
    implements PrimitiveSerializer<QuoteStateEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'pending': 'pending',
    'accepted': 'accepted',
    'rejected': 'rejected',
    'revoked': 'revoked',
    'deleted': 'deleted',
    'unauthorized': 'unauthorized',
    'blockedAccount': 'blocked_account',
    'blockedDomain': 'blocked_domain',
    'mutedAccount': 'muted_account',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'pending': 'pending',
    'accepted': 'accepted',
    'rejected': 'rejected',
    'revoked': 'revoked',
    'deleted': 'deleted',
    'unauthorized': 'unauthorized',
    'blocked_account': 'blockedAccount',
    'blocked_domain': 'blockedDomain',
    'muted_account': 'mutedAccount',
  };

  @override
  final Iterable<Type> types = const <Type>[QuoteStateEnum];
  @override
  final String wireName = 'QuoteStateEnum';

  @override
  Object serialize(Serializers serializers, QuoteStateEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  QuoteStateEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      QuoteStateEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
