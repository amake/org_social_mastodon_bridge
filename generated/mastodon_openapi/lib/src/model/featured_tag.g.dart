// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'featured_tag.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FeaturedTag extends FeaturedTag {
  @override
  final String id;
  @override
  final String name;
  @override
  final String statusesCount;
  @override
  final String url;
  @override
  final Date? lastStatusAt;

  factory _$FeaturedTag([void Function(FeaturedTagBuilder)? updates]) =>
      (FeaturedTagBuilder()..update(updates))._build();

  _$FeaturedTag._(
      {required this.id,
      required this.name,
      required this.statusesCount,
      required this.url,
      this.lastStatusAt})
      : super._();
  @override
  FeaturedTag rebuild(void Function(FeaturedTagBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FeaturedTagBuilder toBuilder() => FeaturedTagBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FeaturedTag &&
        id == other.id &&
        name == other.name &&
        statusesCount == other.statusesCount &&
        url == other.url &&
        lastStatusAt == other.lastStatusAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, statusesCount.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, lastStatusAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FeaturedTag')
          ..add('id', id)
          ..add('name', name)
          ..add('statusesCount', statusesCount)
          ..add('url', url)
          ..add('lastStatusAt', lastStatusAt))
        .toString();
  }
}

class FeaturedTagBuilder implements Builder<FeaturedTag, FeaturedTagBuilder> {
  _$FeaturedTag? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _statusesCount;
  String? get statusesCount => _$this._statusesCount;
  set statusesCount(String? statusesCount) =>
      _$this._statusesCount = statusesCount;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  Date? _lastStatusAt;
  Date? get lastStatusAt => _$this._lastStatusAt;
  set lastStatusAt(Date? lastStatusAt) => _$this._lastStatusAt = lastStatusAt;

  FeaturedTagBuilder() {
    FeaturedTag._defaults(this);
  }

  FeaturedTagBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _statusesCount = $v.statusesCount;
      _url = $v.url;
      _lastStatusAt = $v.lastStatusAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FeaturedTag other) {
    _$v = other as _$FeaturedTag;
  }

  @override
  void update(void Function(FeaturedTagBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FeaturedTag build() => _build();

  _$FeaturedTag _build() {
    final _$result = _$v ??
        _$FeaturedTag._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'FeaturedTag', 'id'),
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'FeaturedTag', 'name'),
          statusesCount: BuiltValueNullFieldError.checkNotNull(
              statusesCount, r'FeaturedTag', 'statusesCount'),
          url:
              BuiltValueNullFieldError.checkNotNull(url, r'FeaturedTag', 'url'),
          lastStatusAt: lastStatusAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
