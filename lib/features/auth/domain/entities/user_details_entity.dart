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
    this.createdAt,
    this.id,
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
}
