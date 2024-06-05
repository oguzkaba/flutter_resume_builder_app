class ResumesEntity {
  ResumesEntity({
    required this.id,
    required this.userId,
    required this.createdAt,
    required this.lastUpdatedAt,
    required this.name,
    required this.language,
    this.perInfoId,
    this.perDetailsId,
    this.powerRate,
    this.summary,
    this.experiencesId,
    this.educationsId,
    this.skillsId,
    this.examsId,
    this.referencesId,
    this.hobiesInterests,
    this.deletedAt,
  });
  final int id;
  final String userId;
  final DateTime createdAt;
  final DateTime lastUpdatedAt;
  final String name;
  final String language;
  final int? perInfoId;
  final int? perDetailsId;
  final int? powerRate;
  final String? summary;
  final int? experiencesId;
  final int? educationsId;
  final int? skillsId;
  final int? examsId;
  final int? referencesId;
  final String? hobiesInterests;
  final DateTime? deletedAt;
}
