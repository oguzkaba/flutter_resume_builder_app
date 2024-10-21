import 'package:fixresume/core/extensions/dynamic_cast_extension.dart';
import 'package:fixresume/features/resume/domain/entities/sections/personal_info_entity.dart';

List<PersonalInfoModel> personalInfoModelFromJson(List<dynamic> str) =>
    List<PersonalInfoModel>.from(
      str.map((x) => PersonalInfoModel.fromJson(x as Map<String, dynamic>)),
    );

List<Map<String, dynamic>> personalInfoModelToJson(
  List<PersonalInfoModel> data,
) =>
    List<Map<String, dynamic>>.from(data.map((x) => x.toJson()));

PersonalInfoModel personalInfoModelFromJsonSingle(List<dynamic> str) =>
    PersonalInfoModel.fromJson(str.first as Map<String, dynamic>);

class PersonalInfoModel extends PersonalInfoEntity {
  PersonalInfoModel({
    required super.userId,
    required super.name,
    required super.surname,
    required super.email,
    required super.phoneCountryCode,
    required super.phone,
    required super.createdAt,
    super.birthDate,
    super.title,
    super.city,
    super.country,
    super.socialMedias,
    super.updatedAt,
  });

  factory PersonalInfoModel.fromJson(Map<String, dynamic> json) {
    return PersonalInfoModel(
      userId: json['user_id'] as String,
      name: json['name'] as String,
      surname: json['surname'] as String,
      birthDate: (json['birth_date'] as String?).toCastDateTimeOrNull,
      title: json['title'] as String?,
      city: json['city'] as String?,
      country: json['country'] as String?,
      email: json['email'] as String,
      phoneCountryCode: json['phone_country_code'] as String,
      phone: json['phone'] as String,
      createdAt: (json['created_at'] as String).toCastDateTime,
      socialMedias: json['social_medias'] as int?,
      updatedAt: (json['updated_at'] as String?).toCastDateTimeOrNull,
    );
  }

  factory PersonalInfoModel.fromEntity(PersonalInfoEntity entity) {
    return PersonalInfoModel(
      userId: entity.userId,
      name: entity.name,
      surname: entity.surname,
      birthDate: entity.birthDate,
      title: entity.title,
      city: entity.city,
      country: entity.country,
      email: entity.email,
      phoneCountryCode: entity.phoneCountryCode,
      phone: entity.phone,
      createdAt: entity.createdAt,
      socialMedias: entity.socialMedias,
      updatedAt: entity.updatedAt,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'user_id': userId,
      'name': name,
      'surname': surname,
      'birth_date': birthDate?.toIso8601String(),
      'title': title,
      'city': city,
      'country': country,
      'email': email,
      'phone_country_code': phoneCountryCode,
      'phone': phone,
      'created_at': createdAt.toIso8601String(),
      'social_medias': socialMedias,
      'updated_at': updatedAt?.toIso8601String(),
    };
  }
}
