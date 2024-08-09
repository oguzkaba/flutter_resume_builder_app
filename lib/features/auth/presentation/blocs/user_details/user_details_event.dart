part of 'user_details_bloc.dart';

@freezed
class UserDetailsEvent with _$UserDetailsEvent {
  const factory UserDetailsEvent.getUserDetails({
    required String userId,
  }) = _GetUserDetails;
  const factory UserDetailsEvent.addUserDetails({
    required UserDetailsEntity userDetailsEntity,
  }) = _AddUserDetails;
  const factory UserDetailsEvent.updateUserDetails({
    required UserDetailsEntity userDetailsEntity,
  }) = _UpdateUserDetails;
  const factory UserDetailsEvent.deleteUserDetails({
    required int id,
  }) = _DeleteUserDetails;
}
