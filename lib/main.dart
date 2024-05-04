import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_resume_builder_app/app.dart';
import 'package:flutter_resume_builder_app/core/constants/app/app_constants.dart';
import 'package:flutter_resume_builder_app/core/init/di/dependency_injection.dart';
import 'package:flutter_resume_builder_app/core/observer/my_bloc_observer.dart';
import 'package:flutter_resume_builder_app/core/provider/wrap_bloc_provider.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  /// WidgetsFlutterBinding ensures that the app is running.
  WidgetsFlutterBinding.ensureInitialized();

  /// BloC Observer
  Bloc.observer = MyBlocObserver();

  /// Hive initialization
  await Hive.initFlutter();

  /// Setup Dependency Injection
  await setupDI();

  /// Set preferred orientations for mobile
  if (Platform.isAndroid || Platform.isIOS) {
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
  }

  /// Easy Localization initialization
  await EasyLocalization.ensureInitialized();

  /// Load .env file
  await dotenv.load();

  /// Initialize Supabase
  await Supabase.initialize(
    url: dotenv.get('SUPABASE_URL'),
    anonKey: dotenv.get('SUPABASE_ANONKEY'),
  );

  runApp(
    WrapBlocProvider(
      child: EasyLocalization(
        path: AppConstants.langAssetPath,
        supportedLocales: Di.languageManager.supportLocales,
        startLocale: Di.languageManager.trLocale,
        child: const App(),
      ),
    ),
  );
}
