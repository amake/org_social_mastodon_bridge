// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instance_configuration_urls.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InstanceConfigurationUrls extends InstanceConfigurationUrls {
  @override
  final String? about;
  @override
  final String? privacyPolicy;
  @override
  final String? status;
  @override
  final String? streaming;
  @override
  final String? termsOfService;

  factory _$InstanceConfigurationUrls(
          [void Function(InstanceConfigurationUrlsBuilder)? updates]) =>
      (InstanceConfigurationUrlsBuilder()..update(updates))._build();

  _$InstanceConfigurationUrls._(
      {this.about,
      this.privacyPolicy,
      this.status,
      this.streaming,
      this.termsOfService})
      : super._();
  @override
  InstanceConfigurationUrls rebuild(
          void Function(InstanceConfigurationUrlsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceConfigurationUrlsBuilder toBuilder() =>
      InstanceConfigurationUrlsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstanceConfigurationUrls &&
        about == other.about &&
        privacyPolicy == other.privacyPolicy &&
        status == other.status &&
        streaming == other.streaming &&
        termsOfService == other.termsOfService;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, about.hashCode);
    _$hash = $jc(_$hash, privacyPolicy.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, streaming.hashCode);
    _$hash = $jc(_$hash, termsOfService.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InstanceConfigurationUrls')
          ..add('about', about)
          ..add('privacyPolicy', privacyPolicy)
          ..add('status', status)
          ..add('streaming', streaming)
          ..add('termsOfService', termsOfService))
        .toString();
  }
}

class InstanceConfigurationUrlsBuilder
    implements
        Builder<InstanceConfigurationUrls, InstanceConfigurationUrlsBuilder> {
  _$InstanceConfigurationUrls? _$v;

  String? _about;
  String? get about => _$this._about;
  set about(String? about) => _$this._about = about;

  String? _privacyPolicy;
  String? get privacyPolicy => _$this._privacyPolicy;
  set privacyPolicy(String? privacyPolicy) =>
      _$this._privacyPolicy = privacyPolicy;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _streaming;
  String? get streaming => _$this._streaming;
  set streaming(String? streaming) => _$this._streaming = streaming;

  String? _termsOfService;
  String? get termsOfService => _$this._termsOfService;
  set termsOfService(String? termsOfService) =>
      _$this._termsOfService = termsOfService;

  InstanceConfigurationUrlsBuilder() {
    InstanceConfigurationUrls._defaults(this);
  }

  InstanceConfigurationUrlsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _about = $v.about;
      _privacyPolicy = $v.privacyPolicy;
      _status = $v.status;
      _streaming = $v.streaming;
      _termsOfService = $v.termsOfService;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstanceConfigurationUrls other) {
    _$v = other as _$InstanceConfigurationUrls;
  }

  @override
  void update(void Function(InstanceConfigurationUrlsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstanceConfigurationUrls build() => _build();

  _$InstanceConfigurationUrls _build() {
    final _$result = _$v ??
        _$InstanceConfigurationUrls._(
          about: about,
          privacyPolicy: privacyPolicy,
          status: status,
          streaming: streaming,
          termsOfService: termsOfService,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
