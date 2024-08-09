part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.register({
    required String email,
    required String password,
  }) = _Register;
  const factory AuthEvent.loginWithEmail({
    required String email,
    required String password,
  }) = _LoginWithEmail;
  const factory AuthEvent.loginWithLinkedin() = _LoginWithLinkedin;
  const factory AuthEvent.loginWithGithub() = _LoginWithGithub;
  const factory AuthEvent.loginWithGoogle() = _LoginWithGoogle;
  const factory AuthEvent.loginWithApple({required BuildContext context}) =
      _LoginWithApple;
  const factory AuthEvent.loggedIn() = _LoggedIn;
  const factory AuthEvent.logout() = _Logout;
}
