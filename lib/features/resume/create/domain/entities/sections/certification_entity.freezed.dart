// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'certification_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CertificationEntity _$CertificationEntityFromJson(Map<String, dynamic> json) {
  return _CertificationEntity.fromJson(json);
}

/// @nodoc
mixin _$CertificationEntity {
  String get certificateName => throw _privateConstructorUsedError;
  String get organization => throw _privateConstructorUsedError;
  DateTime get certificateDate => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CertificationEntityCopyWith<CertificationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CertificationEntityCopyWith<$Res> {
  factory $CertificationEntityCopyWith(
          CertificationEntity value, $Res Function(CertificationEntity) then) =
      _$CertificationEntityCopyWithImpl<$Res, CertificationEntity>;
  @useResult
  $Res call(
      {String certificateName,
      String organization,
      DateTime certificateDate,
      String? description});
}

/// @nodoc
class _$CertificationEntityCopyWithImpl<$Res, $Val extends CertificationEntity>
    implements $CertificationEntityCopyWith<$Res> {
  _$CertificationEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? certificateName = null,
    Object? organization = null,
    Object? certificateDate = null,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      certificateName: null == certificateName
          ? _value.certificateName
          : certificateName // ignore: cast_nullable_to_non_nullable
              as String,
      organization: null == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as String,
      certificateDate: null == certificateDate
          ? _value.certificateDate
          : certificateDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CertificationEntityImplCopyWith<$Res>
    implements $CertificationEntityCopyWith<$Res> {
  factory _$$CertificationEntityImplCopyWith(_$CertificationEntityImpl value,
          $Res Function(_$CertificationEntityImpl) then) =
      __$$CertificationEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String certificateName,
      String organization,
      DateTime certificateDate,
      String? description});
}

/// @nodoc
class __$$CertificationEntityImplCopyWithImpl<$Res>
    extends _$CertificationEntityCopyWithImpl<$Res, _$CertificationEntityImpl>
    implements _$$CertificationEntityImplCopyWith<$Res> {
  __$$CertificationEntityImplCopyWithImpl(_$CertificationEntityImpl _value,
      $Res Function(_$CertificationEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? certificateName = null,
    Object? organization = null,
    Object? certificateDate = null,
    Object? description = freezed,
  }) {
    return _then(_$CertificationEntityImpl(
      certificateName: null == certificateName
          ? _value.certificateName
          : certificateName // ignore: cast_nullable_to_non_nullable
              as String,
      organization: null == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as String,
      certificateDate: null == certificateDate
          ? _value.certificateDate
          : certificateDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CertificationEntityImpl implements _CertificationEntity {
  const _$CertificationEntityImpl(
      {required this.certificateName,
      required this.organization,
      required this.certificateDate,
      this.description});

  factory _$CertificationEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CertificationEntityImplFromJson(json);

  @override
  final String certificateName;
  @override
  final String organization;
  @override
  final DateTime certificateDate;
  @override
  final String? description;

  @override
  String toString() {
    return 'CertificationEntity(certificateName: $certificateName, organization: $organization, certificateDate: $certificateDate, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CertificationEntityImpl &&
            (identical(other.certificateName, certificateName) ||
                other.certificateName == certificateName) &&
            (identical(other.organization, organization) ||
                other.organization == organization) &&
            (identical(other.certificateDate, certificateDate) ||
                other.certificateDate == certificateDate) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, certificateName, organization, certificateDate, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CertificationEntityImplCopyWith<_$CertificationEntityImpl> get copyWith =>
      __$$CertificationEntityImplCopyWithImpl<_$CertificationEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CertificationEntityImplToJson(
      this,
    );
  }
}

abstract class _CertificationEntity implements CertificationEntity {
  const factory _CertificationEntity(
      {required final String certificateName,
      required final String organization,
      required final DateTime certificateDate,
      final String? description}) = _$CertificationEntityImpl;

  factory _CertificationEntity.fromJson(Map<String, dynamic> json) =
      _$CertificationEntityImpl.fromJson;

  @override
  String get certificateName;
  @override
  String get organization;
  @override
  DateTime get certificateDate;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$CertificationEntityImplCopyWith<_$CertificationEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
