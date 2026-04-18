// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instance_configuration_timelines_access_live_feeds.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InstanceConfigurationTimelinesAccessLiveFeedsLocalEnum
    _$instanceConfigurationTimelinesAccessLiveFeedsLocalEnum_public =
    const InstanceConfigurationTimelinesAccessLiveFeedsLocalEnum._('public');
const InstanceConfigurationTimelinesAccessLiveFeedsLocalEnum
    _$instanceConfigurationTimelinesAccessLiveFeedsLocalEnum_authenticated =
    const InstanceConfigurationTimelinesAccessLiveFeedsLocalEnum._(
        'authenticated');
const InstanceConfigurationTimelinesAccessLiveFeedsLocalEnum
    _$instanceConfigurationTimelinesAccessLiveFeedsLocalEnum_disabled =
    const InstanceConfigurationTimelinesAccessLiveFeedsLocalEnum._('disabled');

InstanceConfigurationTimelinesAccessLiveFeedsLocalEnum
    _$instanceConfigurationTimelinesAccessLiveFeedsLocalEnumValueOf(
        String name) {
  switch (name) {
    case 'public':
      return _$instanceConfigurationTimelinesAccessLiveFeedsLocalEnum_public;
    case 'authenticated':
      return _$instanceConfigurationTimelinesAccessLiveFeedsLocalEnum_authenticated;
    case 'disabled':
      return _$instanceConfigurationTimelinesAccessLiveFeedsLocalEnum_disabled;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<InstanceConfigurationTimelinesAccessLiveFeedsLocalEnum>
    _$instanceConfigurationTimelinesAccessLiveFeedsLocalEnumValues = BuiltSet<
        InstanceConfigurationTimelinesAccessLiveFeedsLocalEnum>(const <InstanceConfigurationTimelinesAccessLiveFeedsLocalEnum>[
  _$instanceConfigurationTimelinesAccessLiveFeedsLocalEnum_public,
  _$instanceConfigurationTimelinesAccessLiveFeedsLocalEnum_authenticated,
  _$instanceConfigurationTimelinesAccessLiveFeedsLocalEnum_disabled,
]);

const InstanceConfigurationTimelinesAccessLiveFeedsRemoteEnum
    _$instanceConfigurationTimelinesAccessLiveFeedsRemoteEnum_public =
    const InstanceConfigurationTimelinesAccessLiveFeedsRemoteEnum._('public');
const InstanceConfigurationTimelinesAccessLiveFeedsRemoteEnum
    _$instanceConfigurationTimelinesAccessLiveFeedsRemoteEnum_authenticated =
    const InstanceConfigurationTimelinesAccessLiveFeedsRemoteEnum._(
        'authenticated');
const InstanceConfigurationTimelinesAccessLiveFeedsRemoteEnum
    _$instanceConfigurationTimelinesAccessLiveFeedsRemoteEnum_disabled =
    const InstanceConfigurationTimelinesAccessLiveFeedsRemoteEnum._('disabled');

InstanceConfigurationTimelinesAccessLiveFeedsRemoteEnum
    _$instanceConfigurationTimelinesAccessLiveFeedsRemoteEnumValueOf(
        String name) {
  switch (name) {
    case 'public':
      return _$instanceConfigurationTimelinesAccessLiveFeedsRemoteEnum_public;
    case 'authenticated':
      return _$instanceConfigurationTimelinesAccessLiveFeedsRemoteEnum_authenticated;
    case 'disabled':
      return _$instanceConfigurationTimelinesAccessLiveFeedsRemoteEnum_disabled;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<InstanceConfigurationTimelinesAccessLiveFeedsRemoteEnum>
    _$instanceConfigurationTimelinesAccessLiveFeedsRemoteEnumValues = BuiltSet<
        InstanceConfigurationTimelinesAccessLiveFeedsRemoteEnum>(const <InstanceConfigurationTimelinesAccessLiveFeedsRemoteEnum>[
  _$instanceConfigurationTimelinesAccessLiveFeedsRemoteEnum_public,
  _$instanceConfigurationTimelinesAccessLiveFeedsRemoteEnum_authenticated,
  _$instanceConfigurationTimelinesAccessLiveFeedsRemoteEnum_disabled,
]);

Serializer<InstanceConfigurationTimelinesAccessLiveFeedsLocalEnum>
    _$instanceConfigurationTimelinesAccessLiveFeedsLocalEnumSerializer =
    _$InstanceConfigurationTimelinesAccessLiveFeedsLocalEnumSerializer();
Serializer<InstanceConfigurationTimelinesAccessLiveFeedsRemoteEnum>
    _$instanceConfigurationTimelinesAccessLiveFeedsRemoteEnumSerializer =
    _$InstanceConfigurationTimelinesAccessLiveFeedsRemoteEnumSerializer();

class _$InstanceConfigurationTimelinesAccessLiveFeedsLocalEnumSerializer
    implements
        PrimitiveSerializer<
            InstanceConfigurationTimelinesAccessLiveFeedsLocalEnum> {
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
    InstanceConfigurationTimelinesAccessLiveFeedsLocalEnum
  ];
  @override
  final String wireName =
      'InstanceConfigurationTimelinesAccessLiveFeedsLocalEnum';

  @override
  Object serialize(Serializers serializers,
          InstanceConfigurationTimelinesAccessLiveFeedsLocalEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InstanceConfigurationTimelinesAccessLiveFeedsLocalEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InstanceConfigurationTimelinesAccessLiveFeedsLocalEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$InstanceConfigurationTimelinesAccessLiveFeedsRemoteEnumSerializer
    implements
        PrimitiveSerializer<
            InstanceConfigurationTimelinesAccessLiveFeedsRemoteEnum> {
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
    InstanceConfigurationTimelinesAccessLiveFeedsRemoteEnum
  ];
  @override
  final String wireName =
      'InstanceConfigurationTimelinesAccessLiveFeedsRemoteEnum';

  @override
  Object serialize(Serializers serializers,
          InstanceConfigurationTimelinesAccessLiveFeedsRemoteEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InstanceConfigurationTimelinesAccessLiveFeedsRemoteEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InstanceConfigurationTimelinesAccessLiveFeedsRemoteEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$InstanceConfigurationTimelinesAccessLiveFeeds
    extends InstanceConfigurationTimelinesAccessLiveFeeds {
  @override
  final InstanceConfigurationTimelinesAccessLiveFeedsLocalEnum? local;
  @override
  final InstanceConfigurationTimelinesAccessLiveFeedsRemoteEnum? remote;

  factory _$InstanceConfigurationTimelinesAccessLiveFeeds(
          [void Function(InstanceConfigurationTimelinesAccessLiveFeedsBuilder)?
              updates]) =>
      (InstanceConfigurationTimelinesAccessLiveFeedsBuilder()..update(updates))
          ._build();

  _$InstanceConfigurationTimelinesAccessLiveFeeds._({this.local, this.remote})
      : super._();
  @override
  InstanceConfigurationTimelinesAccessLiveFeeds rebuild(
          void Function(InstanceConfigurationTimelinesAccessLiveFeedsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceConfigurationTimelinesAccessLiveFeedsBuilder toBuilder() =>
      InstanceConfigurationTimelinesAccessLiveFeedsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstanceConfigurationTimelinesAccessLiveFeeds &&
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
            r'InstanceConfigurationTimelinesAccessLiveFeeds')
          ..add('local', local)
          ..add('remote', remote))
        .toString();
  }
}

class InstanceConfigurationTimelinesAccessLiveFeedsBuilder
    implements
        Builder<InstanceConfigurationTimelinesAccessLiveFeeds,
            InstanceConfigurationTimelinesAccessLiveFeedsBuilder> {
  _$InstanceConfigurationTimelinesAccessLiveFeeds? _$v;

  InstanceConfigurationTimelinesAccessLiveFeedsLocalEnum? _local;
  InstanceConfigurationTimelinesAccessLiveFeedsLocalEnum? get local =>
      _$this._local;
  set local(InstanceConfigurationTimelinesAccessLiveFeedsLocalEnum? local) =>
      _$this._local = local;

  InstanceConfigurationTimelinesAccessLiveFeedsRemoteEnum? _remote;
  InstanceConfigurationTimelinesAccessLiveFeedsRemoteEnum? get remote =>
      _$this._remote;
  set remote(InstanceConfigurationTimelinesAccessLiveFeedsRemoteEnum? remote) =>
      _$this._remote = remote;

  InstanceConfigurationTimelinesAccessLiveFeedsBuilder() {
    InstanceConfigurationTimelinesAccessLiveFeeds._defaults(this);
  }

  InstanceConfigurationTimelinesAccessLiveFeedsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _local = $v.local;
      _remote = $v.remote;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstanceConfigurationTimelinesAccessLiveFeeds other) {
    _$v = other as _$InstanceConfigurationTimelinesAccessLiveFeeds;
  }

  @override
  void update(
      void Function(InstanceConfigurationTimelinesAccessLiveFeedsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  InstanceConfigurationTimelinesAccessLiveFeeds build() => _build();

  _$InstanceConfigurationTimelinesAccessLiveFeeds _build() {
    final _$result = _$v ??
        _$InstanceConfigurationTimelinesAccessLiveFeeds._(
          local: local,
          remote: remote,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
