// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_context_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const FilterContextEnum _$home = const FilterContextEnum._('home');
const FilterContextEnum _$notifications =
    const FilterContextEnum._('notifications');
const FilterContextEnum _$public = const FilterContextEnum._('public');
const FilterContextEnum _$thread = const FilterContextEnum._('thread');
const FilterContextEnum _$account = const FilterContextEnum._('account');

FilterContextEnum _$valueOf(String name) {
  switch (name) {
    case 'home':
      return _$home;
    case 'notifications':
      return _$notifications;
    case 'public':
      return _$public;
    case 'thread':
      return _$thread;
    case 'account':
      return _$account;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<FilterContextEnum> _$values =
    BuiltSet<FilterContextEnum>(const <FilterContextEnum>[
  _$home,
  _$notifications,
  _$public,
  _$thread,
  _$account,
]);

class _$FilterContextEnumMeta {
  const _$FilterContextEnumMeta();
  FilterContextEnum get home => _$home;
  FilterContextEnum get notifications => _$notifications;
  FilterContextEnum get public => _$public;
  FilterContextEnum get thread => _$thread;
  FilterContextEnum get account => _$account;
  FilterContextEnum valueOf(String name) => _$valueOf(name);
  BuiltSet<FilterContextEnum> get values => _$values;
}

abstract class _$FilterContextEnumMixin {
  // ignore: non_constant_identifier_names
  _$FilterContextEnumMeta get FilterContextEnum =>
      const _$FilterContextEnumMeta();
}

Serializer<FilterContextEnum> _$filterContextEnumSerializer =
    _$FilterContextEnumSerializer();

class _$FilterContextEnumSerializer
    implements PrimitiveSerializer<FilterContextEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'home': 'home',
    'notifications': 'notifications',
    'public': 'public',
    'thread': 'thread',
    'account': 'account',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'home': 'home',
    'notifications': 'notifications',
    'public': 'public',
    'thread': 'thread',
    'account': 'account',
  };

  @override
  final Iterable<Type> types = const <Type>[FilterContextEnum];
  @override
  final String wireName = 'FilterContextEnum';

  @override
  Object serialize(Serializers serializers, FilterContextEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  FilterContextEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      FilterContextEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
