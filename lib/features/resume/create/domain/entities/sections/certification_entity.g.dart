// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: require_trailing_commas

part of 'certification_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CertificationEntityImpl _$$CertificationEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$CertificationEntityImpl(
      certificateName: json['certificateName'] as String,
      organization: json['organization'] as String,
      certificateDate: DateTime.parse(json['certificateDate'] as String),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$CertificationEntityImplToJson(
        _$CertificationEntityImpl instance) =>
    <String, dynamic>{
      'certificateName': instance.certificateName,
      'organization': instance.organization,
      'certificateDate': instance.certificateDate.toIso8601String(),
      'description': instance.description,
    };
