import 'package:fixresume/core/extensions/dynamic_cast_extension.dart';
import 'package:fixresume/features/resume/domain/entities/sections/educations_entity.dart';

List<EducationsModel> educationsModelFromJson(List<dynamic> str) =>
    List<EducationsModel>.from(
      str.map((x) => EducationsModel.fromJson(x as Map<String, dynamic>)),
    );

List<Map<String, dynamic>> educationsModelToJson(List<EducationsModel> data) =>
    List<Map<String, dynamic>>.from(data.map((x) => x.toJson()));

class EducationsModel extends EducationsEntity {
  EducationsModel({
    required super.id,
    required super.userId,
    required super.name,
    required super.level,
    required super.type,
    required super.startingAt,
    required super.createdAt,
    super.endingAt,
    super.stillStaying,
    super.dropout,
    super.language,
    super.scholarship,
    super.scholarshipRate,
    super.updatedAt,
    super.deletedAt,
    super.desc,
    super.graduationMax,
    super.graduationDegree,
  });

  factory EducationsModel.fromJson(Map<String, dynamic> json) {
    return EducationsModel(
      id: json['id'] as int,
      userId: json['user_id'] as String,
      name: json['name'] as String,
      level: json['level'] as String,
      type: json['type'] as String,
      startingAt: (json['starting_at'] as String).toCastDateTime,
      createdAt: (json['created_at'] as String).toCastDateTime,
      endingAt: (json['ending_at'] as String?).toCastDateTimeOrNull,
      stillStaying: json['still_staying'] as bool?,
      dropout: json['dropout'] as bool?,
      language: json['language'] as String?,
      scholarship: json['scholarship'] as String?,
      scholarshipRate: json['scholarship_rate'] as int?,
      updatedAt: (json['updated_at'] as String?).toCastDateTimeOrNull,
      deletedAt: (json['deleted_at'] as String?).toCastDateTimeOrNull,
      desc: json['desc'] as String?,
      graduationMax: json['graduation_max'] as int?,
      graduationDegree: json['graduation_degree'] as int?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'user_id': userId,
      'name': name,
      'level': level,
      'type': type,
      'starting_at': startingAt.toIso8601String(),
      'created_at': createdAt.toIso8601String(),
      'ending_at': endingAt?.toIso8601String(),
      'still_staying': stillStaying,
      'dropout': dropout,
      'language': language,
      'scholarship': scholarship,
      'scholarship_rate': scholarshipRate,
      'updated_at': updatedAt?.toIso8601String(),
      'deleted_at': deletedAt?.toIso8601String(),
      'desc': desc,
      'graduation_max': graduationMax,
      'graduation_degree': graduationDegree,
    };
  }
}
