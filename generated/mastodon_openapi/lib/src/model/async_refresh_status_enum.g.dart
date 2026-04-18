// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'async_refresh_status_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AsyncRefreshStatusEnum _$running =
    const AsyncRefreshStatusEnum._('running');
const AsyncRefreshStatusEnum _$finished =
    const AsyncRefreshStatusEnum._('finished');

AsyncRefreshStatusEnum _$valueOf(String name) {
  switch (name) {
    case 'running':
      return _$running;
    case 'finished':
      return _$finished;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AsyncRefreshStatusEnum> _$values =
    BuiltSet<AsyncRefreshStatusEnum>(const <AsyncRefreshStatusEnum>[
  _$running,
  _$finished,
]);

class _$AsyncRefreshStatusEnumMeta {
  const _$AsyncRefreshStatusEnumMeta();
  AsyncRefreshStatusEnum get running => _$running;
  AsyncRefreshStatusEnum get finished => _$finished;
  AsyncRefreshStatusEnum valueOf(String name) => _$valueOf(name);
  BuiltSet<AsyncRefreshStatusEnum> get values => _$values;
}

abstract class _$AsyncRefreshStatusEnumMixin {
  // ignore: non_constant_identifier_names
  _$AsyncRefreshStatusEnumMeta get AsyncRefreshStatusEnum =>
      const _$AsyncRefreshStatusEnumMeta();
}

Serializer<AsyncRefreshStatusEnum> _$asyncRefreshStatusEnumSerializer =
    _$AsyncRefreshStatusEnumSerializer();

class _$AsyncRefreshStatusEnumSerializer
    implements PrimitiveSerializer<AsyncRefreshStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'running': 'running',
    'finished': 'finished',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'running': 'running',
    'finished': 'finished',
  };

  @override
  final Iterable<Type> types = const <Type>[AsyncRefreshStatusEnum];
  @override
  final String wireName = 'AsyncRefreshStatusEnum';

  @override
  Object serialize(Serializers serializers, AsyncRefreshStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AsyncRefreshStatusEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AsyncRefreshStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
