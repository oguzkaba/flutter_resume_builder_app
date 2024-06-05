class ReferencesEntity {
  ReferencesEntity({
    required this.id,
    required this.userId,
    required this.name,
    required this.surname,
    required this.title,
    required this.mail,
    required this.phone,
    required this.company,
    required this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });
  final int id;
  final String userId;
  final String name;
  final String surname;
  final String title;
  final String mail;
  final String phone;
  final String company;
  final DateTime createdAt;
  final DateTime? updatedAt;
  final DateTime? deletedAt;
}
