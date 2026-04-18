// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reaction.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Reaction extends Reaction {
  @override
  final int count;
  @override
  final String name;
  @override
  final bool? me;
  @override
  final String? staticUrl;
  @override
  final String? url;

  factory _$Reaction([void Function(ReactionBuilder)? updates]) =>
      (ReactionBuilder()..update(updates))._build();

  _$Reaction._(
      {required this.count,
      required this.name,
      this.me,
      this.staticUrl,
      this.url})
      : super._();
  @override
  Reaction rebuild(void Function(ReactionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReactionBuilder toBuilder() => ReactionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Reaction &&
        count == other.count &&
        name == other.name &&
        me == other.me &&
        staticUrl == other.staticUrl &&
        url == other.url;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, me.hashCode);
    _$hash = $jc(_$hash, staticUrl.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Reaction')
          ..add('count', count)
          ..add('name', name)
          ..add('me', me)
          ..add('staticUrl', staticUrl)
          ..add('url', url))
        .toString();
  }
}

class ReactionBuilder implements Builder<Reaction, ReactionBuilder> {
  _$Reaction? _$v;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _me;
  bool? get me => _$this._me;
  set me(bool? me) => _$this._me = me;

  String? _staticUrl;
  String? get staticUrl => _$this._staticUrl;
  set staticUrl(String? staticUrl) => _$this._staticUrl = staticUrl;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  ReactionBuilder() {
    Reaction._defaults(this);
  }

  ReactionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _count = $v.count;
      _name = $v.name;
      _me = $v.me;
      _staticUrl = $v.staticUrl;
      _url = $v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Reaction other) {
    _$v = other as _$Reaction;
  }

  @override
  void update(void Function(ReactionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Reaction build() => _build();

  _$Reaction _build() {
    final _$result = _$v ??
        _$Reaction._(
          count: BuiltValueNullFieldError.checkNotNull(
              count, r'Reaction', 'count'),
          name:
              BuiltValueNullFieldError.checkNotNull(name, r'Reaction', 'name'),
          me: me,
          staticUrl: staticUrl,
          url: url,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
