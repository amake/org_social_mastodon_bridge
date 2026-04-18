// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extended_description.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExtendedDescription extends ExtendedDescription {
  @override
  final String content;
  @override
  final DateTime updatedAt;

  factory _$ExtendedDescription(
          [void Function(ExtendedDescriptionBuilder)? updates]) =>
      (ExtendedDescriptionBuilder()..update(updates))._build();

  _$ExtendedDescription._({required this.content, required this.updatedAt})
      : super._();
  @override
  ExtendedDescription rebuild(
          void Function(ExtendedDescriptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExtendedDescriptionBuilder toBuilder() =>
      ExtendedDescriptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExtendedDescription &&
        content == other.content &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExtendedDescription')
          ..add('content', content)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class ExtendedDescriptionBuilder
    implements Builder<ExtendedDescription, ExtendedDescriptionBuilder> {
  _$ExtendedDescription? _$v;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  ExtendedDescriptionBuilder() {
    ExtendedDescription._defaults(this);
  }

  ExtendedDescriptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _content = $v.content;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExtendedDescription other) {
    _$v = other as _$ExtendedDescription;
  }

  @override
  void update(void Function(ExtendedDescriptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExtendedDescription build() => _build();

  _$ExtendedDescription _build() {
    final _$result = _$v ??
        _$ExtendedDescription._(
          content: BuiltValueNullFieldError.checkNotNull(
              content, r'ExtendedDescription', 'content'),
          updatedAt: BuiltValueNullFieldError.checkNotNull(
              updatedAt, r'ExtendedDescription', 'updatedAt'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
