class ExamsEntity {
  ExamsEntity({
    required this.id,
    required this.userId,
    required this.name,
    required this.conductedBy,
    required this.date,
    required this.result,
    required this.createdAt,
    this.desc,
    this.updatedAt,
    this.deletedAt,
  });
  final int id;
  final String userId;
  final String name;
  final String conductedBy;
  final DateTime date;
  final int result;
  final String? desc;
  final DateTime createdAt;
  final DateTime? updatedAt;
  final DateTime? deletedAt;
}
