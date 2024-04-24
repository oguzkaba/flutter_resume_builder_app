// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'experience_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExperienceEntity _$ExperienceEntityFromJson(Map<String, dynamic> json) {
  return _ExperienceEntity.fromJson(json);
}

/// @nodoc
mixin _$ExperienceEntity {
  String get companyName => throw _privateConstructorUsedError;
  String get companySector => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  DateTime get startingDate => throw _privateConstructorUsedError;
  JobType get jobType => throw _privateConstructorUsedError;
  DateTime? get endingDate => throw _privateConstructorUsedError;
  bool? get stillWorking => throw _privateConstructorUsedError;
  String? get additionalInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExperienceEntityCopyWith<ExperienceEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExperienceEntityCopyWith<$Res> {
  factory $ExperienceEntityCopyWith(
          ExperienceEntity value, $Res Function(ExperienceEntity) then) =
      _$ExperienceEntityCopyWithImpl<$Res, ExperienceEntity>;
  @useResult
  $Res call(
      {String companyName,
      String companySector,
      String title,
      DateTime startingDate,
      JobType jobType,
      DateTime? endingDate,
      bool? stillWorking,
      String? additionalInfo});
}

/// @nodoc
class _$ExperienceEntityCopyWithImpl<$Res, $Val extends ExperienceEntity>
    implements $ExperienceEntityCopyWith<$Res> {
  _$ExperienceEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyName = null,
    Object? companySector = null,
    Object? title = null,
    Object? startingDate = null,
    Object? jobType = null,
    Object? endingDate = freezed,
    Object? stillWorking = freezed,
    Object? additionalInfo = freezed,
  }) {
    return _then(_value.copyWith(
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      companySector: null == companySector
          ? _value.companySector
          : companySector // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      startingDate: null == startingDate
          ? _value.startingDate
          : startingDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      jobType: null == jobType
          ? _value.jobType
          : jobType // ignore: cast_nullable_to_non_nullable
              as JobType,
      endingDate: freezed == endingDate
          ? _value.endingDate
          : endingDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      stillWorking: freezed == stillWorking
          ? _value.stillWorking
          : stillWorking // ignore: cast_nullable_to_non_nullable
              as bool?,
      additionalInfo: freezed == additionalInfo
          ? _value.additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExperienceEntityImplCopyWith<$Res>
    implements $ExperienceEntityCopyWith<$Res> {
  factory _$$ExperienceEntityImplCopyWith(_$ExperienceEntityImpl value,
          $Res Function(_$ExperienceEntityImpl) then) =
      __$$ExperienceEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String companyName,
      String companySector,
      String title,
      DateTime startingDate,
      JobType jobType,
      DateTime? endingDate,
      bool? stillWorking,
      String? additionalInfo});
}

/// @nodoc
class __$$ExperienceEntityImplCopyWithImpl<$Res>
    extends _$ExperienceEntityCopyWithImpl<$Res, _$ExperienceEntityImpl>
    implements _$$ExperienceEntityImplCopyWith<$Res> {
  __$$ExperienceEntityImplCopyWithImpl(_$ExperienceEntityImpl _value,
      $Res Function(_$ExperienceEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyName = null,
    Object? companySector = null,
    Object? title = null,
    Object? startingDate = null,
    Object? jobType = null,
    Object? endingDate = freezed,
    Object? stillWorking = freezed,
    Object? additionalInfo = freezed,
  }) {
    return _then(_$ExperienceEntityImpl(
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      companySector: null == companySector
          ? _value.companySector
          : companySector // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      startingDate: null == startingDate
          ? _value.startingDate
          : startingDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      jobType: null == jobType
          ? _value.jobType
          : jobType // ignore: cast_nullable_to_non_nullable
              as JobType,
      endingDate: freezed == endingDate
          ? _value.endingDate
          : endingDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      stillWorking: freezed == stillWorking
          ? _value.stillWorking
          : stillWorking // ignore: cast_nullable_to_non_nullable
              as bool?,
      additionalInfo: freezed == additionalInfo
          ? _value.additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExperienceEntityImpl implements _ExperienceEntity {
  const _$ExperienceEntityImpl(
      {required this.companyName,
      required this.companySector,
      required this.title,
      required this.startingDate,
      required this.jobType,
      this.endingDate,
      this.stillWorking,
      this.additionalInfo});

  factory _$ExperienceEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExperienceEntityImplFromJson(json);

  @override
  final String companyName;
  @override
  final String companySector;
  @override
  final String title;
  @override
  final DateTime startingDate;
  @override
  final JobType jobType;
  @override
  final DateTime? endingDate;
  @override
  final bool? stillWorking;
  @override
  final String? additionalInfo;

  @override
  String toString() {
    return 'ExperienceEntity(companyName: $companyName, companySector: $companySector, title: $title, startingDate: $startingDate, jobType: $jobType, endingDate: $endingDate, stillWorking: $stillWorking, additionalInfo: $additionalInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExperienceEntityImpl &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.companySector, companySector) ||
                other.companySector == companySector) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.startingDate, startingDate) ||
                other.startingDate == startingDate) &&
            (identical(other.jobType, jobType) || other.jobType == jobType) &&
            (identical(other.endingDate, endingDate) ||
                other.endingDate == endingDate) &&
            (identical(other.stillWorking, stillWorking) ||
                other.stillWorking == stillWorking) &&
            (identical(other.additionalInfo, additionalInfo) ||
                other.additionalInfo == additionalInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, companyName, companySector,
      title, startingDate, jobType, endingDate, stillWorking, additionalInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExperienceEntityImplCopyWith<_$ExperienceEntityImpl> get copyWith =>
      __$$ExperienceEntityImplCopyWithImpl<_$ExperienceEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExperienceEntityImplToJson(
      this,
    );
  }
}

abstract class _ExperienceEntity implements ExperienceEntity {
  const factory _ExperienceEntity(
      {required final String companyName,
      required final String companySector,
      required final String title,
      required final DateTime startingDate,
      required final JobType jobType,
      final DateTime? endingDate,
      final bool? stillWorking,
      final String? additionalInfo}) = _$ExperienceEntityImpl;

  factory _ExperienceEntity.fromJson(Map<String, dynamic> json) =
      _$ExperienceEntityImpl.fromJson;

  @override
  String get companyName;
  @override
  String get companySector;
  @override
  String get title;
  @override
  DateTime get startingDate;
  @override
  JobType get jobType;
  @override
  DateTime? get endingDate;
  @override
  bool? get stillWorking;
  @override
  String? get additionalInfo;
  @override
  @JsonKey(ignore: true)
  _$$ExperienceEntityImplCopyWith<_$ExperienceEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
