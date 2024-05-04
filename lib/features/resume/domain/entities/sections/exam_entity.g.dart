// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exam_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExamEntityImpl _$$ExamEntityImplFromJson(Map<String, dynamic> json) =>
    _$ExamEntityImpl(
      examName: json['examName'] as String,
      testConductedBy: json['testConductedBy'] as String,
      examDate: DateTime.parse(json['examDate'] as String),
      examResult: $enumDecode(_$ExamResultEnumMap, json['examResult']),
      examDescription: json['examDescription'] as String?,
    );

Map<String, dynamic> _$$ExamEntityImplToJson(_$ExamEntityImpl instance) =>
    <String, dynamic>{
      'examName': instance.examName,
      'testConductedBy': instance.testConductedBy,
      'examDate': instance.examDate.toIso8601String(),
      'examResult': _$ExamResultEnumMap[instance.examResult]!,
      'examDescription': instance.examDescription,
    };

const _$ExamResultEnumMap = {
  ExamResult.passed: 'passed',
  ExamResult.failed: 'failed',
  ExamResult.pending: 'pending',
};
