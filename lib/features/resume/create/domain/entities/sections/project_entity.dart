// ignore_for_file: public_member_api_docs

import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_entity.freezed.dart';
part 'project_entity.g.dart';

ProjectEntity projectEntityFromJson(String str) =>
    ProjectEntity.fromJson(json.decode(str) as Map<String, dynamic>);

String projectEntityToJson(ProjectEntity data) => json.encode(data.toJson());

@freezed
class ProjectEntity with _$ProjectEntity {
  const factory ProjectEntity({
    required String projectName,
    required DateTime projectDate,
    String? projectLink,
    String? projectDescription,
  }) = _ProjectEntity;

  factory ProjectEntity.fromJson(Map<String, dynamic> json) =>
      _$ProjectEntityFromJson(json);
}
