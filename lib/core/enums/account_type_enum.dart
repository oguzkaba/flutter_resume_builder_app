enum AccountTypeEnum {
  free,
  basic,
  professional,
  admin;

  String get name {
    switch (this) {
      case AccountTypeEnum.free:
        return 'free';
      case AccountTypeEnum.basic:
        return 'basic';
      case AccountTypeEnum.professional:
        return 'professional';
      case AccountTypeEnum.admin:
        return 'admin';
    }
  }

  static AccountTypeEnum fromString(String accountType) {
    switch (accountType) {
      case 'free':
        return AccountTypeEnum.free;
      case 'basic':
        return AccountTypeEnum.basic;
      case 'professional':
        return AccountTypeEnum.professional;
      case 'admin':
        return AccountTypeEnum.admin;
      default:
        throw Exception('Unknown account type');
    }
  }
}
