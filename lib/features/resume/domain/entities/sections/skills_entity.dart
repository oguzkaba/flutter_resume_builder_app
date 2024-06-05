class SkillsEntity {
  SkillsEntity({
    required this.id,
    required this.userId,
    required this.name,
    required this.level,
    required this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });
  final int id;
  final String userId;
  final String name;
  final String level;
  final DateTime createdAt;
  final DateTime? updatedAt;
  final DateTime? deletedAt;
}
