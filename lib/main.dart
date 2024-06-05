import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:fixresume/app.dart';
import 'package:fixresume/core/constants/app/app_constants.dart';
import 'package:fixresume/core/init/di/dep_injection.dart';
import 'package:fixresume/core/init/lang/language_manager.dart';
import 'package:fixresume/core/observer/my_bloc_observer.dart';
import 'package:fixresume/core/provider/wrap_bloc_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

Future<void> main() async {
  /// WidgetsFlutterBinding ensures that the app is running.
  WidgetsFlutterBinding.ensureInitialized();

  /// Hive initialization
  await Hive.initFlutter();

  /// Setup Dependency Injection
  await configureDependencies(Environment.dev);

  /// BloC Observer
  Bloc.observer = MyBlocObserver();

  /// Set preferred orientations for mobile
  if (Platform.isAndroid || Platform.isIOS) {
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
  }

  /// Easy Localization initialization
  await EasyLocalization.ensureInitialized();

  runApp(
    WrapBlocProvider(
      child: EasyLocalization(
        path: AppConstants.langAssetPath,
        supportedLocales: getIt<LanguageManager>().supportLocales,
        startLocale: getIt<LanguageManager>().enLocale,
        child: const App(),
      ),
    ),
  );
}
