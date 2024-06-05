import 'package:fixresume/core/extensions/dynamic_cast_extension.dart';
import 'package:fixresume/features/auth/domain/entities/user_details_entity.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

List<UserDetailsModel> userDetailsModelFromJson(List<dynamic> str) =>
    List<UserDetailsModel>.from(
      str.map((x) => UserDetailsModel.fromJson(x as Map<String, dynamic>)),
    );

List<Map<String, dynamic>> userDetailsModelToJson(
  List<UserDetailsModel> data,
) =>
    List<Map<String, dynamic>>.from(data.map((x) => x.toJson()));

class UserDetailsModel extends UserDetailsEntity {
  UserDetailsModel({
    required super.userId,
    required super.fullName,
    required super.photoUrl,
    required super.accType,
    required super.subscriptions,
    required super.status,
    required super.currentUser,
    super.createdAt,
    super.appVersion,
    super.deviceInfo,
    super.updatedAt,
    super.deletedAt,
  });

  factory UserDetailsModel.fromJson(Map<String, dynamic> json) {
    return UserDetailsModel(
      createdAt: (json['created_at'] as String).toCastDateTimeOrNull,
      userId: json['user_id'] as String,
      fullName: json['full_name'] as String?,
      photoUrl: json['photo_url'] as String?,
      accType: json['acc_type'] as String,
      subscriptions: json['subscriptions'] as int?,
      status: json['status'] as bool,
      appVersion: json['app_version'] as String?,
      deviceInfo: json['device_info'] as String?,
      currentUser: User.fromJson(json['current_user'] as Map<String, dynamic>)!,
      updatedAt: (json['updated_at'] as String?).toCastDateTimeOrNull,
      deletedAt: (json['deleted_at'] as String?).toCastDateTimeOrNull,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'user_id': userId,
      'full_name': fullName,
      'photo_url': photoUrl,
      'acc_type': accType,
      'subscriptions': subscriptions,
      'status': status,
      'app_version': appVersion,
      'device_info': deviceInfo,
      'current_user': currentUser,
      'updated_at': updatedAt?.toIso8601String(),
      'deleted_at': deletedAt?.toIso8601String(),
    };
  }
}
