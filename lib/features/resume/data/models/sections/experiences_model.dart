import 'package:fixresume/core/extensions/dynamic_cast_extension.dart';
import 'package:fixresume/features/resume/domain/entities/sections/experiences_entity.dart';

List<ExperiencesModel> experiencesModelFromJson(List<dynamic> str) =>
    List<ExperiencesModel>.from(
      str.map((x) => ExperiencesModel.fromJson(x as Map<String, dynamic>)),
    );

List<Map<String, dynamic>> experiencesModelToJson(
        List<ExperiencesModel> data) =>
    List<Map<String, dynamic>>.from(data.map((x) => x.toJson()));

class ExperiencesModel extends ExperiencesEntity {
  ExperiencesModel({
    required super.id,
    required super.createdAt,
    required super.userId,
    required super.companyName,
    required super.companySector,
    required super.title,
    required super.jobType,
    required super.startedAt,
    super.endedAt,
    super.addInfo,
    super.stillWorking,
    super.updatedAt,
    super.deletedAt,
  });

  factory ExperiencesModel.fromJson(Map<String, dynamic> json) {
    return ExperiencesModel(
      id: json['id'] as int,
      userId: json['user_id'] as String,
      companyName: json['company_name'] as String,
      companySector: json['company_sector'] as String,
      title: json['title'] as String,
      jobType: json['job_type'] as String,
      startedAt: (json['started_at'] as String).toCastDateTime,
      createdAt: (json['created_at'] as String).toCastDateTime,
      endedAt: (json['ended_at'] as String?).toCastDateTimeOrNull,
      stillWorking: json['still_working'] as bool?,
      addInfo: json['add_info'] as String?,
      updatedAt: (json['updated_at'] as String?).toCastDateTimeOrNull,
      deletedAt: (json['deleted_at'] as String?).toCastDateTimeOrNull,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'user_id': userId,
      'company_name': companyName,
      'company_sector': companySector,
      'title': title,
      'job_type': jobType,
      'started_at': startedAt.toIso8601String(),
      'created_at': createdAt.toIso8601String(),
      'ended_at': endedAt?.toIso8601String(),
      'still_working': stillWorking,
      'add_info': addInfo,
      'updated_at': updatedAt?.toIso8601String(),
      'deleted_at': deletedAt?.toIso8601String(),
    };
  }
}
