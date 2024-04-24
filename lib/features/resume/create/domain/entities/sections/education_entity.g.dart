// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: require_trailing_commas, unnecessary_null_checks

part of 'education_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EducationEntityImpl _$$EducationEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$EducationEntityImpl(
      educationLevel:
          $enumDecode(_$EducationLevelEnumMap, json['educationLevel']),
      schoolName: json['schoolName'] as String,
      schoolType: $enumDecode(_$SchoolTypeEnumMap, json['schoolType']),
      department: json['department'] as String,
      startingDate: DateTime.parse(json['startingDate'] as String),
      endingDate: json['endingDate'] == null
          ? null
          : DateTime.parse(json['endingDate'] as String),
      stillStaying: json['stillStaying'] as bool?,
      dropout: json['dropout'] as bool?,
      additionalInfo: json['additionalInfo'] as String?,
      educationType:
          $enumDecodeNullable(_$EducationTypeEnumMap, json['educationType']),
      educationLanguage: $enumDecodeNullable(
          _$EducationLanguageEnumMap, json['educationLanguage']),
      scholarshipType: $enumDecodeNullable(
          _$ScholarshipTypeEnumMap, json['scholarshipType']),
      scholarshipRate: json['scholarshipRate'] as int?,
    );

Map<String, dynamic> _$$EducationEntityImplToJson(
        _$EducationEntityImpl instance) =>
    <String, dynamic>{
      'educationLevel': _$EducationLevelEnumMap[instance.educationLevel]!,
      'schoolName': instance.schoolName,
      'schoolType': _$SchoolTypeEnumMap[instance.schoolType]!,
      'department': instance.department,
      'startingDate': instance.startingDate.toIso8601String(),
      'endingDate': instance.endingDate?.toIso8601String(),
      'stillStaying': instance.stillStaying,
      'dropout': instance.dropout,
      'additionalInfo': instance.additionalInfo,
      'educationType': _$EducationTypeEnumMap[instance.educationType],
      'educationLanguage':
          _$EducationLanguageEnumMap[instance.educationLanguage],
      'scholarshipType': _$ScholarshipTypeEnumMap[instance.scholarshipType],
      'scholarshipRate': instance.scholarshipRate,
    };

const _$EducationLevelEnumMap = {
  EducationLevel.highSchool: 'highSchool',
  EducationLevel.associate: 'associate',
  EducationLevel.bachelor: 'bachelor',
  EducationLevel.master: 'master',
  EducationLevel.doctorate: 'doctorate',
  EducationLevel.other: 'other',
};

const _$SchoolTypeEnumMap = {
  SchoolType.faculty: 'faculty',
  SchoolType.institute: 'institute',
  SchoolType.college: 'college',
  SchoolType.vocational: 'vocational',
  SchoolType.other: 'other',
};

const _$EducationTypeEnumMap = {
  EducationType.distance: 'distance',
  EducationType.formal: 'formal',
  EducationType.evening: 'evening',
  EducationType.open: 'open',
  EducationType.other: 'other',
};

const _$EducationLanguageEnumMap = {
  EducationLanguage.english: 'english',
  EducationLanguage.turkish: 'turkish',
  EducationLanguage.german: 'german',
  EducationLanguage.french: 'french',
  EducationLanguage.spanish: 'spanish',
  EducationLanguage.russian: 'russian',
  EducationLanguage.chinese: 'chinese',
  EducationLanguage.arabic: 'arabic',
  EducationLanguage.other: 'other',
};

const _$ScholarshipTypeEnumMap = {
  ScholarshipType.support: 'support',
  ScholarshipType.success: 'success',
  ScholarshipType.incentive: 'incentive',
  ScholarshipType.other: 'other',
};
