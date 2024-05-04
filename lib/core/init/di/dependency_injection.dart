// ignore_for_file: public_member_api_docs

import 'package:flutter_resume_builder_app/core/init/lang/cubit/language_cubit.dart';
import 'package:flutter_resume_builder_app/core/init/lang/language_manager.dart';
import 'package:get_it/get_it.dart';

/// create getit instance.
final getIt = GetIt.instance;

/// setup locator.
Future<void> setupDI() async {
  getIt
    ..registerFactory<LanguageCubit>(LanguageCubit.new)
    ..registerSingleton<LanguageManager>(LanguageManager());
}

///use getIt variable to access the registered objects.
abstract class Di {
  static LanguageCubit get languageCubit => getIt<LanguageCubit>();
  static LanguageManager get languageManager => getIt<LanguageManager>();
}
