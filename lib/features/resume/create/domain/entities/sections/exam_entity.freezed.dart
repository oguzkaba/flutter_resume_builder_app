// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exam_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExamEntity _$ExamEntityFromJson(Map<String, dynamic> json) {
  return _ExamEntity.fromJson(json);
}

/// @nodoc
mixin _$ExamEntity {
  String get examName => throw _privateConstructorUsedError;
  String get testConductedBy => throw _privateConstructorUsedError;
  DateTime get examDate => throw _privateConstructorUsedError;
  ExamResult get examResult => throw _privateConstructorUsedError;
  String? get examDescription => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExamEntityCopyWith<ExamEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExamEntityCopyWith<$Res> {
  factory $ExamEntityCopyWith(
          ExamEntity value, $Res Function(ExamEntity) then) =
      _$ExamEntityCopyWithImpl<$Res, ExamEntity>;
  @useResult
  $Res call(
      {String examName,
      String testConductedBy,
      DateTime examDate,
      ExamResult examResult,
      String? examDescription});
}

/// @nodoc
class _$ExamEntityCopyWithImpl<$Res, $Val extends ExamEntity>
    implements $ExamEntityCopyWith<$Res> {
  _$ExamEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? examName = null,
    Object? testConductedBy = null,
    Object? examDate = null,
    Object? examResult = null,
    Object? examDescription = freezed,
  }) {
    return _then(_value.copyWith(
      examName: null == examName
          ? _value.examName
          : examName // ignore: cast_nullable_to_non_nullable
              as String,
      testConductedBy: null == testConductedBy
          ? _value.testConductedBy
          : testConductedBy // ignore: cast_nullable_to_non_nullable
              as String,
      examDate: null == examDate
          ? _value.examDate
          : examDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      examResult: null == examResult
          ? _value.examResult
          : examResult // ignore: cast_nullable_to_non_nullable
              as ExamResult,
      examDescription: freezed == examDescription
          ? _value.examDescription
          : examDescription // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExamEntityImplCopyWith<$Res>
    implements $ExamEntityCopyWith<$Res> {
  factory _$$ExamEntityImplCopyWith(
          _$ExamEntityImpl value, $Res Function(_$ExamEntityImpl) then) =
      __$$ExamEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String examName,
      String testConductedBy,
      DateTime examDate,
      ExamResult examResult,
      String? examDescription});
}

/// @nodoc
class __$$ExamEntityImplCopyWithImpl<$Res>
    extends _$ExamEntityCopyWithImpl<$Res, _$ExamEntityImpl>
    implements _$$ExamEntityImplCopyWith<$Res> {
  __$$ExamEntityImplCopyWithImpl(
      _$ExamEntityImpl _value, $Res Function(_$ExamEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? examName = null,
    Object? testConductedBy = null,
    Object? examDate = null,
    Object? examResult = null,
    Object? examDescription = freezed,
  }) {
    return _then(_$ExamEntityImpl(
      examName: null == examName
          ? _value.examName
          : examName // ignore: cast_nullable_to_non_nullable
              as String,
      testConductedBy: null == testConductedBy
          ? _value.testConductedBy
          : testConductedBy // ignore: cast_nullable_to_non_nullable
              as String,
      examDate: null == examDate
          ? _value.examDate
          : examDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      examResult: null == examResult
          ? _value.examResult
          : examResult // ignore: cast_nullable_to_non_nullable
              as ExamResult,
      examDescription: freezed == examDescription
          ? _value.examDescription
          : examDescription // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExamEntityImpl implements _ExamEntity {
  const _$ExamEntityImpl(
      {required this.examName,
      required this.testConductedBy,
      required this.examDate,
      required this.examResult,
      this.examDescription});

  factory _$ExamEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExamEntityImplFromJson(json);

  @override
  final String examName;
  @override
  final String testConductedBy;
  @override
  final DateTime examDate;
  @override
  final ExamResult examResult;
  @override
  final String? examDescription;

  @override
  String toString() {
    return 'ExamEntity(examName: $examName, testConductedBy: $testConductedBy, examDate: $examDate, examResult: $examResult, examDescription: $examDescription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExamEntityImpl &&
            (identical(other.examName, examName) ||
                other.examName == examName) &&
            (identical(other.testConductedBy, testConductedBy) ||
                other.testConductedBy == testConductedBy) &&
            (identical(other.examDate, examDate) ||
                other.examDate == examDate) &&
            (identical(other.examResult, examResult) ||
                other.examResult == examResult) &&
            (identical(other.examDescription, examDescription) ||
                other.examDescription == examDescription));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, examName, testConductedBy,
      examDate, examResult, examDescription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExamEntityImplCopyWith<_$ExamEntityImpl> get copyWith =>
      __$$ExamEntityImplCopyWithImpl<_$ExamEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExamEntityImplToJson(
      this,
    );
  }
}

abstract class _ExamEntity implements ExamEntity {
  const factory _ExamEntity(
      {required final String examName,
      required final String testConductedBy,
      required final DateTime examDate,
      required final ExamResult examResult,
      final String? examDescription}) = _$ExamEntityImpl;

  factory _ExamEntity.fromJson(Map<String, dynamic> json) =
      _$ExamEntityImpl.fromJson;

  @override
  String get examName;
  @override
  String get testConductedBy;
  @override
  DateTime get examDate;
  @override
  ExamResult get examResult;
  @override
  String? get examDescription;
  @override
  @JsonKey(ignore: true)
  _$$ExamEntityImplCopyWith<_$ExamEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
