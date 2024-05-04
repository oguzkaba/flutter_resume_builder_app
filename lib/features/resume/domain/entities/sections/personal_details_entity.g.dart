// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'personal_details_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PersonalDetailsEntityImpl _$$PersonalDetailsEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$PersonalDetailsEntityImpl(
      name: json['name'] as String,
      lastName: json['lastName'] as String,
      gender: $enumDecode(_$GenderEnumMap, json['gender']),
      email: json['email'] as String,
      phone: json['phone'] as String,
      title: json['title'] as String,
      birthDate: DateTime.parse(json['birthDate'] as String),
      country: json['country'] as String,
      countryCode: json['countryCode'] as int,
      city: json['city'] as String,
      handicapped: json['handicapped'] as bool?,
      retried: json['retried'] as bool?,
      photoUrl: json['photoUrl'] as String?,
      militaryServices: $enumDecodeNullable(
          _$MilitaryServicesEnumMap, json['militaryServices']),
      driversLicense:
          $enumDecodeNullable(_$DriversLicenseEnumMap, json['driversLicense']),
      linkedin: json['linkedin'] as String?,
      github: json['github'] as String?,
      website: json['website'] as String?,
    );

Map<String, dynamic> _$$PersonalDetailsEntityImplToJson(
        _$PersonalDetailsEntityImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'lastName': instance.lastName,
      'gender': _$GenderEnumMap[instance.gender]!,
      'email': instance.email,
      'phone': instance.phone,
      'title': instance.title,
      'birthDate': instance.birthDate.toIso8601String(),
      'country': instance.country,
      'countryCode': instance.countryCode,
      'city': instance.city,
      'handicapped': instance.handicapped,
      'retried': instance.retried,
      'photoUrl': instance.photoUrl,
      'militaryServices': _$MilitaryServicesEnumMap[instance.militaryServices],
      'driversLicense': _$DriversLicenseEnumMap[instance.driversLicense],
      'linkedin': instance.linkedin,
      'github': instance.github,
      'website': instance.website,
    };

const _$GenderEnumMap = {
  Gender.male: 'male',
  Gender.female: 'female',
  Gender.other: 'other',
};

const _$MilitaryServicesEnumMap = {
  MilitaryServices.completed: 'completed',
  MilitaryServices.exempt: 'exempt',
  MilitaryServices.postponed: 'postponed',
  MilitaryServices.notCompleted: 'notCompleted',
  MilitaryServices.onProgress: 'onProgress',
};

const _$DriversLicenseEnumMap = {
  DriversLicense.none: 'none',
  DriversLicense.a: 'a',
  DriversLicense.a1: 'a1',
  DriversLicense.a2: 'a2',
  DriversLicense.b: 'b',
  DriversLicense.b2: 'b2',
  DriversLicense.c: 'c',
  DriversLicense.d: 'd',
  DriversLicense.e: 'e',
  DriversLicense.f: 'f',
  DriversLicense.g: 'g',
  DriversLicense.h: 'h',
  DriversLicense.k: 'k',
  DriversLicense.international: 'international',
};
