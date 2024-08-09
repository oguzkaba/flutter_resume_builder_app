part of 'account_type_bloc.dart';

@freezed
class AccountTypeState with _$AccountTypeState {
  const factory AccountTypeState.initial() = _Initial;
  const factory AccountTypeState.loading() = _Loading;
  const factory AccountTypeState.successAccountType(
    AccountTypeEntity? accountTypeEntity,
  ) = _SuccessAccountType;
  const factory AccountTypeState.successOnlyMessage(String successMessage) =
      _SuccessOnlyMessage;
  const factory AccountTypeState.failure(String message) = _Failure;
}
