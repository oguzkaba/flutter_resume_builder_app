// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: require_trailing_commas

part of 'reference_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReferenceEntityImpl _$$ReferenceEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ReferenceEntityImpl(
      referenceName: json['referenceName'] as String,
      referenceLastName: json['referenceLastName'] as String,
      referenceTitle: json['referenceTitle'] as String,
      referenceCompany: json['referenceCompany'] as String,
      referencePhone: json['referencePhone'] as String,
      referenceEmail: json['referenceEmail'] as String,
    );

Map<String, dynamic> _$$ReferenceEntityImplToJson(
        _$ReferenceEntityImpl instance) =>
    <String, dynamic>{
      'referenceName': instance.referenceName,
      'referenceLastName': instance.referenceLastName,
      'referenceTitle': instance.referenceTitle,
      'referenceCompany': instance.referenceCompany,
      'referencePhone': instance.referencePhone,
      'referenceEmail': instance.referenceEmail,
    };
