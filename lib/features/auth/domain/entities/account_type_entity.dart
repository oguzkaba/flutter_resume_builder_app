class AccountTypeEntity {
  AccountTypeEntity({
    required this.id,
    required this.name,
    required this.priceUSD,
    required this.priceTL,
  });
  final int id;
  final String name;
  final num priceUSD;
  final num priceTL;
}
