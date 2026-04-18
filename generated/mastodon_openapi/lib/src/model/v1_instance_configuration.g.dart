// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_instance_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V1InstanceConfiguration extends V1InstanceConfiguration {
  @override
  final V1InstanceConfigurationAccounts accounts;
  @override
  final V1InstanceConfigurationMediaAttachments mediaAttachments;
  @override
  final InstanceConfigurationPolls polls;
  @override
  final InstanceConfigurationStatuses statuses;

  factory _$V1InstanceConfiguration(
          [void Function(V1InstanceConfigurationBuilder)? updates]) =>
      (V1InstanceConfigurationBuilder()..update(updates))._build();

  _$V1InstanceConfiguration._(
      {required this.accounts,
      required this.mediaAttachments,
      required this.polls,
      required this.statuses})
      : super._();
  @override
  V1InstanceConfiguration rebuild(
          void Function(V1InstanceConfigurationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V1InstanceConfigurationBuilder toBuilder() =>
      V1InstanceConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V1InstanceConfiguration &&
        accounts == other.accounts &&
        mediaAttachments == other.mediaAttachments &&
        polls == other.polls &&
        statuses == other.statuses;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accounts.hashCode);
    _$hash = $jc(_$hash, mediaAttachments.hashCode);
    _$hash = $jc(_$hash, polls.hashCode);
    _$hash = $jc(_$hash, statuses.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'V1InstanceConfiguration')
          ..add('accounts', accounts)
          ..add('mediaAttachments', mediaAttachments)
          ..add('polls', polls)
          ..add('statuses', statuses))
        .toString();
  }
}

class V1InstanceConfigurationBuilder
    implements
        Builder<V1InstanceConfiguration, V1InstanceConfigurationBuilder> {
  _$V1InstanceConfiguration? _$v;

  V1InstanceConfigurationAccountsBuilder? _accounts;
  V1InstanceConfigurationAccountsBuilder get accounts =>
      _$this._accounts ??= V1InstanceConfigurationAccountsBuilder();
  set accounts(V1InstanceConfigurationAccountsBuilder? accounts) =>
      _$this._accounts = accounts;

  V1InstanceConfigurationMediaAttachmentsBuilder? _mediaAttachments;
  V1InstanceConfigurationMediaAttachmentsBuilder get mediaAttachments =>
      _$this._mediaAttachments ??=
          V1InstanceConfigurationMediaAttachmentsBuilder();
  set mediaAttachments(
          V1InstanceConfigurationMediaAttachmentsBuilder? mediaAttachments) =>
      _$this._mediaAttachments = mediaAttachments;

  InstanceConfigurationPollsBuilder? _polls;
  InstanceConfigurationPollsBuilder get polls =>
      _$this._polls ??= InstanceConfigurationPollsBuilder();
  set polls(InstanceConfigurationPollsBuilder? polls) => _$this._polls = polls;

  InstanceConfigurationStatusesBuilder? _statuses;
  InstanceConfigurationStatusesBuilder get statuses =>
      _$this._statuses ??= InstanceConfigurationStatusesBuilder();
  set statuses(InstanceConfigurationStatusesBuilder? statuses) =>
      _$this._statuses = statuses;

  V1InstanceConfigurationBuilder() {
    V1InstanceConfiguration._defaults(this);
  }

  V1InstanceConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accounts = $v.accounts.toBuilder();
      _mediaAttachments = $v.mediaAttachments.toBuilder();
      _polls = $v.polls.toBuilder();
      _statuses = $v.statuses.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V1InstanceConfiguration other) {
    _$v = other as _$V1InstanceConfiguration;
  }

  @override
  void update(void Function(V1InstanceConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V1InstanceConfiguration build() => _build();

  _$V1InstanceConfiguration _build() {
    _$V1InstanceConfiguration _$result;
    try {
      _$result = _$v ??
          _$V1InstanceConfiguration._(
            accounts: accounts.build(),
            mediaAttachments: mediaAttachments.build(),
            polls: polls.build(),
            statuses: statuses.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'accounts';
        accounts.build();
        _$failedField = 'mediaAttachments';
        mediaAttachments.build();
        _$failedField = 'polls';
        polls.build();
        _$failedField = 'statuses';
        statuses.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'V1InstanceConfiguration', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
