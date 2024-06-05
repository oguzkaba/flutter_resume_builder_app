class SocialAccountsEntity {
  SocialAccountsEntity({
    required this.id,
    required this.userId,
    required this.createdAt,
    this.linkedin,
    this.github,
    this.kaggle,
    this.behance,
    this.website,
    this.other,
    this.updatedAt,
  });
  final int id;
  final String? userId;
  final String? linkedin;
  final String? github;
  final String? kaggle;
  final String? behance;
  final String? website;
  final String? other;
  final DateTime createdAt;
  final DateTime? updatedAt;
}
