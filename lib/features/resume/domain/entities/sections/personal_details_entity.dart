class PersonalDetailsEntity {
  PersonalDetailsEntity({
    required this.id,
    required this.userId,
    required this.createdAt,
    this.exceptions,
    this.gender,
    this.military,
    this.expectedSalary,
    this.nationality,
    this.driveLicense,
    this.updatedAt,
    this.deletedAt,
  });
  final int id;
  final String userId;
  final String? exceptions;
  final String? gender;
  final String? military;
  final int? expectedSalary;
  final DateTime createdAt;
  final List<String>? nationality;
  final List<String>? driveLicense;
  final DateTime? updatedAt;
  final DateTime? deletedAt;
}
