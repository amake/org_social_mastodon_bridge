// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'privacy_policy.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PrivacyPolicy extends PrivacyPolicy {
  @override
  final String content;
  @override
  final DateTime updatedAt;

  factory _$PrivacyPolicy([void Function(PrivacyPolicyBuilder)? updates]) =>
      (PrivacyPolicyBuilder()..update(updates))._build();

  _$PrivacyPolicy._({required this.content, required this.updatedAt})
      : super._();
  @override
  PrivacyPolicy rebuild(void Function(PrivacyPolicyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrivacyPolicyBuilder toBuilder() => PrivacyPolicyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrivacyPolicy &&
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
    return (newBuiltValueToStringHelper(r'PrivacyPolicy')
          ..add('content', content)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class PrivacyPolicyBuilder
    implements Builder<PrivacyPolicy, PrivacyPolicyBuilder> {
  _$PrivacyPolicy? _$v;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  PrivacyPolicyBuilder() {
    PrivacyPolicy._defaults(this);
  }

  PrivacyPolicyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _content = $v.content;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PrivacyPolicy other) {
    _$v = other as _$PrivacyPolicy;
  }

  @override
  void update(void Function(PrivacyPolicyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PrivacyPolicy build() => _build();

  _$PrivacyPolicy _build() {
    final _$result = _$v ??
        _$PrivacyPolicy._(
          content: BuiltValueNullFieldError.checkNotNull(
              content, r'PrivacyPolicy', 'content'),
          updatedAt: BuiltValueNullFieldError.checkNotNull(
              updatedAt, r'PrivacyPolicy', 'updatedAt'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
