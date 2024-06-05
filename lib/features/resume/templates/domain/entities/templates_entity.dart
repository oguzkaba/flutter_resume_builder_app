class TemplatesEntity {
  TemplatesEntity({
    required this.id,
    required this.createdAt,
    required this.categories,
    required this.name,
    required this.fileUrl,
    this.updatedAt,
    this.deletedAt,
  });
  final int id;
  final DateTime createdAt;
  final List<String> categories;
  final String name;
  final String fileUrl;
  final DateTime? updatedAt;
  final DateTime? deletedAt;
}
