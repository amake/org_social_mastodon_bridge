// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instance_icon.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InstanceIcon extends InstanceIcon {
  @override
  final String size;
  @override
  final String src;

  factory _$InstanceIcon([void Function(InstanceIconBuilder)? updates]) =>
      (InstanceIconBuilder()..update(updates))._build();

  _$InstanceIcon._({required this.size, required this.src}) : super._();
  @override
  InstanceIcon rebuild(void Function(InstanceIconBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceIconBuilder toBuilder() => InstanceIconBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstanceIcon && size == other.size && src == other.src;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, size.hashCode);
    _$hash = $jc(_$hash, src.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InstanceIcon')
          ..add('size', size)
          ..add('src', src))
        .toString();
  }
}

class InstanceIconBuilder
    implements Builder<InstanceIcon, InstanceIconBuilder> {
  _$InstanceIcon? _$v;

  String? _size;
  String? get size => _$this._size;
  set size(String? size) => _$this._size = size;

  String? _src;
  String? get src => _$this._src;
  set src(String? src) => _$this._src = src;

  InstanceIconBuilder() {
    InstanceIcon._defaults(this);
  }

  InstanceIconBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _size = $v.size;
      _src = $v.src;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstanceIcon other) {
    _$v = other as _$InstanceIcon;
  }

  @override
  void update(void Function(InstanceIconBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstanceIcon build() => _build();

  _$InstanceIcon _build() {
    final _$result = _$v ??
        _$InstanceIcon._(
          size: BuiltValueNullFieldError.checkNotNull(
              size, r'InstanceIcon', 'size'),
          src: BuiltValueNullFieldError.checkNotNull(
              src, r'InstanceIcon', 'src'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
