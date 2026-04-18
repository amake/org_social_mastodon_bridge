// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'announcement_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnnouncementStatus extends AnnouncementStatus {
  @override
  final String id;
  @override
  final String url;

  factory _$AnnouncementStatus(
          [void Function(AnnouncementStatusBuilder)? updates]) =>
      (AnnouncementStatusBuilder()..update(updates))._build();

  _$AnnouncementStatus._({required this.id, required this.url}) : super._();
  @override
  AnnouncementStatus rebuild(
          void Function(AnnouncementStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnnouncementStatusBuilder toBuilder() =>
      AnnouncementStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnnouncementStatus && id == other.id && url == other.url;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnnouncementStatus')
          ..add('id', id)
          ..add('url', url))
        .toString();
  }
}

class AnnouncementStatusBuilder
    implements Builder<AnnouncementStatus, AnnouncementStatusBuilder> {
  _$AnnouncementStatus? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  AnnouncementStatusBuilder() {
    AnnouncementStatus._defaults(this);
  }

  AnnouncementStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _url = $v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnnouncementStatus other) {
    _$v = other as _$AnnouncementStatus;
  }

  @override
  void update(void Function(AnnouncementStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnnouncementStatus build() => _build();

  _$AnnouncementStatus _build() {
    final _$result = _$v ??
        _$AnnouncementStatus._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'AnnouncementStatus', 'id'),
          url: BuiltValueNullFieldError.checkNotNull(
              url, r'AnnouncementStatus', 'url'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
