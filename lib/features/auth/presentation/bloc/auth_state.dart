part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.success(UserDetailsEntity user) = _Success;
  const factory AuthState.successAccountType(AccountTypeEntity accountType) =
      _SuccessAccountType;
  const factory AuthState.successAddUserDetails(
    UserDetailsModel userDetailsModel,
  ) = _SuccessAddUserDetails;
  const factory AuthState.successSubscriptions(
    SubscriptionsEntity? subscriptions,
  ) = _SuccessSubscriptions;
  const factory AuthState.failure(String message) = _Failure;
}
