// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_instance.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V1Instance extends V1Instance {
  @override
  final bool approvalRequired;
  @override
  final V1InstanceConfiguration configuration;
  @override
  final String description;
  @override
  final String email;
  @override
  final bool invitesEnabled;
  @override
  final BuiltList<String> languages;
  @override
  final bool registrations;
  @override
  final BuiltList<Rule> rules;
  @override
  final String shortDescription;
  @override
  final V1InstanceStats stats;
  @override
  final String title;
  @override
  final String uri;
  @override
  final V1InstanceUrls urls;
  @override
  final String version;
  @override
  final Account? contactAccount;
  @override
  final String? thumbnail;

  factory _$V1Instance([void Function(V1InstanceBuilder)? updates]) =>
      (V1InstanceBuilder()..update(updates))._build();

  _$V1Instance._(
      {required this.approvalRequired,
      required this.configuration,
      required this.description,
      required this.email,
      required this.invitesEnabled,
      required this.languages,
      required this.registrations,
      required this.rules,
      required this.shortDescription,
      required this.stats,
      required this.title,
      required this.uri,
      required this.urls,
      required this.version,
      this.contactAccount,
      this.thumbnail})
      : super._();
  @override
  V1Instance rebuild(void Function(V1InstanceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V1InstanceBuilder toBuilder() => V1InstanceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V1Instance &&
        approvalRequired == other.approvalRequired &&
        configuration == other.configuration &&
        description == other.description &&
        email == other.email &&
        invitesEnabled == other.invitesEnabled &&
        languages == other.languages &&
        registrations == other.registrations &&
        rules == other.rules &&
        shortDescription == other.shortDescription &&
        stats == other.stats &&
        title == other.title &&
        uri == other.uri &&
        urls == other.urls &&
        version == other.version &&
        contactAccount == other.contactAccount &&
        thumbnail == other.thumbnail;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, approvalRequired.hashCode);
    _$hash = $jc(_$hash, configuration.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, invitesEnabled.hashCode);
    _$hash = $jc(_$hash, languages.hashCode);
    _$hash = $jc(_$hash, registrations.hashCode);
    _$hash = $jc(_$hash, rules.hashCode);
    _$hash = $jc(_$hash, shortDescription.hashCode);
    _$hash = $jc(_$hash, stats.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, uri.hashCode);
    _$hash = $jc(_$hash, urls.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, contactAccount.hashCode);
    _$hash = $jc(_$hash, thumbnail.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'V1Instance')
          ..add('approvalRequired', approvalRequired)
          ..add('configuration', configuration)
          ..add('description', description)
          ..add('email', email)
          ..add('invitesEnabled', invitesEnabled)
          ..add('languages', languages)
          ..add('registrations', registrations)
          ..add('rules', rules)
          ..add('shortDescription', shortDescription)
          ..add('stats', stats)
          ..add('title', title)
          ..add('uri', uri)
          ..add('urls', urls)
          ..add('version', version)
          ..add('contactAccount', contactAccount)
          ..add('thumbnail', thumbnail))
        .toString();
  }
}

class V1InstanceBuilder implements Builder<V1Instance, V1InstanceBuilder> {
  _$V1Instance? _$v;

  bool? _approvalRequired;
  bool? get approvalRequired => _$this._approvalRequired;
  set approvalRequired(bool? approvalRequired) =>
      _$this._approvalRequired = approvalRequired;

  V1InstanceConfigurationBuilder? _configuration;
  V1InstanceConfigurationBuilder get configuration =>
      _$this._configuration ??= V1InstanceConfigurationBuilder();
  set configuration(V1InstanceConfigurationBuilder? configuration) =>
      _$this._configuration = configuration;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  bool? _invitesEnabled;
  bool? get invitesEnabled => _$this._invitesEnabled;
  set invitesEnabled(bool? invitesEnabled) =>
      _$this._invitesEnabled = invitesEnabled;

  ListBuilder<String>? _languages;
  ListBuilder<String> get languages =>
      _$this._languages ??= ListBuilder<String>();
  set languages(ListBuilder<String>? languages) =>
      _$this._languages = languages;

  bool? _registrations;
  bool? get registrations => _$this._registrations;
  set registrations(bool? registrations) =>
      _$this._registrations = registrations;

  ListBuilder<Rule>? _rules;
  ListBuilder<Rule> get rules => _$this._rules ??= ListBuilder<Rule>();
  set rules(ListBuilder<Rule>? rules) => _$this._rules = rules;

  String? _shortDescription;
  String? get shortDescription => _$this._shortDescription;
  set shortDescription(String? shortDescription) =>
      _$this._shortDescription = shortDescription;

  V1InstanceStatsBuilder? _stats;
  V1InstanceStatsBuilder get stats =>
      _$this._stats ??= V1InstanceStatsBuilder();
  set stats(V1InstanceStatsBuilder? stats) => _$this._stats = stats;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _uri;
  String? get uri => _$this._uri;
  set uri(String? uri) => _$this._uri = uri;

  V1InstanceUrlsBuilder? _urls;
  V1InstanceUrlsBuilder get urls => _$this._urls ??= V1InstanceUrlsBuilder();
  set urls(V1InstanceUrlsBuilder? urls) => _$this._urls = urls;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  AccountBuilder? _contactAccount;
  AccountBuilder get contactAccount =>
      _$this._contactAccount ??= AccountBuilder();
  set contactAccount(AccountBuilder? contactAccount) =>
      _$this._contactAccount = contactAccount;

  String? _thumbnail;
  String? get thumbnail => _$this._thumbnail;
  set thumbnail(String? thumbnail) => _$this._thumbnail = thumbnail;

  V1InstanceBuilder() {
    V1Instance._defaults(this);
  }

  V1InstanceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _approvalRequired = $v.approvalRequired;
      _configuration = $v.configuration.toBuilder();
      _description = $v.description;
      _email = $v.email;
      _invitesEnabled = $v.invitesEnabled;
      _languages = $v.languages.toBuilder();
      _registrations = $v.registrations;
      _rules = $v.rules.toBuilder();
      _shortDescription = $v.shortDescription;
      _stats = $v.stats.toBuilder();
      _title = $v.title;
      _uri = $v.uri;
      _urls = $v.urls.toBuilder();
      _version = $v.version;
      _contactAccount = $v.contactAccount?.toBuilder();
      _thumbnail = $v.thumbnail;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V1Instance other) {
    _$v = other as _$V1Instance;
  }

  @override
  void update(void Function(V1InstanceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V1Instance build() => _build();

  _$V1Instance _build() {
    _$V1Instance _$result;
    try {
      _$result = _$v ??
          _$V1Instance._(
            approvalRequired: BuiltValueNullFieldError.checkNotNull(
                approvalRequired, r'V1Instance', 'approvalRequired'),
            configuration: configuration.build(),
            description: BuiltValueNullFieldError.checkNotNull(
                description, r'V1Instance', 'description'),
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'V1Instance', 'email'),
            invitesEnabled: BuiltValueNullFieldError.checkNotNull(
                invitesEnabled, r'V1Instance', 'invitesEnabled'),
            languages: languages.build(),
            registrations: BuiltValueNullFieldError.checkNotNull(
                registrations, r'V1Instance', 'registrations'),
            rules: rules.build(),
            shortDescription: BuiltValueNullFieldError.checkNotNull(
                shortDescription, r'V1Instance', 'shortDescription'),
            stats: stats.build(),
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'V1Instance', 'title'),
            uri: BuiltValueNullFieldError.checkNotNull(
                uri, r'V1Instance', 'uri'),
            urls: urls.build(),
            version: BuiltValueNullFieldError.checkNotNull(
                version, r'V1Instance', 'version'),
            contactAccount: _contactAccount?.build(),
            thumbnail: thumbnail,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'configuration';
        configuration.build();

        _$failedField = 'languages';
        languages.build();

        _$failedField = 'rules';
        rules.build();

        _$failedField = 'stats';
        stats.build();

        _$failedField = 'urls';
        urls.build();

        _$failedField = 'contactAccount';
        _contactAccount?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'V1Instance', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
