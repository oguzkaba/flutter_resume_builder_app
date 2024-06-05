import 'package:fixresume/core/extensions/dynamic_cast_extension.dart';
import 'package:fixresume/features/resume/domain/entities/sections/references_entity.dart';

List<ReferencesModel> referencesModelFromJson(List<dynamic> str) =>
    List<ReferencesModel>.from(
      str.map((x) => ReferencesModel.fromJson(x as Map<String, dynamic>)),
    );

List<Map<String, dynamic>> referencesModelToJson(List<ReferencesModel> data) =>
    List<Map<String, dynamic>>.from(data.map((x) => x.toJson()));

class ReferencesModel extends ReferencesEntity {
  ReferencesModel({
    required super.id,
    required super.userId,
    required super.name,
    required super.surname,
    required super.title,
    required super.mail,
    required super.phone,
    required super.company,
    required super.createdAt,
    super.updatedAt,
    super.deletedAt,
  });

  factory ReferencesModel.fromJson(Map<String, dynamic> json) {
    return ReferencesModel(
      id: json['id'] as int,
      userId: json['user_id'] as String,
      name: json['name'] as String,
      surname: json['surname'] as String,
      title: json['title'] as String,
      mail: json['mail'] as String,
      phone: json['phone'] as String,
      company: json['company'] as String,
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
      'surname': surname,
      'title': title,
      'mail': mail,
      'phone': phone,
      'company': company,
      'created_at': createdAt.toIso8601String(),
      'updated_at': updatedAt?.toIso8601String(),
      'deleted_at': deletedAt?.toIso8601String(),
    };
  }
}
