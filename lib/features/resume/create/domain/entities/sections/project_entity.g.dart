// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectEntityImpl _$$ProjectEntityImplFromJson(Map<String, dynamic> json) =>
    _$ProjectEntityImpl(
      projectName: json['projectName'] as String,
      projectDate: DateTime.parse(json['projectDate'] as String),
      projectLink: json['projectLink'] as String?,
      projectDescription: json['projectDescription'] as String?,
    );

Map<String, dynamic> _$$ProjectEntityImplToJson(_$ProjectEntityImpl instance) =>
    <String, dynamic>{
      'projectName': instance.projectName,
      'projectDate': instance.projectDate.toIso8601String(),
      'projectLink': instance.projectLink,
      'projectDescription': instance.projectDescription,
    };
