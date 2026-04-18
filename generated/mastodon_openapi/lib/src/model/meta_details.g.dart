// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta_details.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MetaDetails extends MetaDetails {
  @override
  final num? aspect;
  @override
  final int? bitrate;
  @override
  final num? duration;
  @override
  final String? frameRate;
  @override
  final int? height;
  @override
  final int? width;

  factory _$MetaDetails([void Function(MetaDetailsBuilder)? updates]) =>
      (MetaDetailsBuilder()..update(updates))._build();

  _$MetaDetails._(
      {this.aspect,
      this.bitrate,
      this.duration,
      this.frameRate,
      this.height,
      this.width})
      : super._();
  @override
  MetaDetails rebuild(void Function(MetaDetailsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MetaDetailsBuilder toBuilder() => MetaDetailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MetaDetails &&
        aspect == other.aspect &&
        bitrate == other.bitrate &&
        duration == other.duration &&
        frameRate == other.frameRate &&
        height == other.height &&
        width == other.width;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, aspect.hashCode);
    _$hash = $jc(_$hash, bitrate.hashCode);
    _$hash = $jc(_$hash, duration.hashCode);
    _$hash = $jc(_$hash, frameRate.hashCode);
    _$hash = $jc(_$hash, height.hashCode);
    _$hash = $jc(_$hash, width.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MetaDetails')
          ..add('aspect', aspect)
          ..add('bitrate', bitrate)
          ..add('duration', duration)
          ..add('frameRate', frameRate)
          ..add('height', height)
          ..add('width', width))
        .toString();
  }
}

class MetaDetailsBuilder implements Builder<MetaDetails, MetaDetailsBuilder> {
  _$MetaDetails? _$v;

  num? _aspect;
  num? get aspect => _$this._aspect;
  set aspect(num? aspect) => _$this._aspect = aspect;

  int? _bitrate;
  int? get bitrate => _$this._bitrate;
  set bitrate(int? bitrate) => _$this._bitrate = bitrate;

  num? _duration;
  num? get duration => _$this._duration;
  set duration(num? duration) => _$this._duration = duration;

  String? _frameRate;
  String? get frameRate => _$this._frameRate;
  set frameRate(String? frameRate) => _$this._frameRate = frameRate;

  int? _height;
  int? get height => _$this._height;
  set height(int? height) => _$this._height = height;

  int? _width;
  int? get width => _$this._width;
  set width(int? width) => _$this._width = width;

  MetaDetailsBuilder() {
    MetaDetails._defaults(this);
  }

  MetaDetailsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _aspect = $v.aspect;
      _bitrate = $v.bitrate;
      _duration = $v.duration;
      _frameRate = $v.frameRate;
      _height = $v.height;
      _width = $v.width;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MetaDetails other) {
    _$v = other as _$MetaDetails;
  }

  @override
  void update(void Function(MetaDetailsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MetaDetails build() => _build();

  _$MetaDetails _build() {
    final _$result = _$v ??
        _$MetaDetails._(
          aspect: aspect,
          bitrate: bitrate,
          duration: duration,
          frameRate: frameRate,
          height: height,
          width: width,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
