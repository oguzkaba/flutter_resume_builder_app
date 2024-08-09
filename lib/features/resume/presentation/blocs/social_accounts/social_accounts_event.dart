part of 'social_accounts_bloc.dart';

@freezed
class SocialAccountsEvent with _$SocialAccountsEvent {
  /// SocialAccounts
  const factory SocialAccountsEvent.getSocialAccounts() = _GetSocialAccounts;
  const factory SocialAccountsEvent.addSocialAccounts(
    SocialAccountsEntity socialAccountsEntity,
  ) = _AddSocialAccounts;
  const factory SocialAccountsEvent.updateSocialAccounts(
    SocialAccountsEntity socialAccountsEntity,
  ) = _UpdateSocialAccounts;
  const factory SocialAccountsEvent.deleteSocialAccounts(int id) =
      _DeleteSocialAccounts;
}
