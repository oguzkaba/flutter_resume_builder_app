class SubscriptionsEntity {
  SubscriptionsEntity({
    required this.id,
    required this.userId,
    required this.accType,
    required this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });
  final int id;
  final String userId;
  final String accType;
  final DateTime createdAt;
  final DateTime? updatedAt;
  final DateTime? deletedAt;
}
