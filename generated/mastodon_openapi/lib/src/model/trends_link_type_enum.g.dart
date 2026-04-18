// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trends_link_type_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TrendsLinkTypeEnum _$link = const TrendsLinkTypeEnum._('link');
const TrendsLinkTypeEnum _$photo = const TrendsLinkTypeEnum._('photo');
const TrendsLinkTypeEnum _$video = const TrendsLinkTypeEnum._('video');
const TrendsLinkTypeEnum _$rich = const TrendsLinkTypeEnum._('rich');

TrendsLinkTypeEnum _$valueOf(String name) {
  switch (name) {
    case 'link':
      return _$link;
    case 'photo':
      return _$photo;
    case 'video':
      return _$video;
    case 'rich':
      return _$rich;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<TrendsLinkTypeEnum> _$values =
    BuiltSet<TrendsLinkTypeEnum>(const <TrendsLinkTypeEnum>[
  _$link,
  _$photo,
  _$video,
  _$rich,
]);

class _$TrendsLinkTypeEnumMeta {
  const _$TrendsLinkTypeEnumMeta();
  TrendsLinkTypeEnum get link => _$link;
  TrendsLinkTypeEnum get photo => _$photo;
  TrendsLinkTypeEnum get video => _$video;
  TrendsLinkTypeEnum get rich => _$rich;
  TrendsLinkTypeEnum valueOf(String name) => _$valueOf(name);
  BuiltSet<TrendsLinkTypeEnum> get values => _$values;
}

abstract class _$TrendsLinkTypeEnumMixin {
  // ignore: non_constant_identifier_names
  _$TrendsLinkTypeEnumMeta get TrendsLinkTypeEnum =>
      const _$TrendsLinkTypeEnumMeta();
}

Serializer<TrendsLinkTypeEnum> _$trendsLinkTypeEnumSerializer =
    _$TrendsLinkTypeEnumSerializer();

class _$TrendsLinkTypeEnumSerializer
    implements PrimitiveSerializer<TrendsLinkTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'link': 'link',
    'photo': 'photo',
    'video': 'video',
    'rich': 'rich',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'link': 'link',
    'photo': 'photo',
    'video': 'video',
    'rich': 'rich',
  };

  @override
  final Iterable<Type> types = const <Type>[TrendsLinkTypeEnum];
  @override
  final String wireName = 'TrendsLinkTypeEnum';

  @override
  Object serialize(Serializers serializers, TrendsLinkTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TrendsLinkTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TrendsLinkTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
