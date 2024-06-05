import 'package:fixresume/core/extensions/dynamic_cast_extension.dart';
import 'package:fixresume/features/resume/domain/entities/sections/personal_details_entity.dart';

List<PersonalDetailsModel> personalDetailsModelFromJson(List<dynamic> str) =>
    List<PersonalDetailsModel>.from(
      str.map((x) => PersonalDetailsModel.fromJson(x as Map<String, dynamic>)),
    );

List<Map<String, dynamic>> personalDetailsModelToJson(
        List<PersonalDetailsModel> data) =>
    List<Map<String, dynamic>>.from(data.map((x) => x.toJson()));

class PersonalDetailsModel extends PersonalDetailsEntity {
  PersonalDetailsModel({
    required super.id,
    required super.userId,
    required super.createdAt,
    super.exceptions,
    super.driveLicense,
    super.expectedSalary,
    super.gender,
    super.military,
    super.nationality,
    super.updatedAt,
    super.deletedAt,
  });

  factory PersonalDetailsModel.fromJson(Map<String, dynamic> json) {
    return PersonalDetailsModel(
      id: json['id'] as int,
      userId: json['user_id'] as String,
      createdAt: (json['created_at'] as String).toCastDateTime,
      exceptions: json['exceptions'] as String?,
      driveLicense: (json['drive_license'] as List?).toCastListOrNull(),
      expectedSalary: json['expected_salary'] as int?,
      gender: json['gender'] as String?,
      military: json['military'] as String?,
      nationality: (json['nationality'] as List?).toCastListOrNull(),
      updatedAt: (json['updated_at'] as String?).toCastDateTimeOrNull,
      deletedAt: (json['deleted_at'] as String?).toCastDateTimeOrNull,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'user_id': userId,
      'created_at': createdAt.toIso8601String(),
      'exceptions': exceptions,
      'drive_license': driveLicense,
      'expected_salary': expectedSalary,
      'gender': gender,
      'military': military,
      'nationality': nationality,
      'updated_at': updatedAt?.toIso8601String(),
      'deleted_at': deletedAt?.toIso8601String(),
    };
  }
}
