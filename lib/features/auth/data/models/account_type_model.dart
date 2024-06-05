import 'package:fixresume/features/auth/domain/entities/account_type_entity.dart';

List<AccountTypeModel> accountTypeModelFromJson(List<dynamic> str) =>
    List<AccountTypeModel>.from(
      str.map((x) => AccountTypeModel.fromJson(x as Map<String, dynamic>)),
    );

class AccountTypeModel extends AccountTypeEntity {
  AccountTypeModel({
    required super.id,
    required super.name,
    required super.priceUSD,
    required super.priceTL,
  });

  factory AccountTypeModel.fromJson(Map<String, dynamic> json) {
    return AccountTypeModel(
      id: json['id'] as int,
      name: json['name'] as String,
      priceUSD: json['priceUSD'] as num,
      priceTL: json['priceTL'] as num,
    );
  }
}
