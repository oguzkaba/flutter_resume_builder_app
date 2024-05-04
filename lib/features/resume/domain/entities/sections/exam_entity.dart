// ignore_for_file: public_member_api_docs

import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exam_entity.freezed.dart';
part 'exam_entity.g.dart';

ExamEntity examEntityFromJson(String str) =>
    ExamEntity.fromJson(json.decode(str) as Map<String, dynamic>);

String examEntityToJson(ExamEntity data) => json.encode(data.toJson());

enum ExamResult { passed, failed, pending }

@freezed
class ExamEntity with _$ExamEntity {
  const factory ExamEntity({
    required String examName,
    required String testConductedBy,
    required DateTime examDate,
    required ExamResult examResult,
    String? examDescription,
  }) = _ExamEntity;

  factory ExamEntity.fromJson(Map<String, dynamic> json) =>
      _$ExamEntityFromJson(json);
}
