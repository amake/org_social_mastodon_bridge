// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status_tag.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StatusTag extends StatusTag {
  @override
  final String name;
  @override
  final String url;

  factory _$StatusTag([void Function(StatusTagBuilder)? updates]) =>
      (StatusTagBuilder()..update(updates))._build();

  _$StatusTag._({required this.name, required this.url}) : super._();
  @override
  StatusTag rebuild(void Function(StatusTagBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StatusTagBuilder toBuilder() => StatusTagBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StatusTag && name == other.name && url == other.url;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StatusTag')
          ..add('name', name)
          ..add('url', url))
        .toString();
  }
}

class StatusTagBuilder implements Builder<StatusTag, StatusTagBuilder> {
  _$StatusTag? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  StatusTagBuilder() {
    StatusTag._defaults(this);
  }

  StatusTagBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _url = $v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StatusTag other) {
    _$v = other as _$StatusTag;
  }

  @override
  void update(void Function(StatusTagBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StatusTag build() => _build();

  _$StatusTag _build() {
    final _$result = _$v ??
        _$StatusTag._(
          name:
              BuiltValueNullFieldError.checkNotNull(name, r'StatusTag', 'name'),
          url: BuiltValueNullFieldError.checkNotNull(url, r'StatusTag', 'url'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
