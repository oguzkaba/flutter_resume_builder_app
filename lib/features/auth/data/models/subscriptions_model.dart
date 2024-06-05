import 'package:fixresume/core/extensions/dynamic_cast_extension.dart';
import 'package:fixresume/features/auth/domain/entities/subscriptions_entity.dart';

List<SubscriptionsModel> subscriptionsModelFromJson(List<dynamic> str) =>
    List<SubscriptionsModel>.from(
      str.map((x) => SubscriptionsModel.fromJson(x as Map<String, dynamic>)),
    );

class SubscriptionsModel extends SubscriptionsEntity {
  SubscriptionsModel({
    required super.id,
    required super.userId,
    required super.accType,
    required super.createdAt,
    super.updatedAt,
    super.deletedAt,
  });

  factory SubscriptionsModel.fromJson(Map<String, dynamic> json) {
    return SubscriptionsModel(
      id: json['id'] as int,
      userId: json['user_id'] as String,
      accType: json['acc_type'] as String,
      createdAt: (json['created_at'] as String).toCastDateTime,
      updatedAt: (json['updated_at'] as String?)?.toCastDateTimeOrNull,
      deletedAt: (json['deleted_at'] as String?)?.toCastDateTimeOrNull,
    );
  }
}
