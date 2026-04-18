// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_instance_configuration_accounts.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V1InstanceConfigurationAccounts
    extends V1InstanceConfigurationAccounts {
  @override
  final int maxFeaturedTags;

  factory _$V1InstanceConfigurationAccounts(
          [void Function(V1InstanceConfigurationAccountsBuilder)? updates]) =>
      (V1InstanceConfigurationAccountsBuilder()..update(updates))._build();

  _$V1InstanceConfigurationAccounts._({required this.maxFeaturedTags})
      : super._();
  @override
  V1InstanceConfigurationAccounts rebuild(
          void Function(V1InstanceConfigurationAccountsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V1InstanceConfigurationAccountsBuilder toBuilder() =>
      V1InstanceConfigurationAccountsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V1InstanceConfigurationAccounts &&
        maxFeaturedTags == other.maxFeaturedTags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, maxFeaturedTags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'V1InstanceConfigurationAccounts')
          ..add('maxFeaturedTags', maxFeaturedTags))
        .toString();
  }
}

class V1InstanceConfigurationAccountsBuilder
    implements
        Builder<V1InstanceConfigurationAccounts,
            V1InstanceConfigurationAccountsBuilder> {
  _$V1InstanceConfigurationAccounts? _$v;

  int? _maxFeaturedTags;
  int? get maxFeaturedTags => _$this._maxFeaturedTags;
  set maxFeaturedTags(int? maxFeaturedTags) =>
      _$this._maxFeaturedTags = maxFeaturedTags;

  V1InstanceConfigurationAccountsBuilder() {
    V1InstanceConfigurationAccounts._defaults(this);
  }

  V1InstanceConfigurationAccountsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _maxFeaturedTags = $v.maxFeaturedTags;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V1InstanceConfigurationAccounts other) {
    _$v = other as _$V1InstanceConfigurationAccounts;
  }

  @override
  void update(void Function(V1InstanceConfigurationAccountsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V1InstanceConfigurationAccounts build() => _build();

  _$V1InstanceConfigurationAccounts _build() {
    final _$result = _$v ??
        _$V1InstanceConfigurationAccounts._(
          maxFeaturedTags: BuiltValueNullFieldError.checkNotNull(
              maxFeaturedTags,
              r'V1InstanceConfigurationAccounts',
              'maxFeaturedTags'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
