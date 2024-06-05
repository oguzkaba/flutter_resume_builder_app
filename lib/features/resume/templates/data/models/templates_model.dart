import 'package:fixresume/core/extensions/dynamic_cast_extension.dart';
import 'package:fixresume/features/resume/templates/domain/entities/templates_entity.dart';

List<TemplatesModel> templatesModelFromJson(List<dynamic> str) {
  return List<TemplatesModel>.from(
    str.map((e) => TemplatesModel.fromJson(e as Map<String, dynamic>)),
  );
}

List<Map<String, dynamic>> templatesModelToJson(List<TemplatesModel> data) {
  return List<Map<String, dynamic>>.from(data.map((e) => e.toJson()));
}

class TemplatesModel extends TemplatesEntity {
  TemplatesModel({
    required super.id,
    required super.createdAt,
    required super.categories,
    required super.name,
    required super.fileUrl,
    required super.updatedAt,
    required super.deletedAt,
  });

  factory TemplatesModel.fromJson(Map<String, dynamic> json) {
    return TemplatesModel(
      id: json['id'] as int,
      createdAt: (json['created_at'] as String).toCastDateTime,
      categories: (json['categories'] as List).toCastList(),
      name: json['name'] as String,
      fileUrl: json['file_url'] as String,
      updatedAt: (json['updated_at'] as String?).toCastDateTimeOrNull,
      deletedAt: (json['deleted_at'] as String?).toCastDateTimeOrNull,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'created_at': createdAt.toIso8601String(),
      'categories': categories,
      'name': name,
      'file_url': fileUrl,
      'updated_at': updatedAt?.toIso8601String(),
      'deleted_at': deletedAt?.toIso8601String(),
    };
  }
}
