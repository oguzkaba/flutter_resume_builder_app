part of 'social_accounts_bloc.dart';

@freezed
class SocialAccountsState with _$SocialAccountsState {
  /// SocialAccounts
  const factory SocialAccountsState.initial() = _Initial;
  const factory SocialAccountsState.socialAccountsLoading() =
      _SocialAccountsLoading;
  const factory SocialAccountsState.socialAccountsSuccess(
    List<SocialAccountsEntity> socialAccounts,
  ) = SocialAccountsSuccess;
  const factory SocialAccountsState.successOnlyMessage(String successMessage) =
      _SuccessOnlyMessage;
  const factory SocialAccountsState.socialAccountsFailure(String message) =
      _SocialAccountsFailure;
}
