import 'package:fixresume/core/extensions/dynamic_cast_extension.dart';
import 'package:fixresume/features/resume/domain/entities/resumes_entity.dart';

List<ResumesModel> resumesModelFromJson(List<dynamic> str) =>
    List<ResumesModel>.from(
      str.map((x) => ResumesModel.fromJson(x as Map<String, dynamic>)),
    );

List<Map<String, dynamic>> resumesModelToJson(List<ResumesModel> data) =>
    List<Map<String, dynamic>>.from(data.map((x) => x.toJson()));

class ResumesModel extends ResumesEntity {
  ResumesModel({
    required super.id,
    required super.userId,
    required super.createdAt,
    required super.lastUpdatedAt,
    required super.name,
    required super.language,
    super.perInfoId,
    super.perDetailsId,
    super.powerRate,
    super.summary,
    super.experiencesId,
    super.educationsId,
    super.skillsId,
    super.examsId,
    super.referencesId,
    super.hobiesInterests,
    super.deletedAt,
  });

  factory ResumesModel.fromJson(Map<String, dynamic> json) {
    return ResumesModel(
      id: json['id'] as int,
      userId: json['user_id'] as String,
      createdAt: (json['created_at'] as String).toCastDateTime,
      lastUpdatedAt: (json['last_updated_at'] as String).toCastDateTime,
      name: json['name'] as String,
      language: json['language'] as String,
      perInfoId: json['per_info_id'] as int?,
      perDetailsId: json['per_details_id'] as int?,
      powerRate: json['power_rate'] as int?,
      summary: json['summary'] as String?,
      experiencesId: json['experiences_id'] as int?,
      educationsId: json['educations_id'] as int?,
      skillsId: json['skills_id'] as int?,
      examsId: json['exams_id'] as int?,
      referencesId: json['references_id'] as int?,
      hobiesInterests: json['hobies_interests'] as String?,
      deletedAt: (json['deleted_at'] as String?).toCastDateTimeOrNull,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'user_id': userId,
      'created_at': createdAt.toIso8601String(),
      'last_updated_at': lastUpdatedAt.toIso8601String(),
      'name': name,
      'language': language,
      'per_info_id': perInfoId,
      'per_details_id': perDetailsId,
      'power_rate': powerRate,
      'summary': summary,
      'experiences_id': experiencesId,
      'educations_id': educationsId,
      'skills_id': skillsId,
      'exams_id': examsId,
      'references_id': referencesId,
      'hobies_interests': hobiesInterests,
      'deleted_at': deletedAt?.toIso8601String(),
    };
  }
}
