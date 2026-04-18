// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_replies_policy_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ListRepliesPolicyEnum _$followed =
    const ListRepliesPolicyEnum._('followed');
const ListRepliesPolicyEnum _$list = const ListRepliesPolicyEnum._('list');
const ListRepliesPolicyEnum _$none = const ListRepliesPolicyEnum._('none');

ListRepliesPolicyEnum _$valueOf(String name) {
  switch (name) {
    case 'followed':
      return _$followed;
    case 'list':
      return _$list;
    case 'none':
      return _$none;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ListRepliesPolicyEnum> _$values =
    BuiltSet<ListRepliesPolicyEnum>(const <ListRepliesPolicyEnum>[
  _$followed,
  _$list,
  _$none,
]);

class _$ListRepliesPolicyEnumMeta {
  const _$ListRepliesPolicyEnumMeta();
  ListRepliesPolicyEnum get followed => _$followed;
  ListRepliesPolicyEnum get list => _$list;
  ListRepliesPolicyEnum get none => _$none;
  ListRepliesPolicyEnum valueOf(String name) => _$valueOf(name);
  BuiltSet<ListRepliesPolicyEnum> get values => _$values;
}

abstract class _$ListRepliesPolicyEnumMixin {
  // ignore: non_constant_identifier_names
  _$ListRepliesPolicyEnumMeta get ListRepliesPolicyEnum =>
      const _$ListRepliesPolicyEnumMeta();
}

Serializer<ListRepliesPolicyEnum> _$listRepliesPolicyEnumSerializer =
    _$ListRepliesPolicyEnumSerializer();

class _$ListRepliesPolicyEnumSerializer
    implements PrimitiveSerializer<ListRepliesPolicyEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'followed': 'followed',
    'list': 'list',
    'none': 'none',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'followed': 'followed',
    'list': 'list',
    'none': 'none',
  };

  @override
  final Iterable<Type> types = const <Type>[ListRepliesPolicyEnum];
  @override
  final String wireName = 'ListRepliesPolicyEnum';

  @override
  Object serialize(Serializers serializers, ListRepliesPolicyEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ListRepliesPolicyEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ListRepliesPolicyEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
