part of 'user_details_bloc.dart';

@freezed
class UserDetailsState with _$UserDetailsState {
  const factory UserDetailsState.initial() = _Initial;
  const factory UserDetailsState.loading() = _Loading;
  const factory UserDetailsState.successUserDetails(
    UserDetailsEntity userDetailsEntity,
  ) = _SuccessUserDetails;
  const factory UserDetailsState.successOnlyMessage(String successMessage) =
      _SuccessOnlyMessage;
  const factory UserDetailsState.failure(String message) = _Failure;
}
