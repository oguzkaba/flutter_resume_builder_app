// ignore_for_file: public_member_api_docs

import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'education_entity.freezed.dart';
part 'education_entity.g.dart';

EducationEntity educationEntityFromJson(String str) =>
    EducationEntity.fromJson(json.decode(str) as Map<String, dynamic>);

String educationEntityToJson(EducationEntity data) =>
    json.encode(data.toJson());

enum EducationLevel {
  highSchool,
  associate,
  bachelor,
  master,
  doctorate,
  other
}

enum SchoolType { faculty, institute, college, vocational, other }

enum EducationType { distance, formal, evening, open, other }

enum EducationLanguage {
  english,
  turkish,
  german,
  french,
  spanish,
  russian,
  chinese,
  arabic,
  other
}

enum ScholarshipType { support, success, incentive, other }

@freezed
class EducationEntity with _$EducationEntity {
  const factory EducationEntity({
    required EducationLevel educationLevel,
    required String schoolName,
    required SchoolType schoolType,
    required String department,
    required DateTime startingDate,
    DateTime? endingDate,
    bool? stillStaying,
    bool? dropout,
    String? additionalInfo,
    EducationType? educationType,
    EducationLanguage? educationLanguage,
    ScholarshipType? scholarshipType,
    int? scholarshipRate,
  }) = _EducationEntity;

  factory EducationEntity.fromJson(Map<String, dynamic> json) =>
      _$EducationEntityFromJson(json);
}
