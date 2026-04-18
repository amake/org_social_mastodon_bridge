// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'suggestion.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SuggestionSourcesEnum _$suggestionSourcesEnum_featured =
    const SuggestionSourcesEnum._('featured');
const SuggestionSourcesEnum _$suggestionSourcesEnum_mostFollowed =
    const SuggestionSourcesEnum._('mostFollowed');
const SuggestionSourcesEnum _$suggestionSourcesEnum_mostInteractions =
    const SuggestionSourcesEnum._('mostInteractions');
const SuggestionSourcesEnum _$suggestionSourcesEnum_similarToRecentlyFollowed =
    const SuggestionSourcesEnum._('similarToRecentlyFollowed');
const SuggestionSourcesEnum _$suggestionSourcesEnum_friendsOfFriends =
    const SuggestionSourcesEnum._('friendsOfFriends');

SuggestionSourcesEnum _$suggestionSourcesEnumValueOf(String name) {
  switch (name) {
    case 'featured':
      return _$suggestionSourcesEnum_featured;
    case 'mostFollowed':
      return _$suggestionSourcesEnum_mostFollowed;
    case 'mostInteractions':
      return _$suggestionSourcesEnum_mostInteractions;
    case 'similarToRecentlyFollowed':
      return _$suggestionSourcesEnum_similarToRecentlyFollowed;
    case 'friendsOfFriends':
      return _$suggestionSourcesEnum_friendsOfFriends;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SuggestionSourcesEnum> _$suggestionSourcesEnumValues =
    BuiltSet<SuggestionSourcesEnum>(const <SuggestionSourcesEnum>[
  _$suggestionSourcesEnum_featured,
  _$suggestionSourcesEnum_mostFollowed,
  _$suggestionSourcesEnum_mostInteractions,
  _$suggestionSourcesEnum_similarToRecentlyFollowed,
  _$suggestionSourcesEnum_friendsOfFriends,
]);

Serializer<SuggestionSourcesEnum> _$suggestionSourcesEnumSerializer =
    _$SuggestionSourcesEnumSerializer();

class _$SuggestionSourcesEnumSerializer
    implements PrimitiveSerializer<SuggestionSourcesEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'featured': 'featured',
    'mostFollowed': 'most_followed',
    'mostInteractions': 'most_interactions',
    'similarToRecentlyFollowed': 'similar_to_recently_followed',
    'friendsOfFriends': 'friends_of_friends',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'featured': 'featured',
    'most_followed': 'mostFollowed',
    'most_interactions': 'mostInteractions',
    'similar_to_recently_followed': 'similarToRecentlyFollowed',
    'friends_of_friends': 'friendsOfFriends',
  };

  @override
  final Iterable<Type> types = const <Type>[SuggestionSourcesEnum];
  @override
  final String wireName = 'SuggestionSourcesEnum';

  @override
  Object serialize(Serializers serializers, SuggestionSourcesEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SuggestionSourcesEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SuggestionSourcesEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Suggestion extends Suggestion {
  @override
  final Account account;
  @override
  final BuiltList<SuggestionSourcesEnum>? sources;

  factory _$Suggestion([void Function(SuggestionBuilder)? updates]) =>
      (SuggestionBuilder()..update(updates))._build();

  _$Suggestion._({required this.account, this.sources}) : super._();
  @override
  Suggestion rebuild(void Function(SuggestionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SuggestionBuilder toBuilder() => SuggestionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Suggestion &&
        account == other.account &&
        sources == other.sources;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, account.hashCode);
    _$hash = $jc(_$hash, sources.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Suggestion')
          ..add('account', account)
          ..add('sources', sources))
        .toString();
  }
}

class SuggestionBuilder implements Builder<Suggestion, SuggestionBuilder> {
  _$Suggestion? _$v;

  AccountBuilder? _account;
  AccountBuilder get account => _$this._account ??= AccountBuilder();
  set account(AccountBuilder? account) => _$this._account = account;

  ListBuilder<SuggestionSourcesEnum>? _sources;
  ListBuilder<SuggestionSourcesEnum> get sources =>
      _$this._sources ??= ListBuilder<SuggestionSourcesEnum>();
  set sources(ListBuilder<SuggestionSourcesEnum>? sources) =>
      _$this._sources = sources;

  SuggestionBuilder() {
    Suggestion._defaults(this);
  }

  SuggestionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _account = $v.account.toBuilder();
      _sources = $v.sources?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Suggestion other) {
    _$v = other as _$Suggestion;
  }

  @override
  void update(void Function(SuggestionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Suggestion build() => _build();

  _$Suggestion _build() {
    _$Suggestion _$result;
    try {
      _$result = _$v ??
          _$Suggestion._(
            account: account.build(),
            sources: _sources?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'account';
        account.build();
        _$failedField = 'sources';
        _sources?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Suggestion', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
