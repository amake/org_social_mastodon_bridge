// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instance.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Instance extends Instance {
  @override
  final InstanceConfiguration configuration;
  @override
  final InstanceContact contact;
  @override
  final String description;
  @override
  final String domain;
  @override
  final BuiltList<String> languages;
  @override
  final InstanceRegistrations registrations;
  @override
  final BuiltList<Rule> rules;
  @override
  final String sourceUrl;
  @override
  final InstanceThumbnail thumbnail;
  @override
  final String title;
  @override
  final InstanceUsage usage;
  @override
  final String version;
  @override
  final InstanceApiVersions? apiVersions;
  @override
  final BuiltList<InstanceIcon>? icon;

  factory _$Instance([void Function(InstanceBuilder)? updates]) =>
      (InstanceBuilder()..update(updates))._build();

  _$Instance._(
      {required this.configuration,
      required this.contact,
      required this.description,
      required this.domain,
      required this.languages,
      required this.registrations,
      required this.rules,
      required this.sourceUrl,
      required this.thumbnail,
      required this.title,
      required this.usage,
      required this.version,
      this.apiVersions,
      this.icon})
      : super._();
  @override
  Instance rebuild(void Function(InstanceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceBuilder toBuilder() => InstanceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Instance &&
        configuration == other.configuration &&
        contact == other.contact &&
        description == other.description &&
        domain == other.domain &&
        languages == other.languages &&
        registrations == other.registrations &&
        rules == other.rules &&
        sourceUrl == other.sourceUrl &&
        thumbnail == other.thumbnail &&
        title == other.title &&
        usage == other.usage &&
        version == other.version &&
        apiVersions == other.apiVersions &&
        icon == other.icon;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, configuration.hashCode);
    _$hash = $jc(_$hash, contact.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, domain.hashCode);
    _$hash = $jc(_$hash, languages.hashCode);
    _$hash = $jc(_$hash, registrations.hashCode);
    _$hash = $jc(_$hash, rules.hashCode);
    _$hash = $jc(_$hash, sourceUrl.hashCode);
    _$hash = $jc(_$hash, thumbnail.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, usage.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, apiVersions.hashCode);
    _$hash = $jc(_$hash, icon.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Instance')
          ..add('configuration', configuration)
          ..add('contact', contact)
          ..add('description', description)
          ..add('domain', domain)
          ..add('languages', languages)
          ..add('registrations', registrations)
          ..add('rules', rules)
          ..add('sourceUrl', sourceUrl)
          ..add('thumbnail', thumbnail)
          ..add('title', title)
          ..add('usage', usage)
          ..add('version', version)
          ..add('apiVersions', apiVersions)
          ..add('icon', icon))
        .toString();
  }
}

class InstanceBuilder implements Builder<Instance, InstanceBuilder> {
  _$Instance? _$v;

  InstanceConfigurationBuilder? _configuration;
  InstanceConfigurationBuilder get configuration =>
      _$this._configuration ??= InstanceConfigurationBuilder();
  set configuration(InstanceConfigurationBuilder? configuration) =>
      _$this._configuration = configuration;

  InstanceContactBuilder? _contact;
  InstanceContactBuilder get contact =>
      _$this._contact ??= InstanceContactBuilder();
  set contact(InstanceContactBuilder? contact) => _$this._contact = contact;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _domain;
  String? get domain => _$this._domain;
  set domain(String? domain) => _$this._domain = domain;

  ListBuilder<String>? _languages;
  ListBuilder<String> get languages =>
      _$this._languages ??= ListBuilder<String>();
  set languages(ListBuilder<String>? languages) =>
      _$this._languages = languages;

  InstanceRegistrationsBuilder? _registrations;
  InstanceRegistrationsBuilder get registrations =>
      _$this._registrations ??= InstanceRegistrationsBuilder();
  set registrations(InstanceRegistrationsBuilder? registrations) =>
      _$this._registrations = registrations;

  ListBuilder<Rule>? _rules;
  ListBuilder<Rule> get rules => _$this._rules ??= ListBuilder<Rule>();
  set rules(ListBuilder<Rule>? rules) => _$this._rules = rules;

  String? _sourceUrl;
  String? get sourceUrl => _$this._sourceUrl;
  set sourceUrl(String? sourceUrl) => _$this._sourceUrl = sourceUrl;

  InstanceThumbnailBuilder? _thumbnail;
  InstanceThumbnailBuilder get thumbnail =>
      _$this._thumbnail ??= InstanceThumbnailBuilder();
  set thumbnail(InstanceThumbnailBuilder? thumbnail) =>
      _$this._thumbnail = thumbnail;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  InstanceUsageBuilder? _usage;
  InstanceUsageBuilder get usage => _$this._usage ??= InstanceUsageBuilder();
  set usage(InstanceUsageBuilder? usage) => _$this._usage = usage;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  InstanceApiVersionsBuilder? _apiVersions;
  InstanceApiVersionsBuilder get apiVersions =>
      _$this._apiVersions ??= InstanceApiVersionsBuilder();
  set apiVersions(InstanceApiVersionsBuilder? apiVersions) =>
      _$this._apiVersions = apiVersions;

  ListBuilder<InstanceIcon>? _icon;
  ListBuilder<InstanceIcon> get icon =>
      _$this._icon ??= ListBuilder<InstanceIcon>();
  set icon(ListBuilder<InstanceIcon>? icon) => _$this._icon = icon;

  InstanceBuilder() {
    Instance._defaults(this);
  }

  InstanceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configuration = $v.configuration.toBuilder();
      _contact = $v.contact.toBuilder();
      _description = $v.description;
      _domain = $v.domain;
      _languages = $v.languages.toBuilder();
      _registrations = $v.registrations.toBuilder();
      _rules = $v.rules.toBuilder();
      _sourceUrl = $v.sourceUrl;
      _thumbnail = $v.thumbnail.toBuilder();
      _title = $v.title;
      _usage = $v.usage.toBuilder();
      _version = $v.version;
      _apiVersions = $v.apiVersions?.toBuilder();
      _icon = $v.icon?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Instance other) {
    _$v = other as _$Instance;
  }

  @override
  void update(void Function(InstanceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Instance build() => _build();

  _$Instance _build() {
    _$Instance _$result;
    try {
      _$result = _$v ??
          _$Instance._(
            configuration: configuration.build(),
            contact: contact.build(),
            description: BuiltValueNullFieldError.checkNotNull(
                description, r'Instance', 'description'),
            domain: BuiltValueNullFieldError.checkNotNull(
                domain, r'Instance', 'domain'),
            languages: languages.build(),
            registrations: registrations.build(),
            rules: rules.build(),
            sourceUrl: BuiltValueNullFieldError.checkNotNull(
                sourceUrl, r'Instance', 'sourceUrl'),
            thumbnail: thumbnail.build(),
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'Instance', 'title'),
            usage: usage.build(),
            version: BuiltValueNullFieldError.checkNotNull(
                version, r'Instance', 'version'),
            apiVersions: _apiVersions?.build(),
            icon: _icon?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'configuration';
        configuration.build();
        _$failedField = 'contact';
        contact.build();

        _$failedField = 'languages';
        languages.build();
        _$failedField = 'registrations';
        registrations.build();
        _$failedField = 'rules';
        rules.build();

        _$failedField = 'thumbnail';
        thumbnail.build();

        _$failedField = 'usage';
        usage.build();

        _$failedField = 'apiVersions';
        _apiVersions?.build();
        _$failedField = 'icon';
        _icon?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Instance', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
