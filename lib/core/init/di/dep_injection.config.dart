// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity_plus/connectivity_plus.dart' as _i10;
import 'package:device_info_plus/device_info_plus.dart' as _i8;
import 'package:fixresume/core/init/lang/language_manager.dart' as _i3;
import 'package:fixresume/core/init/network/connectivity_info.dart' as _i12;
import 'package:fixresume/core/init/themes/theme.dart' as _i4;
import 'package:fixresume/core/modules/app_modules.dart' as _i29;
import 'package:fixresume/features/auth/data/datasources/auth_remote_datasource.dart'
    as _i11;
import 'package:fixresume/features/auth/data/repositories/auth_repository_impl.dart'
    as _i14;
import 'package:fixresume/features/auth/domain/repositories/auth_repository.dart'
    as _i13;
import 'package:fixresume/features/auth/domain/usecases/account_type.dart'
    as _i15;
import 'package:fixresume/features/auth/domain/usecases/add_subscriptions.dart'
    as _i16;
import 'package:fixresume/features/auth/domain/usecases/add_user_details.dart'
    as _i17;
import 'package:fixresume/features/auth/domain/usecases/current_user.dart'
    as _i18;
import 'package:fixresume/features/auth/domain/usecases/get_subscriptions.dart'
    as _i19;
import 'package:fixresume/features/auth/domain/usecases/get_user_details.dart'
    as _i20;
import 'package:fixresume/features/auth/domain/usecases/user_login_with_apple.dart'
    as _i21;
import 'package:fixresume/features/auth/domain/usecases/user_login_with_email.dart'
    as _i22;
import 'package:fixresume/features/auth/domain/usecases/user_login_with_github.dart'
    as _i23;
import 'package:fixresume/features/auth/domain/usecases/user_login_with_google.dart'
    as _i24;
import 'package:fixresume/features/auth/domain/usecases/user_login_with_linkedin.dart'
    as _i25;
import 'package:fixresume/features/auth/domain/usecases/user_logout.dart'
    as _i26;
import 'package:fixresume/features/auth/domain/usecases/user_register.dart'
    as _i27;
import 'package:fixresume/features/auth/presentation/bloc/auth_bloc.dart'
    as _i28;
import 'package:flutter_dotenv/flutter_dotenv.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i7;
import 'package:injectable/injectable.dart' as _i2;
import 'package:package_info_plus/package_info_plus.dart' as _i9;
import 'package:supabase_flutter/supabase_flutter.dart' as _i6;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModules = _$AppModules();
    gh.factory<_i3.LanguageManager>(() => _i3.LanguageManager());
    gh.factory<_i4.AppTheme>(() => _i4.AppTheme());
    await gh.factoryAsync<_i5.DotEnv>(
      () => appModules.environment,
      preResolve: true,
    );
    await gh.factoryAsync<_i6.SupabaseClient>(
      () => appModules.supabaseClient,
      preResolve: true,
    );
    await gh.factoryAsync<_i7.GoogleSignIn>(
      () => appModules.googleSignIn,
      preResolve: true,
    );
    await gh.factoryAsync<_i8.BaseDeviceInfo>(
      () => appModules.deviceInfo,
      preResolve: true,
    );
    await gh.factoryAsync<_i9.PackageInfo>(
      () => appModules.packageInfo,
      preResolve: true,
    );
    gh.singleton<_i10.Connectivity>(() => appModules.connectivity);
    gh.factory<_i11.AuthRemoteDataSource>(() => _i11.AuthRemoteDataSourceImpl(
          gh<_i6.SupabaseClient>(),
          gh<_i7.GoogleSignIn>(),
        ));
    gh.factory<_i12.ConnectivityInfo>(
        () => _i12.ConnectivityInfoImpl(connectivity: gh<_i10.Connectivity>()));
    gh.factory<_i13.AuthRepository>(() => _i14.AuthRepositoryImpl(
          gh<_i11.AuthRemoteDataSource>(),
          gh<_i12.ConnectivityInfo>(),
        ));
    gh.factory<_i15.AccountType>(
        () => _i15.AccountType(gh<_i13.AuthRepository>()));
    gh.factory<_i16.AddSubscriptions>(
        () => _i16.AddSubscriptions(gh<_i13.AuthRepository>()));
    gh.factory<_i17.AddUserDetails>(
        () => _i17.AddUserDetails(gh<_i13.AuthRepository>()));
    gh.factory<_i18.CurrentUser>(
        () => _i18.CurrentUser(gh<_i13.AuthRepository>()));
    gh.factory<_i19.GetSubscriptions>(
        () => _i19.GetSubscriptions(gh<_i13.AuthRepository>()));
    gh.factory<_i20.GetUserDetails>(
        () => _i20.GetUserDetails(gh<_i13.AuthRepository>()));
    gh.factory<_i21.UserLoginWithApple>(
        () => _i21.UserLoginWithApple(gh<_i13.AuthRepository>()));
    gh.factory<_i22.UserLoginWithEmail>(
        () => _i22.UserLoginWithEmail(gh<_i13.AuthRepository>()));
    gh.factory<_i23.UserLoginWithGithub>(
        () => _i23.UserLoginWithGithub(gh<_i13.AuthRepository>()));
    gh.factory<_i24.UserLoginWithGoogle>(
        () => _i24.UserLoginWithGoogle(gh<_i13.AuthRepository>()));
    gh.factory<_i25.UserLoginWithLinkedin>(
        () => _i25.UserLoginWithLinkedin(gh<_i13.AuthRepository>()));
    gh.factory<_i26.UserLogout>(
        () => _i26.UserLogout(gh<_i13.AuthRepository>()));
    gh.factory<_i27.UserRegister>(
        () => _i27.UserRegister(gh<_i13.AuthRepository>()));
    gh.lazySingleton<_i28.AuthBloc>(() => _i28.AuthBloc(
          currentUser: gh<_i18.CurrentUser>(),
          accountType: gh<_i15.AccountType>(),
          getUserDetails: gh<_i20.GetUserDetails>(),
          getSubscriptions: gh<_i19.GetSubscriptions>(),
          addSubscriptions: gh<_i16.AddSubscriptions>(),
          addUserDetails: gh<_i17.AddUserDetails>(),
          userRegister: gh<_i27.UserRegister>(),
          userLoginWithEmail: gh<_i22.UserLoginWithEmail>(),
          userLoginWithApple: gh<_i21.UserLoginWithApple>(),
          userLoginWithGithub: gh<_i23.UserLoginWithGithub>(),
          userLoginWithLinkedin: gh<_i25.UserLoginWithLinkedin>(),
          userLoginWithGoogle: gh<_i24.UserLoginWithGoogle>(),
          userLogout: gh<_i26.UserLogout>(),
        ));
    return this;
  }
}

class _$AppModules extends _i29.AppModules {}
