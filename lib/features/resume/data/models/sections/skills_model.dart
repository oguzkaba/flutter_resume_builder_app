import 'package:fixresume/core/extensions/dynamic_cast_extension.dart';
import 'package:fixresume/features/resume/domain/entities/sections/skills_entity.dart';

List<SkillsModel> skillsModelFromJson(List<dynamic> str) =>
    List<SkillsModel>.from(
      str.map((x) => SkillsModel.fromJson(x as Map<String, dynamic>)),
    );

List<Map<String, dynamic>> skillsModelToJson(List<SkillsModel> data) =>
    List<Map<String, dynamic>>.from(data.map((x) => x.toJson()));

class SkillsModel extends SkillsEntity {
  SkillsModel({
    required super.id,
    required super.userId,
    required super.name,
    required super.level,
    required super.createdAt,
    super.updatedAt,
    super.deletedAt,
  });

  factory SkillsModel.fromJson(Map<String, dynamic> json) {
    return SkillsModel(
      id: json['id'] as int,
      userId: json['user_id'] as String,
      name: json['name'] as String,
      level: json['level'] as String,
      createdAt: (json['created_at'] as String).toCastDateTime,
      updatedAt: (json['updated_at'] as String?).toCastDateTimeOrNull,
      deletedAt: (json['deleted_at'] as String?).toCastDateTimeOrNull,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'user_id': userId,
      'name': name,
      'level': level,
      'created_at': createdAt.toIso8601String(),
      'updated_at': updatedAt?.toIso8601String(),
      'deleted_at': deletedAt?.toIso8601String(),
    };
  }
}
