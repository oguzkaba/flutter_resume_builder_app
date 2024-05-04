// ignore_for_file: public_member_api_docs

import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'personal_details_entity.freezed.dart';
part 'personal_details_entity.g.dart';

PersonalDetailsEntity personalDetailsEntityFromJson(String str) =>
    PersonalDetailsEntity.fromJson(json.decode(str) as Map<String, dynamic>);

String personalDetailsEntityToJson(PersonalDetailsEntity data) =>
    json.encode(data.toJson());

enum Gender { male, female, other }

enum MilitaryServices { completed, exempt, postponed, notCompleted, onProgress }

enum DriversLicense {
  none,
  a,
  a1,
  a2,
  b,
  b2,
  c,
  d,
  e,
  f,
  g,
  h,
  k,
  international
}

@freezed
abstract class PersonalDetailsEntity with _$PersonalDetailsEntity {
  const factory PersonalDetailsEntity({
    required String name,
    required String lastName,
    required Gender gender,
    required String email,
    required String phone,
    required String title,
    required DateTime birthDate,
    required String country,
    required int countryCode,
    required String city,
    bool? handicapped,
    bool? retried,
    String? photoUrl,
    MilitaryServices? militaryServices,
    DriversLicense? driversLicense,
    String? linkedin,
    String? github,
    String? website,
  }) = _PersonalDetailsEntity;

  factory PersonalDetailsEntity.fromJson(Map<String, dynamic> json) =>
      _$PersonalDetailsEntityFromJson(json);
}
