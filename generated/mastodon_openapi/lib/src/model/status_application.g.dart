// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status_application.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StatusApplication extends StatusApplication {
  @override
  final String name;
  @override
  final String? website;

  factory _$StatusApplication(
          [void Function(StatusApplicationBuilder)? updates]) =>
      (StatusApplicationBuilder()..update(updates))._build();

  _$StatusApplication._({required this.name, this.website}) : super._();
  @override
  StatusApplication rebuild(void Function(StatusApplicationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StatusApplicationBuilder toBuilder() =>
      StatusApplicationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StatusApplication &&
        name == other.name &&
        website == other.website;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, website.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StatusApplication')
          ..add('name', name)
          ..add('website', website))
        .toString();
  }
}

class StatusApplicationBuilder
    implements Builder<StatusApplication, StatusApplicationBuilder> {
  _$StatusApplication? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _website;
  String? get website => _$this._website;
  set website(String? website) => _$this._website = website;

  StatusApplicationBuilder() {
    StatusApplication._defaults(this);
  }

  StatusApplicationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _website = $v.website;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StatusApplication other) {
    _$v = other as _$StatusApplication;
  }

  @override
  void update(void Function(StatusApplicationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StatusApplication build() => _build();

  _$StatusApplication _build() {
    final _$result = _$v ??
        _$StatusApplication._(
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'StatusApplication', 'name'),
          website: website,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
