// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: unnecessary_null_checks

part of 'skill_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SkillEntityImpl _$$SkillEntityImplFromJson(Map<String, dynamic> json) =>
    _$SkillEntityImpl(
      skillName: json['skillName'] as String,
      skillType: $enumDecode(_$SkillTypeEnumMap, json['skillType']),
      skillLevel: $enumDecode(_$SkillLevelEnumMap, json['skillLevel']),
    );

Map<String, dynamic> _$$SkillEntityImplToJson(_$SkillEntityImpl instance) =>
    <String, dynamic>{
      'skillName': instance.skillName,
      'skillType': _$SkillTypeEnumMap[instance.skillType]!,
      'skillLevel': _$SkillLevelEnumMap[instance.skillLevel]!,
    };

const _$SkillTypeEnumMap = {
  SkillType.language: 'language',
  SkillType.technology: 'technology',
  SkillType.tool: 'tool',
  SkillType.other: 'other',
};

const _$SkillLevelEnumMap = {
  SkillLevel.beginner: 'beginner',
  SkillLevel.intermediate: 'intermediate',
  SkillLevel.advanced: 'advanced',
  SkillLevel.expert: 'expert',
};
