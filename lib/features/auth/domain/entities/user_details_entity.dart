import 'package:supabase_flutter/supabase_flutter.dart';

class UserDetailsEntity {
  UserDetailsEntity({
    required this.userId,
    required this.fullName,
    required this.photoUrl,
    required this.accType,
    required this.subscriptions,
    required this.status,
    required this.currentUser,
    this.id,
    this.createdAt,
    this.deviceInfo,
    this.appVersion,
    this.updatedAt,
    this.deletedAt,
  });
  final int? id;
  final DateTime? createdAt;
  final String userId;
  final String? fullName;
  final String? photoUrl;
  final String accType;
  final String? deviceInfo;
  final String? appVersion;
  final int? subscriptions;
  final bool status;
  final User currentUser;
  final DateTime? updatedAt;
  final DateTime? deletedAt;

  UserDetailsEntity copyWith({
    int? id,
    DateTime? createdAt,
    String? userId,
    String? fullName,
    String? photoUrl,
    String? accType,
    String? deviceInfo,
    String? appVersion,
    int? subscriptions,
    bool? status,
    User? currentUser,
    DateTime? updatedAt,
    DateTime? deletedAt,
  }) {
    return UserDetailsEntity(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      userId: userId ?? this.userId,
      fullName: fullName ?? this.fullName,
      photoUrl: photoUrl ?? this.photoUrl,
      accType: accType ?? this.accType,
      deviceInfo: deviceInfo ?? this.deviceInfo,
      appVersion: appVersion ?? this.appVersion,
      subscriptions: subscriptions ?? this.subscriptions,
      status: status ?? this.status,
      currentUser: currentUser ?? this.currentUser,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
    );
  }
}
