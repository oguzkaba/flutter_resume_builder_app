// ignore_for_file: public_member_api_docs

import 'dart:convert';
import 'package:flutter_resume_builder_app/features/resume/create/domain/entities/sections/sections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'resume_entity.freezed.dart';
part 'resume_entity.g.dart';

ResumeEntity resumeEntityFromJson(String str) =>
    ResumeEntity.fromJson(json.decode(str) as Map<String, dynamic>);

String resumeEntityToJson(ResumeEntity data) => json.encode(data.toJson());

@freezed
class ResumeEntity with _$ResumeEntity {
  const factory ResumeEntity({
    required int id,
    required String name,
    required PersonalDetailsEntity personalDetails,
    required DateTime createdDate,
    required DateTime lastUpdatedDate,
    String? summary,
    List<ExperienceEntity>? experiences,
    List<EducationEntity>? educations,
    List<SkillEntity>? skills,
    List<ExamEntity>? exams,
    List<CertificationEntity>? certifications,
    List<LanguageEntity>? languages,
    List<ProjectEntity>? projects,
    List<ReferenceEntity>? references,
    List<String>? interests,
  }) = _ResumeEntity;

  factory ResumeEntity.fromJson(Map<String, dynamic> json) =>
      _$ResumeEntityFromJson(json);
}
