class ExperiencesEntity {
  ExperiencesEntity({
    required this.id,
    required this.createdAt,
    required this.userId,
    required this.companyName,
    required this.companySector,
    required this.title,
    required this.jobType,
    required this.startedAt,
    this.stillWorking,
    this.addInfo,
    this.updatedAt,
    this.deletedAt,
    this.endedAt,
  });
  final int id;
  final String userId;
  final String companyName;
  final String companySector;
  final String title;
  final String jobType;
  final DateTime startedAt;
  final DateTime? endedAt;
  final bool? stillWorking;
  final String? addInfo;
  final DateTime createdAt;
  final DateTime? updatedAt;
  final DateTime? deletedAt;
}
