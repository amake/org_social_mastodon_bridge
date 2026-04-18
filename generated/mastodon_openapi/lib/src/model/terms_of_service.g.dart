// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'terms_of_service.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TermsOfService extends TermsOfService {
  @override
  final String content;
  @override
  final bool effective;
  @override
  final Date effectiveDate;
  @override
  final Date? succeededBy;

  factory _$TermsOfService([void Function(TermsOfServiceBuilder)? updates]) =>
      (TermsOfServiceBuilder()..update(updates))._build();

  _$TermsOfService._(
      {required this.content,
      required this.effective,
      required this.effectiveDate,
      this.succeededBy})
      : super._();
  @override
  TermsOfService rebuild(void Function(TermsOfServiceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TermsOfServiceBuilder toBuilder() => TermsOfServiceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TermsOfService &&
        content == other.content &&
        effective == other.effective &&
        effectiveDate == other.effectiveDate &&
        succeededBy == other.succeededBy;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jc(_$hash, effective.hashCode);
    _$hash = $jc(_$hash, effectiveDate.hashCode);
    _$hash = $jc(_$hash, succeededBy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TermsOfService')
          ..add('content', content)
          ..add('effective', effective)
          ..add('effectiveDate', effectiveDate)
          ..add('succeededBy', succeededBy))
        .toString();
  }
}

class TermsOfServiceBuilder
    implements Builder<TermsOfService, TermsOfServiceBuilder> {
  _$TermsOfService? _$v;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  bool? _effective;
  bool? get effective => _$this._effective;
  set effective(bool? effective) => _$this._effective = effective;

  Date? _effectiveDate;
  Date? get effectiveDate => _$this._effectiveDate;
  set effectiveDate(Date? effectiveDate) =>
      _$this._effectiveDate = effectiveDate;

  Date? _succeededBy;
  Date? get succeededBy => _$this._succeededBy;
  set succeededBy(Date? succeededBy) => _$this._succeededBy = succeededBy;

  TermsOfServiceBuilder() {
    TermsOfService._defaults(this);
  }

  TermsOfServiceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _content = $v.content;
      _effective = $v.effective;
      _effectiveDate = $v.effectiveDate;
      _succeededBy = $v.succeededBy;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TermsOfService other) {
    _$v = other as _$TermsOfService;
  }

  @override
  void update(void Function(TermsOfServiceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TermsOfService build() => _build();

  _$TermsOfService _build() {
    final _$result = _$v ??
        _$TermsOfService._(
          content: BuiltValueNullFieldError.checkNotNull(
              content, r'TermsOfService', 'content'),
          effective: BuiltValueNullFieldError.checkNotNull(
              effective, r'TermsOfService', 'effective'),
          effectiveDate: BuiltValueNullFieldError.checkNotNull(
              effectiveDate, r'TermsOfService', 'effectiveDate'),
          succeededBy: succeededBy,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
