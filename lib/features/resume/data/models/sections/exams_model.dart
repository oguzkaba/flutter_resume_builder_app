import 'package:fixresume/core/extensions/dynamic_cast_extension.dart';
import 'package:fixresume/features/resume/domain/entities/sections/exams_entity.dart';

List<ExamsModel> examsModelFromJson(List<dynamic> str) => List<ExamsModel>.from(
      str.map((x) => ExamsModel.fromJson(x as Map<String, dynamic>)),
    );

List<Map<String, dynamic>> examsModelToJson(List<ExamsModel> data) =>
    List<Map<String, dynamic>>.from(data.map((x) => x.toJson()));

ExamsModel examsModelFromJsonSingle(List<dynamic> str) =>
    ExamsModel.fromJson(str.first as Map<String, dynamic>);

class ExamsModel extends ExamsEntity {
  ExamsModel({
    required super.id,
    required super.userId,
    required super.name,
    required super.conductedBy,
    required super.date,
    required super.result,
    required super.createdAt,
    super.desc,
    super.updatedAt,
    super.deletedAt,
  });

  factory ExamsModel.fromJson(Map<String, dynamic> json) {
    return ExamsModel(
      id: json['id'] as int,
      userId: json['user_id'] as String,
      name: json['name'] as String,
      conductedBy: json['conducted_by'] as String,
      date: (json['date'] as String).toCastDateTime,
      result: json['result'] as int,
      createdAt: (json['created_at'] as String).toCastDateTime,
      desc: json['desc'] as String?,
      updatedAt: (json['updated_at'] as String?).toCastDateTimeOrNull,
      deletedAt: (json['deleted_at'] as String?).toCastDateTimeOrNull,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'user_id': userId,
      'name': name,
      'conducted_by': conductedBy,
      'date': date.toIso8601String(),
      'result': result,
      'created_at': createdAt.toIso8601String(),
      'desc': desc,
      'updated_at': updatedAt?.toIso8601String(),
      'deleted_at': deletedAt?.toIso8601String(),
    };
  }
}
