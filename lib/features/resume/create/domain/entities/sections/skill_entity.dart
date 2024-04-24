// ignore_for_file: public_member_api_docs

import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'skill_entity.freezed.dart';
part 'skill_entity.g.dart';

SkillEntity skillEntityFromJson(String str) =>
    SkillEntity.fromJson(json.decode(str) as Map<String, dynamic>);

String skillEntityToJson(SkillEntity data) => json.encode(data.toJson());

enum SkillType { language, technology, tool, other }

enum SkillLevel { beginner, intermediate, advanced, expert }

@freezed
class SkillEntity with _$SkillEntity {
  const factory SkillEntity({
    required String skillName,
    required SkillType skillType,
    required SkillLevel skillLevel,
  }) = _SkillEntity;

  factory SkillEntity.fromJson(Map<String, dynamic> json) =>
      _$SkillEntityFromJson(json);
}
