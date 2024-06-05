// import 'dart:io';

// import 'package:connectivity_plus/connectivity_plus.dart';
// import 'package:device_info_plus/device_info_plus.dart';
// import 'package:fixresume/core/init/lang/language_manager.dart';
// import 'package:fixresume/core/init/network/connectivity_info.dart';
// import 'package:fixresume/core/init/themes/theme.dart';
// import 'package:fixresume/features/auth/data/datasources/auth_remote_datasource.dart';
// import 'package:fixresume/features/auth/data/repositories/auth_repository_impl.dart';
// import 'package:fixresume/features/auth/domain/repositories/auth_repository.dart';
// import 'package:fixresume/features/auth/domain/usecases/account_type.dart';
// import 'package:fixresume/features/auth/domain/usecases/add_subscriptions.dart';
// import 'package:fixresume/features/auth/domain/usecases/add_user_details.dart';
// import 'package:fixresume/features/auth/domain/usecases/current_user.dart';
// import 'package:fixresume/features/auth/domain/usecases/get_subscriptions.dart';
// import 'package:fixresume/features/auth/domain/usecases/get_user_details.dart';
// import 'package:fixresume/features/auth/domain/usecases/user_login_with_apple.dart';
// import 'package:fixresume/features/auth/domain/usecases/user_login_with_email.dart';
// import 'package:fixresume/features/auth/domain/usecases/user_login_with_github.dart';
// import 'package:fixresume/features/auth/domain/usecases/user_login_with_google.dart';
// import 'package:fixresume/features/auth/domain/usecases/user_login_with_linkedin.dart';
// import 'package:fixresume/features/auth/domain/usecases/user_logout.dart';
// import 'package:fixresume/features/auth/domain/usecases/user_register.dart';
// import 'package:fixresume/features/auth/presentation/bloc/auth_bloc.dart';
// import 'package:flutter_dotenv/flutter_dotenv.dart';
// import 'package:get_it/get_it.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:package_info_plus/package_info_plus.dart';
// import 'package:supabase_flutter/supabase_flutter.dart';

// /// create getit instance.
// final getIt = GetIt.instance;

// /// setup locator.
// Future<void> setupDI() async {
//   ///initAuth
//   _initAuthDi();

//   /// Load .env file
//   await dotenv.load();

//   /// Initialize Supabase
//   final supabase = await Supabase.initialize(
//     url: dotenv.get('SUPABASE_URL'),
//     anonKey: dotenv.get('SUPABASE_ANONKEY'),
//   );

//   /// Initialize GoogleSignIn
//   final googleSignIn = GoogleSignIn(
//     clientId: dotenv.get('GOOGLE_IOS_CLIENT_ID'),
//     serverClientId: dotenv.get('GOOGLE_WEB_CLIENT_ID'),
//   );

//   /// Device Info
//   final deviceInfo = DeviceInfoPlugin();
//   late AndroidDeviceInfo androidInfo;
//   late IosDeviceInfo iosInfo;
//   if (Platform.isAndroid) {
//     androidInfo = await deviceInfo.androidInfo;
//   } else if (Platform.isIOS) {
//     iosInfo = await deviceInfo.iosInfo;
//   }

//   /// Package Info
//   final packageInfo = await PackageInfo.fromPlatform();

//   getIt
//     ..registerLazySingleton<GoogleSignIn>(() => googleSignIn)
//     ..registerLazySingleton<SupabaseClient>(() => supabase.client)
//     ..registerLazySingleton<DeviceInfoPlugin>(() => deviceInfo)
//     ..registerLazySingleton<AndroidDeviceInfo>(() => androidInfo)
//     ..registerLazySingleton<IosDeviceInfo>(() => iosInfo)
//     ..registerLazySingleton<PackageInfo>(() => packageInfo)
//     ..registerSingleton<Connectivity>(Connectivity())
//     ..registerFactory<ConnectivityInfo>(
//       () => ConnectivityInfoImpl(connectivity: getIt()),
//     )
//     ..registerSingleton<LanguageManager>(LanguageManager())
//     ..registerSingleton<AppTheme>(AppTheme());
// }

// void _initAuthDi() {
//   // Datasource
//   getIt
//     ..registerFactory<AuthRemoteDataSource>(
//       () => AuthRemoteDataSourceImpl(
//         getIt(),
//         getIt(),
//       ),
//     )
//     // Repository
//     ..registerFactory<AuthRepository>(
//       () => AuthRepositoryImpl(
//         getIt(),
//         getIt(),
//       ),
//     )
//     // Usecases
//     ..registerFactory(
//       () => UserRegister(
//         getIt(),
//       ),
//     )
//     ..registerFactory(
//       () => UserLoginWithEmail(
//         getIt(),
//       ),
//     )
//     ..registerFactory(
//       () => UserLoginWithApple(
//         getIt(),
//       ),
//     )
//     ..registerFactory(
//       () => UserLoginWithGithub(
//         getIt(),
//       ),
//     )
//     ..registerFactory(
//       () => UserLoginWithLinkedin(
//         getIt(),
//       ),
//     )
//     ..registerFactory(
//       () => UserLoginWithGoogle(
//         getIt(),
//       ),
//     )
//     ..registerFactory(
//       () => AccountType(
//         getIt(),
//       ),
//     )
//     ..registerFactory(
//       () => GetSubscriptions(
//         getIt(),
//       ),
//     )
//     ..registerFactory(
//       () => AddSubscriptions(
//         getIt(),
//       ),
//     )
//     ..registerFactory(
//       () => GetUserDetails(
//         getIt(),
//       ),
//     )
//     ..registerFactory(
//       () => AddUserDetails(
//         getIt(),
//       ),
//     )
//     ..registerFactory(
//       () => CurrentUser(
//         getIt(),
//       ),
//     )
//     ..registerFactory(
//       () => UserLogout(
//         getIt(),
//       ),
//     )
//     // Bloc
//     ..registerLazySingleton(
//       () => AuthBloc(
//         getSubscriptions: getIt(),
//         addSubscriptions: getIt(),
//         getUserDetails: getIt(),
//         addUserDetails: getIt(),
//         userRegister: getIt(),
//         accountType: getIt(),
//         userLoginWithEmail: getIt(),
//         userLoginWithApple: getIt(),
//         userLoginWithGithub: getIt(),
//         userLoginWithLinkedin: getIt(),
//         userLoginWithGoogle: getIt(),
//         currentUser: getIt(),
//         userLogout: getIt(),
//       ),
//     );
// }
