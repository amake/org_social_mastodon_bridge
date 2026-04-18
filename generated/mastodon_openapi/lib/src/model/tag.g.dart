// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Tag extends Tag {
  @override
  final BuiltList<TagHistory> history;
  @override
  final String name;
  @override
  final String url;
  @override
  final bool? featuring;
  @override
  final bool? following;
  @override
  final String? id;

  factory _$Tag([void Function(TagBuilder)? updates]) =>
      (TagBuilder()..update(updates))._build();

  _$Tag._(
      {required this.history,
      required this.name,
      required this.url,
      this.featuring,
      this.following,
      this.id})
      : super._();
  @override
  Tag rebuild(void Function(TagBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TagBuilder toBuilder() => TagBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Tag &&
        history == other.history &&
        name == other.name &&
        url == other.url &&
        featuring == other.featuring &&
        following == other.following &&
        id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, history.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, featuring.hashCode);
    _$hash = $jc(_$hash, following.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Tag')
          ..add('history', history)
          ..add('name', name)
          ..add('url', url)
          ..add('featuring', featuring)
          ..add('following', following)
          ..add('id', id))
        .toString();
  }
}

class TagBuilder implements Builder<Tag, TagBuilder> {
  _$Tag? _$v;

  ListBuilder<TagHistory>? _history;
  ListBuilder<TagHistory> get history =>
      _$this._history ??= ListBuilder<TagHistory>();
  set history(ListBuilder<TagHistory>? history) => _$this._history = history;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  bool? _featuring;
  bool? get featuring => _$this._featuring;
  set featuring(bool? featuring) => _$this._featuring = featuring;

  bool? _following;
  bool? get following => _$this._following;
  set following(bool? following) => _$this._following = following;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  TagBuilder() {
    Tag._defaults(this);
  }

  TagBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _history = $v.history.toBuilder();
      _name = $v.name;
      _url = $v.url;
      _featuring = $v.featuring;
      _following = $v.following;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Tag other) {
    _$v = other as _$Tag;
  }

  @override
  void update(void Function(TagBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Tag build() => _build();

  _$Tag _build() {
    _$Tag _$result;
    try {
      _$result = _$v ??
          _$Tag._(
            history: history.build(),
            name: BuiltValueNullFieldError.checkNotNull(name, r'Tag', 'name'),
            url: BuiltValueNullFieldError.checkNotNull(url, r'Tag', 'url'),
            featuring: featuring,
            following: following,
            id: id,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'history';
        history.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(r'Tag', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
