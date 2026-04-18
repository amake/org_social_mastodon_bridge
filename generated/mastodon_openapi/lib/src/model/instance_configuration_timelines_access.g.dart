// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instance_configuration_timelines_access.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InstanceConfigurationTimelinesAccess
    extends InstanceConfigurationTimelinesAccess {
  @override
  final InstanceConfigurationTimelinesAccessLiveFeeds? liveFeeds;
  @override
  final InstanceConfigurationTimelinesAccessHashtagFeeds? hashtagFeeds;
  @override
  final InstanceConfigurationTimelinesAccessTrendingLinkFeeds?
      trendingLinkFeeds;

  factory _$InstanceConfigurationTimelinesAccess(
          [void Function(InstanceConfigurationTimelinesAccessBuilder)?
              updates]) =>
      (InstanceConfigurationTimelinesAccessBuilder()..update(updates))._build();

  _$InstanceConfigurationTimelinesAccess._(
      {this.liveFeeds, this.hashtagFeeds, this.trendingLinkFeeds})
      : super._();
  @override
  InstanceConfigurationTimelinesAccess rebuild(
          void Function(InstanceConfigurationTimelinesAccessBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceConfigurationTimelinesAccessBuilder toBuilder() =>
      InstanceConfigurationTimelinesAccessBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstanceConfigurationTimelinesAccess &&
        liveFeeds == other.liveFeeds &&
        hashtagFeeds == other.hashtagFeeds &&
        trendingLinkFeeds == other.trendingLinkFeeds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, liveFeeds.hashCode);
    _$hash = $jc(_$hash, hashtagFeeds.hashCode);
    _$hash = $jc(_$hash, trendingLinkFeeds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InstanceConfigurationTimelinesAccess')
          ..add('liveFeeds', liveFeeds)
          ..add('hashtagFeeds', hashtagFeeds)
          ..add('trendingLinkFeeds', trendingLinkFeeds))
        .toString();
  }
}

class InstanceConfigurationTimelinesAccessBuilder
    implements
        Builder<InstanceConfigurationTimelinesAccess,
            InstanceConfigurationTimelinesAccessBuilder> {
  _$InstanceConfigurationTimelinesAccess? _$v;

  InstanceConfigurationTimelinesAccessLiveFeedsBuilder? _liveFeeds;
  InstanceConfigurationTimelinesAccessLiveFeedsBuilder get liveFeeds =>
      _$this._liveFeeds ??=
          InstanceConfigurationTimelinesAccessLiveFeedsBuilder();
  set liveFeeds(
          InstanceConfigurationTimelinesAccessLiveFeedsBuilder? liveFeeds) =>
      _$this._liveFeeds = liveFeeds;

  InstanceConfigurationTimelinesAccessHashtagFeedsBuilder? _hashtagFeeds;
  InstanceConfigurationTimelinesAccessHashtagFeedsBuilder get hashtagFeeds =>
      _$this._hashtagFeeds ??=
          InstanceConfigurationTimelinesAccessHashtagFeedsBuilder();
  set hashtagFeeds(
          InstanceConfigurationTimelinesAccessHashtagFeedsBuilder?
              hashtagFeeds) =>
      _$this._hashtagFeeds = hashtagFeeds;

  InstanceConfigurationTimelinesAccessTrendingLinkFeedsBuilder?
      _trendingLinkFeeds;
  InstanceConfigurationTimelinesAccessTrendingLinkFeedsBuilder
      get trendingLinkFeeds => _$this._trendingLinkFeeds ??=
          InstanceConfigurationTimelinesAccessTrendingLinkFeedsBuilder();
  set trendingLinkFeeds(
          InstanceConfigurationTimelinesAccessTrendingLinkFeedsBuilder?
              trendingLinkFeeds) =>
      _$this._trendingLinkFeeds = trendingLinkFeeds;

  InstanceConfigurationTimelinesAccessBuilder() {
    InstanceConfigurationTimelinesAccess._defaults(this);
  }

  InstanceConfigurationTimelinesAccessBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _liveFeeds = $v.liveFeeds?.toBuilder();
      _hashtagFeeds = $v.hashtagFeeds?.toBuilder();
      _trendingLinkFeeds = $v.trendingLinkFeeds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstanceConfigurationTimelinesAccess other) {
    _$v = other as _$InstanceConfigurationTimelinesAccess;
  }

  @override
  void update(
      void Function(InstanceConfigurationTimelinesAccessBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstanceConfigurationTimelinesAccess build() => _build();

  _$InstanceConfigurationTimelinesAccess _build() {
    _$InstanceConfigurationTimelinesAccess _$result;
    try {
      _$result = _$v ??
          _$InstanceConfigurationTimelinesAccess._(
            liveFeeds: _liveFeeds?.build(),
            hashtagFeeds: _hashtagFeeds?.build(),
            trendingLinkFeeds: _trendingLinkFeeds?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'liveFeeds';
        _liveFeeds?.build();
        _$failedField = 'hashtagFeeds';
        _hashtagFeeds?.build();
        _$failedField = 'trendingLinkFeeds';
        _trendingLinkFeeds?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'InstanceConfigurationTimelinesAccess',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
