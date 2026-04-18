// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instance_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InstanceConfiguration extends InstanceConfiguration {
  @override
  final InstanceConfigurationAccounts accounts;
  @override
  final InstanceConfigurationMediaAttachments mediaAttachments;
  @override
  final InstanceConfigurationPolls polls;
  @override
  final InstanceConfigurationStatuses statuses;
  @override
  final InstanceConfigurationTranslation translation;
  @override
  final InstanceConfigurationUrls urls;
  @override
  final bool? limitedFederation;
  @override
  final InstanceConfigurationTimelinesAccess? timelinesAccess;

  factory _$InstanceConfiguration(
          [void Function(InstanceConfigurationBuilder)? updates]) =>
      (InstanceConfigurationBuilder()..update(updates))._build();

  _$InstanceConfiguration._(
      {required this.accounts,
      required this.mediaAttachments,
      required this.polls,
      required this.statuses,
      required this.translation,
      required this.urls,
      this.limitedFederation,
      this.timelinesAccess})
      : super._();
  @override
  InstanceConfiguration rebuild(
          void Function(InstanceConfigurationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceConfigurationBuilder toBuilder() =>
      InstanceConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstanceConfiguration &&
        accounts == other.accounts &&
        mediaAttachments == other.mediaAttachments &&
        polls == other.polls &&
        statuses == other.statuses &&
        translation == other.translation &&
        urls == other.urls &&
        limitedFederation == other.limitedFederation &&
        timelinesAccess == other.timelinesAccess;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accounts.hashCode);
    _$hash = $jc(_$hash, mediaAttachments.hashCode);
    _$hash = $jc(_$hash, polls.hashCode);
    _$hash = $jc(_$hash, statuses.hashCode);
    _$hash = $jc(_$hash, translation.hashCode);
    _$hash = $jc(_$hash, urls.hashCode);
    _$hash = $jc(_$hash, limitedFederation.hashCode);
    _$hash = $jc(_$hash, timelinesAccess.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InstanceConfiguration')
          ..add('accounts', accounts)
          ..add('mediaAttachments', mediaAttachments)
          ..add('polls', polls)
          ..add('statuses', statuses)
          ..add('translation', translation)
          ..add('urls', urls)
          ..add('limitedFederation', limitedFederation)
          ..add('timelinesAccess', timelinesAccess))
        .toString();
  }
}

class InstanceConfigurationBuilder
    implements Builder<InstanceConfiguration, InstanceConfigurationBuilder> {
  _$InstanceConfiguration? _$v;

  InstanceConfigurationAccountsBuilder? _accounts;
  InstanceConfigurationAccountsBuilder get accounts =>
      _$this._accounts ??= InstanceConfigurationAccountsBuilder();
  set accounts(InstanceConfigurationAccountsBuilder? accounts) =>
      _$this._accounts = accounts;

  InstanceConfigurationMediaAttachmentsBuilder? _mediaAttachments;
  InstanceConfigurationMediaAttachmentsBuilder get mediaAttachments =>
      _$this._mediaAttachments ??=
          InstanceConfigurationMediaAttachmentsBuilder();
  set mediaAttachments(
          InstanceConfigurationMediaAttachmentsBuilder? mediaAttachments) =>
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

  InstanceConfigurationTranslationBuilder? _translation;
  InstanceConfigurationTranslationBuilder get translation =>
      _$this._translation ??= InstanceConfigurationTranslationBuilder();
  set translation(InstanceConfigurationTranslationBuilder? translation) =>
      _$this._translation = translation;

  InstanceConfigurationUrlsBuilder? _urls;
  InstanceConfigurationUrlsBuilder get urls =>
      _$this._urls ??= InstanceConfigurationUrlsBuilder();
  set urls(InstanceConfigurationUrlsBuilder? urls) => _$this._urls = urls;

  bool? _limitedFederation;
  bool? get limitedFederation => _$this._limitedFederation;
  set limitedFederation(bool? limitedFederation) =>
      _$this._limitedFederation = limitedFederation;

  InstanceConfigurationTimelinesAccessBuilder? _timelinesAccess;
  InstanceConfigurationTimelinesAccessBuilder get timelinesAccess =>
      _$this._timelinesAccess ??= InstanceConfigurationTimelinesAccessBuilder();
  set timelinesAccess(
          InstanceConfigurationTimelinesAccessBuilder? timelinesAccess) =>
      _$this._timelinesAccess = timelinesAccess;

  InstanceConfigurationBuilder() {
    InstanceConfiguration._defaults(this);
  }

  InstanceConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accounts = $v.accounts.toBuilder();
      _mediaAttachments = $v.mediaAttachments.toBuilder();
      _polls = $v.polls.toBuilder();
      _statuses = $v.statuses.toBuilder();
      _translation = $v.translation.toBuilder();
      _urls = $v.urls.toBuilder();
      _limitedFederation = $v.limitedFederation;
      _timelinesAccess = $v.timelinesAccess?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstanceConfiguration other) {
    _$v = other as _$InstanceConfiguration;
  }

  @override
  void update(void Function(InstanceConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstanceConfiguration build() => _build();

  _$InstanceConfiguration _build() {
    _$InstanceConfiguration _$result;
    try {
      _$result = _$v ??
          _$InstanceConfiguration._(
            accounts: accounts.build(),
            mediaAttachments: mediaAttachments.build(),
            polls: polls.build(),
            statuses: statuses.build(),
            translation: translation.build(),
            urls: urls.build(),
            limitedFederation: limitedFederation,
            timelinesAccess: _timelinesAccess?.build(),
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
        _$failedField = 'translation';
        translation.build();
        _$failedField = 'urls';
        urls.build();

        _$failedField = 'timelinesAccess';
        _timelinesAccess?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'InstanceConfiguration', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
