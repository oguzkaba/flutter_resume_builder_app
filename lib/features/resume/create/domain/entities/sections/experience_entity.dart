// ignore_for_file: public_member_api_docs

import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'experience_entity.freezed.dart';
part 'experience_entity.g.dart';

enum JobType { fullTime, partTime, internship, contract, freelance, volunteer }

ExperienceEntity experienceEntityFromJson(String str) =>
    ExperienceEntity.fromJson(json.decode(str) as Map<String, dynamic>);

String experienceEntityToJson(ExperienceEntity data) =>
    json.encode(data.toJson());

@freezed
class ExperienceEntity with _$ExperienceEntity {
  const factory ExperienceEntity({
    required String companyName,
    required String companySector,
    required String title,
    required DateTime startingDate,
    required JobType jobType,
    DateTime? endingDate,
    bool? stillWorking,
    String? additionalInfo,
  }) = _ExperienceEntity;

  factory ExperienceEntity.fromJson(Map<String, dynamic> json) =>
      _$ExperienceEntityFromJson(json);
}
