part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.register({
    required String email,
    required String password,
  }) = _Register;
  const factory AuthEvent.getAccountType({
    required AccountTypeEnum accTypeEnum,
  }) = _GetAccountType;
  const factory AuthEvent.getSubscriptions({
    required String userId,
  }) = _GetSubscriptions;
  const factory AuthEvent.addSubscriptions({
    required String userId,
    required String accType,
  }) = _AddSubscriptions;
  const factory AuthEvent.getUserDetails({
    required String userId,
  }) = _GetUserDetails;
  const factory AuthEvent.addUserDetails({
    required UserDetailsEntity userDetailsEntity,
  }) = _AddUserDetails;
  const factory AuthEvent.loginWithEmail({
    required String email,
    required String password,
  }) = _LoginWithEmail;
  const factory AuthEvent.loginWithLinkedin() = _LoginWithLinkedin;
  const factory AuthEvent.loginWithGithub() = _LoginWithGithub;
  const factory AuthEvent.loginWithGoogle() = _LoginWithGoogle;
  const factory AuthEvent.loginWithApple() = _LoginWithApple;
  const factory AuthEvent.loggedIn() = _LoggedIn;
  const factory AuthEvent.logout() = _Logout;
}
