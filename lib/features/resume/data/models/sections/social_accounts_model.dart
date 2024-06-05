import 'package:fixresume/core/extensions/dynamic_cast_extension.dart';
import 'package:fixresume/features/resume/domain/entities/sections/social_accounts_entity.dart';

List<SocialAccountsModel> socialAccountsModelFromJson(List<dynamic> str) =>
    List<SocialAccountsModel>.from(
      str.map((x) => SocialAccountsModel.fromJson(x as Map<String, dynamic>)),
    );

List<Map<String, dynamic>> socialAccountsModelToJson(
        List<SocialAccountsModel> data) =>
    List<Map<String, dynamic>>.from(data.map((x) => x.toJson()));

class SocialAccountsModel extends SocialAccountsEntity {
  SocialAccountsModel({
    required super.id,
    required super.userId,
    required super.createdAt,
    super.linkedin,
    super.github,
    super.kaggle,
    super.behance,
    super.website,
    super.other,
    super.updatedAt,
  });

  factory SocialAccountsModel.fromJson(Map<String, dynamic> json) {
    return SocialAccountsModel(
      id: json['id'] as int,
      userId: json['user_id'] as String,
      linkedin: json['linkedin'] as String?,
      github: json['github'] as String?,
      kaggle: json['kaggle'] as String?,
      behance: json['behance'] as String?,
      website: json['website'] as String?,
      other: json['other'] as String?,
      createdAt: (json['created_at'] as String).toCastDateTime,
      updatedAt: (json['updated_at'] as String?).toCastDateTimeOrNull,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'user_id': userId,
      'linkedin': linkedin,
      'github': github,
      'kaggle': kaggle,
      'behance': behance,
      'website': website,
      'other': other,
      'created_at': createdAt.toIso8601String(),
      'updated_at': updatedAt?.toIso8601String(),
    };
  }
}
