// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status_visibility_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const StatusVisibilityEnum _$public = const StatusVisibilityEnum._('public');
const StatusVisibilityEnum _$unlisted =
    const StatusVisibilityEnum._('unlisted');
const StatusVisibilityEnum _$private = const StatusVisibilityEnum._('private');
const StatusVisibilityEnum _$direct = const StatusVisibilityEnum._('direct');

StatusVisibilityEnum _$valueOf(String name) {
  switch (name) {
    case 'public':
      return _$public;
    case 'unlisted':
      return _$unlisted;
    case 'private':
      return _$private;
    case 'direct':
      return _$direct;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<StatusVisibilityEnum> _$values =
    BuiltSet<StatusVisibilityEnum>(const <StatusVisibilityEnum>[
  _$public,
  _$unlisted,
  _$private,
  _$direct,
]);

class _$StatusVisibilityEnumMeta {
  const _$StatusVisibilityEnumMeta();
  StatusVisibilityEnum get public => _$public;
  StatusVisibilityEnum get unlisted => _$unlisted;
  StatusVisibilityEnum get private => _$private;
  StatusVisibilityEnum get direct => _$direct;
  StatusVisibilityEnum valueOf(String name) => _$valueOf(name);
  BuiltSet<StatusVisibilityEnum> get values => _$values;
}

abstract class _$StatusVisibilityEnumMixin {
  // ignore: non_constant_identifier_names
  _$StatusVisibilityEnumMeta get StatusVisibilityEnum =>
      const _$StatusVisibilityEnumMeta();
}

Serializer<StatusVisibilityEnum> _$statusVisibilityEnumSerializer =
    _$StatusVisibilityEnumSerializer();

class _$StatusVisibilityEnumSerializer
    implements PrimitiveSerializer<StatusVisibilityEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'public': 'public',
    'unlisted': 'unlisted',
    'private': 'private',
    'direct': 'direct',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'public': 'public',
    'unlisted': 'unlisted',
    'private': 'private',
    'direct': 'direct',
  };

  @override
  final Iterable<Type> types = const <Type>[StatusVisibilityEnum];
  @override
  final String wireName = 'StatusVisibilityEnum';

  @override
  Object serialize(Serializers serializers, StatusVisibilityEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  StatusVisibilityEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      StatusVisibilityEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
