class PersonalInfoEntity {
  PersonalInfoEntity({
    required this.id,
    required this.userId,
    required this.name,
    required this.surname,
    required this.birthDate,
    required this.title,
    required this.city,
    required this.country,
    required this.email,
    required this.phoneCountryCode,
    required this.phone,
    required this.createdAt,
    this.socialMedias,
    this.updatedAt,
  });
  final int id;
  final String userId;
  final String name;
  final String surname;
  final DateTime birthDate;
  final String title;
  final String city;
  final String country;
  final String email;
  final String phoneCountryCode;
  final String phone;
  final int? socialMedias;
  final DateTime createdAt;
  final DateTime? updatedAt;
}
