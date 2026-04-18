// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instance_configuration_timelines_access_hashtag_feeds.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InstanceConfigurationTimelinesAccessHashtagFeedsLocalEnum
    _$instanceConfigurationTimelinesAccessHashtagFeedsLocalEnum_public =
    const InstanceConfigurationTimelinesAccessHashtagFeedsLocalEnum._('public');
const InstanceConfigurationTimelinesAccessHashtagFeedsLocalEnum
    _$instanceConfigurationTimelinesAccessHashtagFeedsLocalEnum_authenticated =
    const InstanceConfigurationTimelinesAccessHashtagFeedsLocalEnum._(
        'authenticated');

InstanceConfigurationTimelinesAccessHashtagFeedsLocalEnum
    _$instanceConfigurationTimelinesAccessHashtagFeedsLocalEnumValueOf(
        String name) {
  switch (name) {
    case 'public':
      return _$instanceConfigurationTimelinesAccessHashtagFeedsLocalEnum_public;
    case 'authenticated':
      return _$instanceConfigurationTimelinesAccessHashtagFeedsLocalEnum_authenticated;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<InstanceConfigurationTimelinesAccessHashtagFeedsLocalEnum>
    _$instanceConfigurationTimelinesAccessHashtagFeedsLocalEnumValues =
    BuiltSet<
        InstanceConfigurationTimelinesAccessHashtagFeedsLocalEnum>(const <InstanceConfigurationTimelinesAccessHashtagFeedsLocalEnum>[
  _$instanceConfigurationTimelinesAccessHashtagFeedsLocalEnum_public,
  _$instanceConfigurationTimelinesAccessHashtagFeedsLocalEnum_authenticated,
]);

const InstanceConfigurationTimelinesAccessHashtagFeedsRemoteEnum
    _$instanceConfigurationTimelinesAccessHashtagFeedsRemoteEnum_public =
    const InstanceConfigurationTimelinesAccessHashtagFeedsRemoteEnum._(
        'public');
const InstanceConfigurationTimelinesAccessHashtagFeedsRemoteEnum
    _$instanceConfigurationTimelinesAccessHashtagFeedsRemoteEnum_authenticated =
    const InstanceConfigurationTimelinesAccessHashtagFeedsRemoteEnum._(
        'authenticated');
const InstanceConfigurationTimelinesAccessHashtagFeedsRemoteEnum
    _$instanceConfigurationTimelinesAccessHashtagFeedsRemoteEnum_disabled =
    const InstanceConfigurationTimelinesAccessHashtagFeedsRemoteEnum._(
        'disabled');

InstanceConfigurationTimelinesAccessHashtagFeedsRemoteEnum
    _$instanceConfigurationTimelinesAccessHashtagFeedsRemoteEnumValueOf(
        String name) {
  switch (name) {
    case 'public':
      return _$instanceConfigurationTimelinesAccessHashtagFeedsRemoteEnum_public;
    case 'authenticated':
      return _$instanceConfigurationTimelinesAccessHashtagFeedsRemoteEnum_authenticated;
    case 'disabled':
      return _$instanceConfigurationTimelinesAccessHashtagFeedsRemoteEnum_disabled;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<InstanceConfigurationTimelinesAccessHashtagFeedsRemoteEnum>
    _$instanceConfigurationTimelinesAccessHashtagFeedsRemoteEnumValues =
    BuiltSet<
        InstanceConfigurationTimelinesAccessHashtagFeedsRemoteEnum>(const <InstanceConfigurationTimelinesAccessHashtagFeedsRemoteEnum>[
  _$instanceConfigurationTimelinesAccessHashtagFeedsRemoteEnum_public,
  _$instanceConfigurationTimelinesAccessHashtagFeedsRemoteEnum_authenticated,
  _$instanceConfigurationTimelinesAccessHashtagFeedsRemoteEnum_disabled,
]);

Serializer<InstanceConfigurationTimelinesAccessHashtagFeedsLocalEnum>
    _$instanceConfigurationTimelinesAccessHashtagFeedsLocalEnumSerializer =
    _$InstanceConfigurationTimelinesAccessHashtagFeedsLocalEnumSerializer();
Serializer<InstanceConfigurationTimelinesAccessHashtagFeedsRemoteEnum>
    _$instanceConfigurationTimelinesAccessHashtagFeedsRemoteEnumSerializer =
    _$InstanceConfigurationTimelinesAccessHashtagFeedsRemoteEnumSerializer();

class _$InstanceConfigurationTimelinesAccessHashtagFeedsLocalEnumSerializer
    implements
        PrimitiveSerializer<
            InstanceConfigurationTimelinesAccessHashtagFeedsLocalEnum> {
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
    InstanceConfigurationTimelinesAccessHashtagFeedsLocalEnum
  ];
  @override
  final String wireName =
      'InstanceConfigurationTimelinesAccessHashtagFeedsLocalEnum';

  @override
  Object serialize(Serializers serializers,
          InstanceConfigurationTimelinesAccessHashtagFeedsLocalEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InstanceConfigurationTimelinesAccessHashtagFeedsLocalEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InstanceConfigurationTimelinesAccessHashtagFeedsLocalEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$InstanceConfigurationTimelinesAccessHashtagFeedsRemoteEnumSerializer
    implements
        PrimitiveSerializer<
            InstanceConfigurationTimelinesAccessHashtagFeedsRemoteEnum> {
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
    InstanceConfigurationTimelinesAccessHashtagFeedsRemoteEnum
  ];
  @override
  final String wireName =
      'InstanceConfigurationTimelinesAccessHashtagFeedsRemoteEnum';

  @override
  Object serialize(Serializers serializers,
          InstanceConfigurationTimelinesAccessHashtagFeedsRemoteEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InstanceConfigurationTimelinesAccessHashtagFeedsRemoteEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InstanceConfigurationTimelinesAccessHashtagFeedsRemoteEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$InstanceConfigurationTimelinesAccessHashtagFeeds
    extends InstanceConfigurationTimelinesAccessHashtagFeeds {
  @override
  final InstanceConfigurationTimelinesAccessHashtagFeedsLocalEnum? local;
  @override
  final InstanceConfigurationTimelinesAccessHashtagFeedsRemoteEnum? remote;

  factory _$InstanceConfigurationTimelinesAccessHashtagFeeds(
          [void Function(
                  InstanceConfigurationTimelinesAccessHashtagFeedsBuilder)?
              updates]) =>
      (InstanceConfigurationTimelinesAccessHashtagFeedsBuilder()
            ..update(updates))
          ._build();

  _$InstanceConfigurationTimelinesAccessHashtagFeeds._(
      {this.local, this.remote})
      : super._();
  @override
  InstanceConfigurationTimelinesAccessHashtagFeeds rebuild(
          void Function(InstanceConfigurationTimelinesAccessHashtagFeedsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceConfigurationTimelinesAccessHashtagFeedsBuilder toBuilder() =>
      InstanceConfigurationTimelinesAccessHashtagFeedsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstanceConfigurationTimelinesAccessHashtagFeeds &&
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
            r'InstanceConfigurationTimelinesAccessHashtagFeeds')
          ..add('local', local)
          ..add('remote', remote))
        .toString();
  }
}

class InstanceConfigurationTimelinesAccessHashtagFeedsBuilder
    implements
        Builder<InstanceConfigurationTimelinesAccessHashtagFeeds,
            InstanceConfigurationTimelinesAccessHashtagFeedsBuilder> {
  _$InstanceConfigurationTimelinesAccessHashtagFeeds? _$v;

  InstanceConfigurationTimelinesAccessHashtagFeedsLocalEnum? _local;
  InstanceConfigurationTimelinesAccessHashtagFeedsLocalEnum? get local =>
      _$this._local;
  set local(InstanceConfigurationTimelinesAccessHashtagFeedsLocalEnum? local) =>
      _$this._local = local;

  InstanceConfigurationTimelinesAccessHashtagFeedsRemoteEnum? _remote;
  InstanceConfigurationTimelinesAccessHashtagFeedsRemoteEnum? get remote =>
      _$this._remote;
  set remote(
          InstanceConfigurationTimelinesAccessHashtagFeedsRemoteEnum? remote) =>
      _$this._remote = remote;

  InstanceConfigurationTimelinesAccessHashtagFeedsBuilder() {
    InstanceConfigurationTimelinesAccessHashtagFeeds._defaults(this);
  }

  InstanceConfigurationTimelinesAccessHashtagFeedsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _local = $v.local;
      _remote = $v.remote;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstanceConfigurationTimelinesAccessHashtagFeeds other) {
    _$v = other as _$InstanceConfigurationTimelinesAccessHashtagFeeds;
  }

  @override
  void update(
      void Function(InstanceConfigurationTimelinesAccessHashtagFeedsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  InstanceConfigurationTimelinesAccessHashtagFeeds build() => _build();

  _$InstanceConfigurationTimelinesAccessHashtagFeeds _build() {
    final _$result = _$v ??
        _$InstanceConfigurationTimelinesAccessHashtagFeeds._(
          local: local,
          remote: remote,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
