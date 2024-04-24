// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: require_trailing_commas, unnecessary_null_checks

part of 'experience_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExperienceEntityImpl _$$ExperienceEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ExperienceEntityImpl(
      companyName: json['companyName'] as String,
      companySector: json['companySector'] as String,
      title: json['title'] as String,
      startingDate: DateTime.parse(json['startingDate'] as String),
      jobType: $enumDecode(_$JobTypeEnumMap, json['jobType']),
      endingDate: json['endingDate'] == null
          ? null
          : DateTime.parse(json['endingDate'] as String),
      stillWorking: json['stillWorking'] as bool?,
      additionalInfo: json['additionalInfo'] as String?,
    );

Map<String, dynamic> _$$ExperienceEntityImplToJson(
        _$ExperienceEntityImpl instance) =>
    <String, dynamic>{
      'companyName': instance.companyName,
      'companySector': instance.companySector,
      'title': instance.title,
      'startingDate': instance.startingDate.toIso8601String(),
      'jobType': _$JobTypeEnumMap[instance.jobType]!,
      'endingDate': instance.endingDate?.toIso8601String(),
      'stillWorking': instance.stillWorking,
      'additionalInfo': instance.additionalInfo,
    };

const _$JobTypeEnumMap = {
  JobType.fullTime: 'fullTime',
  JobType.partTime: 'partTime',
  JobType.internship: 'internship',
  JobType.contract: 'contract',
  JobType.freelance: 'freelance',
  JobType.volunteer: 'volunteer',
};
