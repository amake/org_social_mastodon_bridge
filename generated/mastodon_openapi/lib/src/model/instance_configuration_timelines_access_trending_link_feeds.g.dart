// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instance_configuration_timelines_access_trending_link_feeds.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InstanceConfigurationTimelinesAccessTrendingLinkFeedsLocalEnum
    _$instanceConfigurationTimelinesAccessTrendingLinkFeedsLocalEnum_public =
    const InstanceConfigurationTimelinesAccessTrendingLinkFeedsLocalEnum._(
        'public');
const InstanceConfigurationTimelinesAccessTrendingLinkFeedsLocalEnum
    _$instanceConfigurationTimelinesAccessTrendingLinkFeedsLocalEnum_authenticated =
    const InstanceConfigurationTimelinesAccessTrendingLinkFeedsLocalEnum._(
        'authenticated');

InstanceConfigurationTimelinesAccessTrendingLinkFeedsLocalEnum
    _$instanceConfigurationTimelinesAccessTrendingLinkFeedsLocalEnumValueOf(
        String name) {
  switch (name) {
    case 'public':
      return _$instanceConfigurationTimelinesAccessTrendingLinkFeedsLocalEnum_public;
    case 'authenticated':
      return _$instanceConfigurationTimelinesAccessTrendingLinkFeedsLocalEnum_authenticated;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<InstanceConfigurationTimelinesAccessTrendingLinkFeedsLocalEnum>
    _$instanceConfigurationTimelinesAccessTrendingLinkFeedsLocalEnumValues =
    BuiltSet<
        InstanceConfigurationTimelinesAccessTrendingLinkFeedsLocalEnum>(const <InstanceConfigurationTimelinesAccessTrendingLinkFeedsLocalEnum>[
  _$instanceConfigurationTimelinesAccessTrendingLinkFeedsLocalEnum_public,
  _$instanceConfigurationTimelinesAccessTrendingLinkFeedsLocalEnum_authenticated,
]);

const InstanceConfigurationTimelinesAccessTrendingLinkFeedsRemoteEnum
    _$instanceConfigurationTimelinesAccessTrendingLinkFeedsRemoteEnum_public =
    const InstanceConfigurationTimelinesAccessTrendingLinkFeedsRemoteEnum._(
        'public');
const InstanceConfigurationTimelinesAccessTrendingLinkFeedsRemoteEnum
    _$instanceConfigurationTimelinesAccessTrendingLinkFeedsRemoteEnum_authenticated =
    const InstanceConfigurationTimelinesAccessTrendingLinkFeedsRemoteEnum._(
        'authenticated');
const InstanceConfigurationTimelinesAccessTrendingLinkFeedsRemoteEnum
    _$instanceConfigurationTimelinesAccessTrendingLinkFeedsRemoteEnum_disabled =
    const InstanceConfigurationTimelinesAccessTrendingLinkFeedsRemoteEnum._(
        'disabled');

InstanceConfigurationTimelinesAccessTrendingLinkFeedsRemoteEnum
    _$instanceConfigurationTimelinesAccessTrendingLinkFeedsRemoteEnumValueOf(
        String name) {
  switch (name) {
    case 'public':
      return _$instanceConfigurationTimelinesAccessTrendingLinkFeedsRemoteEnum_public;
    case 'authenticated':
      return _$instanceConfigurationTimelinesAccessTrendingLinkFeedsRemoteEnum_authenticated;
    case 'disabled':
      return _$instanceConfigurationTimelinesAccessTrendingLinkFeedsRemoteEnum_disabled;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<InstanceConfigurationTimelinesAccessTrendingLinkFeedsRemoteEnum>
    _$instanceConfigurationTimelinesAccessTrendingLinkFeedsRemoteEnumValues =
    BuiltSet<
        InstanceConfigurationTimelinesAccessTrendingLinkFeedsRemoteEnum>(const <InstanceConfigurationTimelinesAccessTrendingLinkFeedsRemoteEnum>[
  _$instanceConfigurationTimelinesAccessTrendingLinkFeedsRemoteEnum_public,
  _$instanceConfigurationTimelinesAccessTrendingLinkFeedsRemoteEnum_authenticated,
  _$instanceConfigurationTimelinesAccessTrendingLinkFeedsRemoteEnum_disabled,
]);

Serializer<InstanceConfigurationTimelinesAccessTrendingLinkFeedsLocalEnum>
    _$instanceConfigurationTimelinesAccessTrendingLinkFeedsLocalEnumSerializer =
    _$InstanceConfigurationTimelinesAccessTrendingLinkFeedsLocalEnumSerializer();
Serializer<InstanceConfigurationTimelinesAccessTrendingLinkFeedsRemoteEnum>
    _$instanceConfigurationTimelinesAccessTrendingLinkFeedsRemoteEnumSerializer =
    _$InstanceConfigurationTimelinesAccessTrendingLinkFeedsRemoteEnumSerializer();

class _$InstanceConfigurationTimelinesAccessTrendingLinkFeedsLocalEnumSerializer
    implements
        PrimitiveSerializer<
            InstanceConfigurationTimelinesAccessTrendingLinkFeedsLocalEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'public': 'public',
    'authenticated': 'authenticated',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'public': 'public',
    'authenticated': 'authenticated',
  };

  @override
  final Iterable<Type> types = const <Type>[
    InstanceConfigurationTimelinesAccessTrendingLinkFeedsLocalEnum
  ];
  @override
  final String wireName =
      'InstanceConfigurationTimelinesAccessTrendingLinkFeedsLocalEnum';

  @override
  Object serialize(Serializers serializers,
          InstanceConfigurationTimelinesAccessTrendingLinkFeedsLocalEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InstanceConfigurationTimelinesAccessTrendingLinkFeedsLocalEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InstanceConfigurationTimelinesAccessTrendingLinkFeedsLocalEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$InstanceConfigurationTimelinesAccessTrendingLinkFeedsRemoteEnumSerializer
    implements
        PrimitiveSerializer<
            InstanceConfigurationTimelinesAccessTrendingLinkFeedsRemoteEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'public': 'public',
    'authenticated': 'authenticated',
    'disabled': 'disabled',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'public': 'public',
    'authenticated': 'authenticated',
    'disabled': 'disabled',
  };

  @override
  final Iterable<Type> types = const <Type>[
    InstanceConfigurationTimelinesAccessTrendingLinkFeedsRemoteEnum
  ];
  @override
  final String wireName =
      'InstanceConfigurationTimelinesAccessTrendingLinkFeedsRemoteEnum';

  @override
  Object serialize(
          Serializers serializers,
          InstanceConfigurationTimelinesAccessTrendingLinkFeedsRemoteEnum
              object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InstanceConfigurationTimelinesAccessTrendingLinkFeedsRemoteEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InstanceConfigurationTimelinesAccessTrendingLinkFeedsRemoteEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$InstanceConfigurationTimelinesAccessTrendingLinkFeeds
    extends InstanceConfigurationTimelinesAccessTrendingLinkFeeds {
  @override
  final InstanceConfigurationTimelinesAccessTrendingLinkFeedsLocalEnum? local;
  @override
  final InstanceConfigurationTimelinesAccessTrendingLinkFeedsRemoteEnum? remote;

  factory _$InstanceConfigurationTimelinesAccessTrendingLinkFeeds(
          [void Function(
                  InstanceConfigurationTimelinesAccessTrendingLinkFeedsBuilder)?
              updates]) =>
      (InstanceConfigurationTimelinesAccessTrendingLinkFeedsBuilder()
            ..update(updates))
          ._build();

  _$InstanceConfigurationTimelinesAccessTrendingLinkFeeds._(
      {this.local, this.remote})
      : super._();
  @override
  InstanceConfigurationTimelinesAccessTrendingLinkFeeds rebuild(
          void Function(
                  InstanceConfigurationTimelinesAccessTrendingLinkFeedsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceConfigurationTimelinesAccessTrendingLinkFeedsBuilder toBuilder() =>
      InstanceConfigurationTimelinesAccessTrendingLinkFeedsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstanceConfigurationTimelinesAccessTrendingLinkFeeds &&
        local == other.local &&
        remote == other.remote;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, local.hashCode);
    _$hash = $jc(_$hash, remote.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'InstanceConfigurationTimelinesAccessTrendingLinkFeeds')
          ..add('local', local)
          ..add('remote', remote))
        .toString();
  }
}

class InstanceConfigurationTimelinesAccessTrendingLinkFeedsBuilder
    implements
        Builder<InstanceConfigurationTimelinesAccessTrendingLinkFeeds,
            InstanceConfigurationTimelinesAccessTrendingLinkFeedsBuilder> {
  _$InstanceConfigurationTimelinesAccessTrendingLinkFeeds? _$v;

  InstanceConfigurationTimelinesAccessTrendingLinkFeedsLocalEnum? _local;
  InstanceConfigurationTimelinesAccessTrendingLinkFeedsLocalEnum? get local =>
      _$this._local;
  set local(
          InstanceConfigurationTimelinesAccessTrendingLinkFeedsLocalEnum?
              local) =>
      _$this._local = local;

  InstanceConfigurationTimelinesAccessTrendingLinkFeedsRemoteEnum? _remote;
  InstanceConfigurationTimelinesAccessTrendingLinkFeedsRemoteEnum? get remote =>
      _$this._remote;
  set remote(
          InstanceConfigurationTimelinesAccessTrendingLinkFeedsRemoteEnum?
              remote) =>
      _$this._remote = remote;

  InstanceConfigurationTimelinesAccessTrendingLinkFeedsBuilder() {
    InstanceConfigurationTimelinesAccessTrendingLinkFeeds._defaults(this);
  }

  InstanceConfigurationTimelinesAccessTrendingLinkFeedsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _local = $v.local;
      _remote = $v.remote;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstanceConfigurationTimelinesAccessTrendingLinkFeeds other) {
    _$v = other as _$InstanceConfigurationTimelinesAccessTrendingLinkFeeds;
  }

  @override
  void update(
      void Function(
              InstanceConfigurationTimelinesAccessTrendingLinkFeedsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  InstanceConfigurationTimelinesAccessTrendingLinkFeeds build() => _build();

  _$InstanceConfigurationTimelinesAccessTrendingLinkFeeds _build() {
    final _$result = _$v ??
        _$InstanceConfigurationTimelinesAccessTrendingLinkFeeds._(
          local: local,
          remote: remote,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
