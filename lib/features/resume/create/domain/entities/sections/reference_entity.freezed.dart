// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reference_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReferenceEntity _$ReferenceEntityFromJson(Map<String, dynamic> json) {
  return _ReferenceEntity.fromJson(json);
}

/// @nodoc
mixin _$ReferenceEntity {
  String get referenceName => throw _privateConstructorUsedError;
  String get referenceLastName => throw _privateConstructorUsedError;
  String get referenceTitle => throw _privateConstructorUsedError;
  String get referenceCompany => throw _privateConstructorUsedError;
  String get referencePhone => throw _privateConstructorUsedError;
  String get referenceEmail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReferenceEntityCopyWith<ReferenceEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferenceEntityCopyWith<$Res> {
  factory $ReferenceEntityCopyWith(
          ReferenceEntity value, $Res Function(ReferenceEntity) then) =
      _$ReferenceEntityCopyWithImpl<$Res, ReferenceEntity>;
  @useResult
  $Res call(
      {String referenceName,
      String referenceLastName,
      String referenceTitle,
      String referenceCompany,
      String referencePhone,
      String referenceEmail});
}

/// @nodoc
class _$ReferenceEntityCopyWithImpl<$Res, $Val extends ReferenceEntity>
    implements $ReferenceEntityCopyWith<$Res> {
  _$ReferenceEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? referenceName = null,
    Object? referenceLastName = null,
    Object? referenceTitle = null,
    Object? referenceCompany = null,
    Object? referencePhone = null,
    Object? referenceEmail = null,
  }) {
    return _then(_value.copyWith(
      referenceName: null == referenceName
          ? _value.referenceName
          : referenceName // ignore: cast_nullable_to_non_nullable
              as String,
      referenceLastName: null == referenceLastName
          ? _value.referenceLastName
          : referenceLastName // ignore: cast_nullable_to_non_nullable
              as String,
      referenceTitle: null == referenceTitle
          ? _value.referenceTitle
          : referenceTitle // ignore: cast_nullable_to_non_nullable
              as String,
      referenceCompany: null == referenceCompany
          ? _value.referenceCompany
          : referenceCompany // ignore: cast_nullable_to_non_nullable
              as String,
      referencePhone: null == referencePhone
          ? _value.referencePhone
          : referencePhone // ignore: cast_nullable_to_non_nullable
              as String,
      referenceEmail: null == referenceEmail
          ? _value.referenceEmail
          : referenceEmail // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReferenceEntityImplCopyWith<$Res>
    implements $ReferenceEntityCopyWith<$Res> {
  factory _$$ReferenceEntityImplCopyWith(_$ReferenceEntityImpl value,
          $Res Function(_$ReferenceEntityImpl) then) =
      __$$ReferenceEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String referenceName,
      String referenceLastName,
      String referenceTitle,
      String referenceCompany,
      String referencePhone,
      String referenceEmail});
}

/// @nodoc
class __$$ReferenceEntityImplCopyWithImpl<$Res>
    extends _$ReferenceEntityCopyWithImpl<$Res, _$ReferenceEntityImpl>
    implements _$$ReferenceEntityImplCopyWith<$Res> {
  __$$ReferenceEntityImplCopyWithImpl(
      _$ReferenceEntityImpl _value, $Res Function(_$ReferenceEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? referenceName = null,
    Object? referenceLastName = null,
    Object? referenceTitle = null,
    Object? referenceCompany = null,
    Object? referencePhone = null,
    Object? referenceEmail = null,
  }) {
    return _then(_$ReferenceEntityImpl(
      referenceName: null == referenceName
          ? _value.referenceName
          : referenceName // ignore: cast_nullable_to_non_nullable
              as String,
      referenceLastName: null == referenceLastName
          ? _value.referenceLastName
          : referenceLastName // ignore: cast_nullable_to_non_nullable
              as String,
      referenceTitle: null == referenceTitle
          ? _value.referenceTitle
          : referenceTitle // ignore: cast_nullable_to_non_nullable
              as String,
      referenceCompany: null == referenceCompany
          ? _value.referenceCompany
          : referenceCompany // ignore: cast_nullable_to_non_nullable
              as String,
      referencePhone: null == referencePhone
          ? _value.referencePhone
          : referencePhone // ignore: cast_nullable_to_non_nullable
              as String,
      referenceEmail: null == referenceEmail
          ? _value.referenceEmail
          : referenceEmail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReferenceEntityImpl implements _ReferenceEntity {
  const _$ReferenceEntityImpl(
      {required this.referenceName,
      required this.referenceLastName,
      required this.referenceTitle,
      required this.referenceCompany,
      required this.referencePhone,
      required this.referenceEmail});

  factory _$ReferenceEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReferenceEntityImplFromJson(json);

  @override
  final String referenceName;
  @override
  final String referenceLastName;
  @override
  final String referenceTitle;
  @override
  final String referenceCompany;
  @override
  final String referencePhone;
  @override
  final String referenceEmail;

  @override
  String toString() {
    return 'ReferenceEntity(referenceName: $referenceName, referenceLastName: $referenceLastName, referenceTitle: $referenceTitle, referenceCompany: $referenceCompany, referencePhone: $referencePhone, referenceEmail: $referenceEmail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReferenceEntityImpl &&
            (identical(other.referenceName, referenceName) ||
                other.referenceName == referenceName) &&
            (identical(other.referenceLastName, referenceLastName) ||
                other.referenceLastName == referenceLastName) &&
            (identical(other.referenceTitle, referenceTitle) ||
                other.referenceTitle == referenceTitle) &&
            (identical(other.referenceCompany, referenceCompany) ||
                other.referenceCompany == referenceCompany) &&
            (identical(other.referencePhone, referencePhone) ||
                other.referencePhone == referencePhone) &&
            (identical(other.referenceEmail, referenceEmail) ||
                other.referenceEmail == referenceEmail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, referenceName, referenceLastName,
      referenceTitle, referenceCompany, referencePhone, referenceEmail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReferenceEntityImplCopyWith<_$ReferenceEntityImpl> get copyWith =>
      __$$ReferenceEntityImplCopyWithImpl<_$ReferenceEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReferenceEntityImplToJson(
      this,
    );
  }
}

abstract class _ReferenceEntity implements ReferenceEntity {
  const factory _ReferenceEntity(
      {required final String referenceName,
      required final String referenceLastName,
      required final String referenceTitle,
      required final String referenceCompany,
      required final String referencePhone,
      required final String referenceEmail}) = _$ReferenceEntityImpl;

  factory _ReferenceEntity.fromJson(Map<String, dynamic> json) =
      _$ReferenceEntityImpl.fromJson;

  @override
  String get referenceName;
  @override
  String get referenceLastName;
  @override
  String get referenceTitle;
  @override
  String get referenceCompany;
  @override
  String get referencePhone;
  @override
  String get referenceEmail;
  @override
  @JsonKey(ignore: true)
  _$$ReferenceEntityImplCopyWith<_$ReferenceEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
