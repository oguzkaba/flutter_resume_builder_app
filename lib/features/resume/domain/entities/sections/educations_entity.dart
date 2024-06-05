class EducationsEntity {
  EducationsEntity({
    required this.id,
    required this.userId,
    required this.name,
    required this.level,
    required this.type,
    required this.startingAt,
    required this.createdAt,
    this.endingAt,
    this.stillStaying,
    this.dropout,
    this.language,
    this.scholarship,
    this.scholarshipRate,
    this.updatedAt,
    this.deletedAt,
    this.desc,
    this.graduationMax,
    this.graduationDegree,
  });
  final int id;
  final String userId;
  final String name;
  final String level;
  final String type;
  final DateTime startingAt;
  final DateTime? endingAt;
  final bool? stillStaying;
  final bool? dropout;
  final String? language;
  final String? scholarship;
  final int? scholarshipRate;
  final DateTime createdAt;
  final DateTime? updatedAt;
  final DateTime? deletedAt;
  final int? graduationMax;
  final int? graduationDegree;
  final String? desc;
}
