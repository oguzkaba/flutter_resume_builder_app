class PersonalInfoEntity {
  PersonalInfoEntity({
    required this.userId,
    required this.name,
    required this.surname,
    required this.email,
    required this.phoneCountryCode,
    required this.phone,
    required this.createdAt,
    this.birthDate,
    this.title,
    this.city,
    this.country,
    this.socialMedias,
    this.updatedAt,
  });
  final String userId;
  final String name;
  final String surname;
  final DateTime? birthDate;
  final String? title;
  final String? city;
  final String? country;
  final String email;
  final String phoneCountryCode;
  final String phone;
  final int? socialMedias;
  final DateTime createdAt;
  final DateTime? updatedAt;

  PersonalInfoEntity copyWith({
    String? userId,
    String? name,
    String? surname,
    DateTime? birthDate,
    String? title,
    String? city,
    String? country,
    String? email,
    String? phoneCountryCode,
    String? phone,
    int? socialMedias,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return PersonalInfoEntity(
      userId: userId ?? this.userId,
      name: name ?? this.name,
      surname: surname ?? this.surname,
      birthDate: birthDate ?? this.birthDate,
      title: title ?? this.title,
      city: city ?? this.city,
      country: country ?? this.country,
      email: email ?? this.email,
      phoneCountryCode: phoneCountryCode ?? this.phoneCountryCode,
      phone: phone ?? this.phone,
      socialMedias: socialMedias ?? this.socialMedias,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
