// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'translation_attachment.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TranslationAttachment extends TranslationAttachment {
  @override
  final String description;
  @override
  final String id;

  factory _$TranslationAttachment(
          [void Function(TranslationAttachmentBuilder)? updates]) =>
      (TranslationAttachmentBuilder()..update(updates))._build();

  _$TranslationAttachment._({required this.description, required this.id})
      : super._();
  @override
  TranslationAttachment rebuild(
          void Function(TranslationAttachmentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TranslationAttachmentBuilder toBuilder() =>
      TranslationAttachmentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TranslationAttachment &&
        description == other.description &&
        id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TranslationAttachment')
          ..add('description', description)
          ..add('id', id))
        .toString();
  }
}

class TranslationAttachmentBuilder
    implements Builder<TranslationAttachment, TranslationAttachmentBuilder> {
  _$TranslationAttachment? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  TranslationAttachmentBuilder() {
    TranslationAttachment._defaults(this);
  }

  TranslationAttachmentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TranslationAttachment other) {
    _$v = other as _$TranslationAttachment;
  }

  @override
  void update(void Function(TranslationAttachmentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TranslationAttachment build() => _build();

  _$TranslationAttachment _build() {
    final _$result = _$v ??
        _$TranslationAttachment._(
          description: BuiltValueNullFieldError.checkNotNull(
              description, r'TranslationAttachment', 'description'),
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'TranslationAttachment', 'id'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
