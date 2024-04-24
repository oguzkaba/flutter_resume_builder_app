// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProjectEntity _$ProjectEntityFromJson(Map<String, dynamic> json) {
  return _ProjectEntity.fromJson(json);
}

/// @nodoc
mixin _$ProjectEntity {
  String get projectName => throw _privateConstructorUsedError;
  DateTime get projectDate => throw _privateConstructorUsedError;
  String? get projectLink => throw _privateConstructorUsedError;
  String? get projectDescription => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectEntityCopyWith<ProjectEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectEntityCopyWith<$Res> {
  factory $ProjectEntityCopyWith(
          ProjectEntity value, $Res Function(ProjectEntity) then) =
      _$ProjectEntityCopyWithImpl<$Res, ProjectEntity>;
  @useResult
  $Res call(
      {String projectName,
      DateTime projectDate,
      String? projectLink,
      String? projectDescription});
}

/// @nodoc
class _$ProjectEntityCopyWithImpl<$Res, $Val extends ProjectEntity>
    implements $ProjectEntityCopyWith<$Res> {
  _$ProjectEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectName = null,
    Object? projectDate = null,
    Object? projectLink = freezed,
    Object? projectDescription = freezed,
  }) {
    return _then(_value.copyWith(
      projectName: null == projectName
          ? _value.projectName
          : projectName // ignore: cast_nullable_to_non_nullable
              as String,
      projectDate: null == projectDate
          ? _value.projectDate
          : projectDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      projectLink: freezed == projectLink
          ? _value.projectLink
          : projectLink // ignore: cast_nullable_to_non_nullable
              as String?,
      projectDescription: freezed == projectDescription
          ? _value.projectDescription
          : projectDescription // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProjectEntityImplCopyWith<$Res>
    implements $ProjectEntityCopyWith<$Res> {
  factory _$$ProjectEntityImplCopyWith(
          _$ProjectEntityImpl value, $Res Function(_$ProjectEntityImpl) then) =
      __$$ProjectEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String projectName,
      DateTime projectDate,
      String? projectLink,
      String? projectDescription});
}

/// @nodoc
class __$$ProjectEntityImplCopyWithImpl<$Res>
    extends _$ProjectEntityCopyWithImpl<$Res, _$ProjectEntityImpl>
    implements _$$ProjectEntityImplCopyWith<$Res> {
  __$$ProjectEntityImplCopyWithImpl(
      _$ProjectEntityImpl _value, $Res Function(_$ProjectEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectName = null,
    Object? projectDate = null,
    Object? projectLink = freezed,
    Object? projectDescription = freezed,
  }) {
    return _then(_$ProjectEntityImpl(
      projectName: null == projectName
          ? _value.projectName
          : projectName // ignore: cast_nullable_to_non_nullable
              as String,
      projectDate: null == projectDate
          ? _value.projectDate
          : projectDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      projectLink: freezed == projectLink
          ? _value.projectLink
          : projectLink // ignore: cast_nullable_to_non_nullable
              as String?,
      projectDescription: freezed == projectDescription
          ? _value.projectDescription
          : projectDescription // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectEntityImpl implements _ProjectEntity {
  const _$ProjectEntityImpl(
      {required this.projectName,
      required this.projectDate,
      this.projectLink,
      this.projectDescription});

  factory _$ProjectEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectEntityImplFromJson(json);

  @override
  final String projectName;
  @override
  final DateTime projectDate;
  @override
  final String? projectLink;
  @override
  final String? projectDescription;

  @override
  String toString() {
    return 'ProjectEntity(projectName: $projectName, projectDate: $projectDate, projectLink: $projectLink, projectDescription: $projectDescription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectEntityImpl &&
            (identical(other.projectName, projectName) ||
                other.projectName == projectName) &&
            (identical(other.projectDate, projectDate) ||
                other.projectDate == projectDate) &&
            (identical(other.projectLink, projectLink) ||
                other.projectLink == projectLink) &&
            (identical(other.projectDescription, projectDescription) ||
                other.projectDescription == projectDescription));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, projectName, projectDate, projectLink, projectDescription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectEntityImplCopyWith<_$ProjectEntityImpl> get copyWith =>
      __$$ProjectEntityImplCopyWithImpl<_$ProjectEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectEntityImplToJson(
      this,
    );
  }
}

abstract class _ProjectEntity implements ProjectEntity {
  const factory _ProjectEntity(
      {required final String projectName,
      required final DateTime projectDate,
      final String? projectLink,
      final String? projectDescription}) = _$ProjectEntityImpl;

  factory _ProjectEntity.fromJson(Map<String, dynamic> json) =
      _$ProjectEntityImpl.fromJson;

  @override
  String get projectName;
  @override
  DateTime get projectDate;
  @override
  String? get projectLink;
  @override
  String? get projectDescription;
  @override
  @JsonKey(ignore: true)
  _$$ProjectEntityImplCopyWith<_$ProjectEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
