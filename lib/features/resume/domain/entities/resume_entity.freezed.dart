// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resume_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResumeEntity _$ResumeEntityFromJson(Map<String, dynamic> json) {
  return _ResumeEntity.fromJson(json);
}

/// @nodoc
mixin _$ResumeEntity {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  PersonalDetailsEntity get personalDetails =>
      throw _privateConstructorUsedError;
  DateTime get createdDate => throw _privateConstructorUsedError;
  DateTime get lastUpdatedDate => throw _privateConstructorUsedError;
  String? get summary => throw _privateConstructorUsedError;
  List<ExperienceEntity>? get experiences => throw _privateConstructorUsedError;
  List<EducationEntity>? get educations => throw _privateConstructorUsedError;
  List<SkillEntity>? get skills => throw _privateConstructorUsedError;
  List<ExamEntity>? get exams => throw _privateConstructorUsedError;
  List<CertificationEntity>? get certifications =>
      throw _privateConstructorUsedError;
  List<LanguageEntity>? get languages => throw _privateConstructorUsedError;
  List<ProjectEntity>? get projects => throw _privateConstructorUsedError;
  List<ReferenceEntity>? get references => throw _privateConstructorUsedError;
  List<String>? get interests => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResumeEntityCopyWith<ResumeEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResumeEntityCopyWith<$Res> {
  factory $ResumeEntityCopyWith(
          ResumeEntity value, $Res Function(ResumeEntity) then) =
      _$ResumeEntityCopyWithImpl<$Res, ResumeEntity>;
  @useResult
  $Res call(
      {int id,
      String name,
      PersonalDetailsEntity personalDetails,
      DateTime createdDate,
      DateTime lastUpdatedDate,
      String? summary,
      List<ExperienceEntity>? experiences,
      List<EducationEntity>? educations,
      List<SkillEntity>? skills,
      List<ExamEntity>? exams,
      List<CertificationEntity>? certifications,
      List<LanguageEntity>? languages,
      List<ProjectEntity>? projects,
      List<ReferenceEntity>? references,
      List<String>? interests});

  $PersonalDetailsEntityCopyWith<$Res> get personalDetails;
}

/// @nodoc
class _$ResumeEntityCopyWithImpl<$Res, $Val extends ResumeEntity>
    implements $ResumeEntityCopyWith<$Res> {
  _$ResumeEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? personalDetails = null,
    Object? createdDate = null,
    Object? lastUpdatedDate = null,
    Object? summary = freezed,
    Object? experiences = freezed,
    Object? educations = freezed,
    Object? skills = freezed,
    Object? exams = freezed,
    Object? certifications = freezed,
    Object? languages = freezed,
    Object? projects = freezed,
    Object? references = freezed,
    Object? interests = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      personalDetails: null == personalDetails
          ? _value.personalDetails
          : personalDetails // ignore: cast_nullable_to_non_nullable
              as PersonalDetailsEntity,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastUpdatedDate: null == lastUpdatedDate
          ? _value.lastUpdatedDate
          : lastUpdatedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      experiences: freezed == experiences
          ? _value.experiences
          : experiences // ignore: cast_nullable_to_non_nullable
              as List<ExperienceEntity>?,
      educations: freezed == educations
          ? _value.educations
          : educations // ignore: cast_nullable_to_non_nullable
              as List<EducationEntity>?,
      skills: freezed == skills
          ? _value.skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<SkillEntity>?,
      exams: freezed == exams
          ? _value.exams
          : exams // ignore: cast_nullable_to_non_nullable
              as List<ExamEntity>?,
      certifications: freezed == certifications
          ? _value.certifications
          : certifications // ignore: cast_nullable_to_non_nullable
              as List<CertificationEntity>?,
      languages: freezed == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<LanguageEntity>?,
      projects: freezed == projects
          ? _value.projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<ProjectEntity>?,
      references: freezed == references
          ? _value.references
          : references // ignore: cast_nullable_to_non_nullable
              as List<ReferenceEntity>?,
      interests: freezed == interests
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PersonalDetailsEntityCopyWith<$Res> get personalDetails {
    return $PersonalDetailsEntityCopyWith<$Res>(_value.personalDetails,
        (value) {
      return _then(_value.copyWith(personalDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResumeEntityImplCopyWith<$Res>
    implements $ResumeEntityCopyWith<$Res> {
  factory _$$ResumeEntityImplCopyWith(
          _$ResumeEntityImpl value, $Res Function(_$ResumeEntityImpl) then) =
      __$$ResumeEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      PersonalDetailsEntity personalDetails,
      DateTime createdDate,
      DateTime lastUpdatedDate,
      String? summary,
      List<ExperienceEntity>? experiences,
      List<EducationEntity>? educations,
      List<SkillEntity>? skills,
      List<ExamEntity>? exams,
      List<CertificationEntity>? certifications,
      List<LanguageEntity>? languages,
      List<ProjectEntity>? projects,
      List<ReferenceEntity>? references,
      List<String>? interests});

  @override
  $PersonalDetailsEntityCopyWith<$Res> get personalDetails;
}

/// @nodoc
class __$$ResumeEntityImplCopyWithImpl<$Res>
    extends _$ResumeEntityCopyWithImpl<$Res, _$ResumeEntityImpl>
    implements _$$ResumeEntityImplCopyWith<$Res> {
  __$$ResumeEntityImplCopyWithImpl(
      _$ResumeEntityImpl _value, $Res Function(_$ResumeEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? personalDetails = null,
    Object? createdDate = null,
    Object? lastUpdatedDate = null,
    Object? summary = freezed,
    Object? experiences = freezed,
    Object? educations = freezed,
    Object? skills = freezed,
    Object? exams = freezed,
    Object? certifications = freezed,
    Object? languages = freezed,
    Object? projects = freezed,
    Object? references = freezed,
    Object? interests = freezed,
  }) {
    return _then(_$ResumeEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      personalDetails: null == personalDetails
          ? _value.personalDetails
          : personalDetails // ignore: cast_nullable_to_non_nullable
              as PersonalDetailsEntity,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastUpdatedDate: null == lastUpdatedDate
          ? _value.lastUpdatedDate
          : lastUpdatedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      experiences: freezed == experiences
          ? _value._experiences
          : experiences // ignore: cast_nullable_to_non_nullable
              as List<ExperienceEntity>?,
      educations: freezed == educations
          ? _value._educations
          : educations // ignore: cast_nullable_to_non_nullable
              as List<EducationEntity>?,
      skills: freezed == skills
          ? _value._skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<SkillEntity>?,
      exams: freezed == exams
          ? _value._exams
          : exams // ignore: cast_nullable_to_non_nullable
              as List<ExamEntity>?,
      certifications: freezed == certifications
          ? _value._certifications
          : certifications // ignore: cast_nullable_to_non_nullable
              as List<CertificationEntity>?,
      languages: freezed == languages
          ? _value._languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<LanguageEntity>?,
      projects: freezed == projects
          ? _value._projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<ProjectEntity>?,
      references: freezed == references
          ? _value._references
          : references // ignore: cast_nullable_to_non_nullable
              as List<ReferenceEntity>?,
      interests: freezed == interests
          ? _value._interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResumeEntityImpl implements _ResumeEntity {
  const _$ResumeEntityImpl(
      {required this.id,
      required this.name,
      required this.personalDetails,
      required this.createdDate,
      required this.lastUpdatedDate,
      this.summary,
      final List<ExperienceEntity>? experiences,
      final List<EducationEntity>? educations,
      final List<SkillEntity>? skills,
      final List<ExamEntity>? exams,
      final List<CertificationEntity>? certifications,
      final List<LanguageEntity>? languages,
      final List<ProjectEntity>? projects,
      final List<ReferenceEntity>? references,
      final List<String>? interests})
      : _experiences = experiences,
        _educations = educations,
        _skills = skills,
        _exams = exams,
        _certifications = certifications,
        _languages = languages,
        _projects = projects,
        _references = references,
        _interests = interests;

  factory _$ResumeEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResumeEntityImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final PersonalDetailsEntity personalDetails;
  @override
  final DateTime createdDate;
  @override
  final DateTime lastUpdatedDate;
  @override
  final String? summary;
  final List<ExperienceEntity>? _experiences;
  @override
  List<ExperienceEntity>? get experiences {
    final value = _experiences;
    if (value == null) return null;
    if (_experiences is EqualUnmodifiableListView) return _experiences;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<EducationEntity>? _educations;
  @override
  List<EducationEntity>? get educations {
    final value = _educations;
    if (value == null) return null;
    if (_educations is EqualUnmodifiableListView) return _educations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SkillEntity>? _skills;
  @override
  List<SkillEntity>? get skills {
    final value = _skills;
    if (value == null) return null;
    if (_skills is EqualUnmodifiableListView) return _skills;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ExamEntity>? _exams;
  @override
  List<ExamEntity>? get exams {
    final value = _exams;
    if (value == null) return null;
    if (_exams is EqualUnmodifiableListView) return _exams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CertificationEntity>? _certifications;
  @override
  List<CertificationEntity>? get certifications {
    final value = _certifications;
    if (value == null) return null;
    if (_certifications is EqualUnmodifiableListView) return _certifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<LanguageEntity>? _languages;
  @override
  List<LanguageEntity>? get languages {
    final value = _languages;
    if (value == null) return null;
    if (_languages is EqualUnmodifiableListView) return _languages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ProjectEntity>? _projects;
  @override
  List<ProjectEntity>? get projects {
    final value = _projects;
    if (value == null) return null;
    if (_projects is EqualUnmodifiableListView) return _projects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ReferenceEntity>? _references;
  @override
  List<ReferenceEntity>? get references {
    final value = _references;
    if (value == null) return null;
    if (_references is EqualUnmodifiableListView) return _references;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _interests;
  @override
  List<String>? get interests {
    final value = _interests;
    if (value == null) return null;
    if (_interests is EqualUnmodifiableListView) return _interests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ResumeEntity(id: $id, name: $name, personalDetails: $personalDetails, createdDate: $createdDate, lastUpdatedDate: $lastUpdatedDate, summary: $summary, experiences: $experiences, educations: $educations, skills: $skills, exams: $exams, certifications: $certifications, languages: $languages, projects: $projects, references: $references, interests: $interests)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResumeEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.personalDetails, personalDetails) ||
                other.personalDetails == personalDetails) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.lastUpdatedDate, lastUpdatedDate) ||
                other.lastUpdatedDate == lastUpdatedDate) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            const DeepCollectionEquality()
                .equals(other._experiences, _experiences) &&
            const DeepCollectionEquality()
                .equals(other._educations, _educations) &&
            const DeepCollectionEquality().equals(other._skills, _skills) &&
            const DeepCollectionEquality().equals(other._exams, _exams) &&
            const DeepCollectionEquality()
                .equals(other._certifications, _certifications) &&
            const DeepCollectionEquality()
                .equals(other._languages, _languages) &&
            const DeepCollectionEquality().equals(other._projects, _projects) &&
            const DeepCollectionEquality()
                .equals(other._references, _references) &&
            const DeepCollectionEquality()
                .equals(other._interests, _interests));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      personalDetails,
      createdDate,
      lastUpdatedDate,
      summary,
      const DeepCollectionEquality().hash(_experiences),
      const DeepCollectionEquality().hash(_educations),
      const DeepCollectionEquality().hash(_skills),
      const DeepCollectionEquality().hash(_exams),
      const DeepCollectionEquality().hash(_certifications),
      const DeepCollectionEquality().hash(_languages),
      const DeepCollectionEquality().hash(_projects),
      const DeepCollectionEquality().hash(_references),
      const DeepCollectionEquality().hash(_interests));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResumeEntityImplCopyWith<_$ResumeEntityImpl> get copyWith =>
      __$$ResumeEntityImplCopyWithImpl<_$ResumeEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResumeEntityImplToJson(
      this,
    );
  }
}

abstract class _ResumeEntity implements ResumeEntity {
  const factory _ResumeEntity(
      {required final int id,
      required final String name,
      required final PersonalDetailsEntity personalDetails,
      required final DateTime createdDate,
      required final DateTime lastUpdatedDate,
      final String? summary,
      final List<ExperienceEntity>? experiences,
      final List<EducationEntity>? educations,
      final List<SkillEntity>? skills,
      final List<ExamEntity>? exams,
      final List<CertificationEntity>? certifications,
      final List<LanguageEntity>? languages,
      final List<ProjectEntity>? projects,
      final List<ReferenceEntity>? references,
      final List<String>? interests}) = _$ResumeEntityImpl;

  factory _ResumeEntity.fromJson(Map<String, dynamic> json) =
      _$ResumeEntityImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  PersonalDetailsEntity get personalDetails;
  @override
  DateTime get createdDate;
  @override
  DateTime get lastUpdatedDate;
  @override
  String? get summary;
  @override
  List<ExperienceEntity>? get experiences;
  @override
  List<EducationEntity>? get educations;
  @override
  List<SkillEntity>? get skills;
  @override
  List<ExamEntity>? get exams;
  @override
  List<CertificationEntity>? get certifications;
  @override
  List<LanguageEntity>? get languages;
  @override
  List<ProjectEntity>? get projects;
  @override
  List<ReferenceEntity>? get references;
  @override
  List<String>? get interests;
  @override
  @JsonKey(ignore: true)
  _$$ResumeEntityImplCopyWith<_$ResumeEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
