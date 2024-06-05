import 'package:fixresume/core/enums/account_type_enum.dart';
import 'package:fixresume/core/usecase/usecase.dart';
import 'package:fixresume/features/auth/data/models/user_details_model.dart';
import 'package:fixresume/features/auth/domain/entities/account_type_entity.dart';
import 'package:fixresume/features/auth/domain/entities/subscriptions_entity.dart';
import 'package:fixresume/features/auth/domain/entities/user_details_entity.dart';
import 'package:fixresume/features/auth/domain/usecases/account_type.dart';
import 'package:fixresume/features/auth/domain/usecases/add_subscriptions.dart';
import 'package:fixresume/features/auth/domain/usecases/add_user_details.dart';
import 'package:fixresume/features/auth/domain/usecases/current_user.dart';
import 'package:fixresume/features/auth/domain/usecases/get_subscriptions.dart';
import 'package:fixresume/features/auth/domain/usecases/get_user_details.dart';
import 'package:fixresume/features/auth/domain/usecases/user_login_with_apple.dart';
import 'package:fixresume/features/auth/domain/usecases/user_login_with_email.dart';
import 'package:fixresume/features/auth/domain/usecases/user_login_with_github.dart';
import 'package:fixresume/features/auth/domain/usecases/user_login_with_google.dart';
import 'package:fixresume/features/auth/domain/usecases/user_login_with_linkedin.dart';
import 'package:fixresume/features/auth/domain/usecases/user_logout.dart';
import 'package:fixresume/features/auth/domain/usecases/user_register.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@lazySingleton
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({
    required CurrentUser currentUser,
    required AccountType accountType,
    required GetUserDetails getUserDetails,
    required GetSubscriptions getSubscriptions,
    required AddSubscriptions addSubscriptions,
    required AddUserDetails addUserDetails,
    required UserRegister userRegister,
    required UserLoginWithEmail userLoginWithEmail,
    required UserLoginWithApple userLoginWithApple,
    required UserLoginWithGithub userLoginWithGithub,
    required UserLoginWithLinkedin userLoginWithLinkedin,
    required UserLoginWithGoogle userLoginWithGoogle,
    required UserLogout userLogout,
  })  : _currentUser = currentUser,
        _accountType = accountType,
        _getUserDetails = getUserDetails,
        _getSubscriptions = getSubscriptions,
        _addSubscriptions = addSubscriptions,
        _addUserDetails = addUserDetails,
        _userRegister = userRegister,
        _userLoginWithEmail = userLoginWithEmail,
        _userLoginWithApple = userLoginWithApple,
        _userLoginWithGithub = userLoginWithGithub,
        _userLoginWithLinkedin = userLoginWithLinkedin,
        _userLoginWithGoogle = userLoginWithGoogle,
        _userLogOut = userLogout,
        super(const AuthState.initial()) {
    on<AuthEvent>((_, emit) => emit(const AuthState.loading()));
    on<_Register>(_onAuthRegister);
    on<_LoginWithEmail>(_onAuthLoginWithEmail);
    on<_LoginWithApple>(_onAuthLoginWithApple);
    on<_LoginWithGithub>(_onAuthLoginWithGithub);
    on<_LoginWithLinkedin>(_onAuthLoginWithLinkedin);
    on<_LoginWithGoogle>(_onAuthLoginWithGoogle);
    on<_LoggedIn>(_isUserLoggedIn);
    on<_GetAccountType>(_onGetAccountType);
    on<_GetUserDetails>(_onGetUserDetails);
    on<_GetSubscriptions>(_onGetSubscriptions);
    on<_AddSubscriptions>(_onAddSubscriptions);
    on<_AddUserDetails>(_onAddUserDetails);
    on<_Logout>(_onAuthLogout);
  }
  final UserRegister _userRegister;
  final UserLoginWithEmail _userLoginWithEmail;
  final UserLoginWithApple _userLoginWithApple;
  final UserLoginWithGithub _userLoginWithGithub;
  final UserLoginWithLinkedin _userLoginWithLinkedin;
  final UserLoginWithGoogle _userLoginWithGoogle;
  final CurrentUser _currentUser;
  final AccountType _accountType;
  final GetUserDetails _getUserDetails;
  final AddUserDetails _addUserDetails;
  final GetSubscriptions _getSubscriptions;
  final AddSubscriptions _addSubscriptions;
  final UserLogout _userLogOut;

  Future<void> _isUserLoggedIn(
    _LoggedIn event,
    Emitter<AuthState> emit,
  ) async {
    final res = await _currentUser(NoParams());

    res.fold(
      (l) => emit(AuthState.failure(l.errorMessage)),
      (r) => _emitAuthSuccess(r, emit),
    );
  }

  Future<void> _onGetAccountType(
    _GetAccountType event,
    Emitter<AuthState> emit,
  ) async {
    final res = await _accountType(
      AccountTypeParams(accountTypeEnum: event.accTypeEnum),
    );

    res.fold(
      (l) => emit(AuthState.failure(l.errorMessage)),
      (r) => emit(AuthState.successAccountType(r)),
    );
  }

  Future<void> _onGetSubscriptions(
    _GetSubscriptions event,
    Emitter<AuthState> emit,
  ) async {
    final res = await _getSubscriptions(
      GetSubscriptionsParams(userId: event.userId),
    );

    res.fold(
      (l) => emit(AuthState.failure(l.errorMessage)),
      (r) => emit(AuthState.successSubscriptions(r)),
    );
  }

  Future<void> _onAddSubscriptions(
    _AddSubscriptions event,
    Emitter<AuthState> emit,
  ) async {
    final res = await _addSubscriptions(
      AddSubscriptionsParams(
        userId: event.userId,
        accType: event.accType,
      ),
    );

    res.fold(
      (l) => emit(AuthState.failure(l.errorMessage)),
      (r) => emit(AuthState.successSubscriptions(r)),
    );
  }

  Future<void> _onGetUserDetails(
    _GetUserDetails event,
    Emitter<AuthState> emit,
  ) async {
    final res = await _getUserDetails(UserDetailsParams(userId: event.userId));

    res.fold(
      (l) => emit(AuthState.failure(l.errorMessage)),
      (r) => _emitAuthSuccess(r, emit),
    );
  }

  Future<void> _onAddUserDetails(
    _AddUserDetails event,
    Emitter<AuthState> emit,
  ) async {
    final res = await _addUserDetails(
      AddUserDetailsParams(userDetailsEntity: event.userDetailsEntity),
    );

    res.fold(
      (l) => emit(AuthState.failure(l.errorMessage)),
      (r) => _emitAuthSuccess(r, emit),
    );
  }

  Future<void> _onAuthRegister(
    _Register event,
    Emitter<AuthState> emit,
  ) async {
    final res = await _userRegister(
      UserRegisterParams(
        email: event.email,
        password: event.password,
      ),
    );

    res.fold(
      (l) => emit(AuthState.failure(l.errorMessage)),
      (r) => _emitAuthSuccess(r, emit),
    );
  }

  Future<void> _onAuthLoginWithEmail(
    _LoginWithEmail event,
    Emitter<AuthState> emit,
  ) async {
    final res = await _userLoginWithEmail(
      UserLoginParams(
        email: event.email,
        password: event.password,
      ),
    );

    res.fold(
      (l) => emit(AuthState.failure(l.errorMessage)),
      (r) => _emitAuthSuccess(r, emit),
    );
  }

  Future<void> _onAuthLoginWithApple(
    _LoginWithApple event,
    Emitter<AuthState> emit,
  ) async {
    final res = await _userLoginWithApple(NoParams());

    res.fold(
      (l) => emit(AuthState.failure(l.errorMessage)),
      (r) => _emitAuthSuccess(r, emit),
    );
  }

  Future<void> _onAuthLoginWithGithub(
    _LoginWithGithub event,
    Emitter<AuthState> emit,
  ) async {
    final res = await _userLoginWithGithub(NoParams());

    res.fold(
      (l) => emit(AuthState.failure(l.errorMessage)),
      (r) => _emitAuthSuccess(r, emit),
    );
  }

  Future<void> _onAuthLoginWithLinkedin(
    _LoginWithLinkedin event,
    Emitter<AuthState> emit,
  ) async {
    final res = await _userLoginWithLinkedin(NoParams());

    res.fold(
      (l) => emit(AuthState.failure(l.errorMessage)),
      (r) => _emitAuthSuccess(r, emit),
    );
  }

  Future<void> _onAuthLoginWithGoogle(
    _LoginWithGoogle event,
    Emitter<AuthState> emit,
  ) async {
    final res = await _userLoginWithGoogle(NoParams());

    res.fold(
      (l) => emit(AuthState.failure(l.errorMessage)),
      (r) => _emitAuthSuccess(r, emit),
    );
  }

  void _emitAuthSuccess(
    UserDetailsEntity user,
    Emitter<AuthState> emit,
  ) {
    emit(_Success(user));
  }

  Future<void> _onAuthLogout(
    _Logout event,
    Emitter<AuthState> emit,
  ) async {
    final res = await _userLogOut(NoParams());

    res.fold(
      (l) => emit(AuthState.failure(l.errorMessage)),
      (_) => emit(const AuthState.initial()),
    );
  }
}
