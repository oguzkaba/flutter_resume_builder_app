// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resume_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResumeEntityImpl _$$ResumeEntityImplFromJson(Map<String, dynamic> json) =>
    _$ResumeEntityImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      personalDetails: PersonalDetailsEntity.fromJson(
          json['personalDetails'] as Map<String, dynamic>),
      createdDate: DateTime.parse(json['createdDate'] as String),
      lastUpdatedDate: DateTime.parse(json['lastUpdatedDate'] as String),
      summary: json['summary'] as String?,
      experiences: (json['experiences'] as List<dynamic>?)
          ?.map((e) => ExperienceEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      educations: (json['educations'] as List<dynamic>?)
          ?.map((e) => EducationEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      skills: (json['skills'] as List<dynamic>?)
          ?.map((e) => SkillEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      exams: (json['exams'] as List<dynamic>?)
          ?.map((e) => ExamEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      certifications: (json['certifications'] as List<dynamic>?)
          ?.map((e) => CertificationEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      languages: (json['languages'] as List<dynamic>?)
          ?.map((e) => LanguageEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      projects: (json['projects'] as List<dynamic>?)
          ?.map((e) => ProjectEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      references: (json['references'] as List<dynamic>?)
          ?.map((e) => ReferenceEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      interests: (json['interests'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$ResumeEntityImplToJson(_$ResumeEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'personalDetails': instance.personalDetails,
      'createdDate': instance.createdDate.toIso8601String(),
      'lastUpdatedDate': instance.lastUpdatedDate.toIso8601String(),
      'summary': instance.summary,
      'experiences': instance.experiences,
      'educations': instance.educations,
      'skills': instance.skills,
      'exams': instance.exams,
      'certifications': instance.certifications,
      'languages': instance.languages,
      'projects': instance.projects,
      'references': instance.references,
      'interests': instance.interests,
    };
