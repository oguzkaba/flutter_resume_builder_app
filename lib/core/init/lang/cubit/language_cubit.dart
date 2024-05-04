import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_resume_builder_app/core/init/di/dependency_injection.dart';
part 'language_state.dart';

/// Language Cubit
class LanguageCubit extends Cubit<LanguageState> {
  /// Constructor
  LanguageCubit() : super(const LanguageState(Locale('tr', 'TR')));

  /// Toogle language method
  Future<void> toogleLanguage(
    BuildContext context,
    Locale currentLocale,
  ) async {
    if (currentLocale == Di.languageManager.enLocale) {
      await _setLocaleMethod(context, Di.languageManager.trLocale);
    } else {
      await _setLocaleMethod(context, Di.languageManager.enLocale);
    }
  }

  /// Set locale method
  Future<void> _setLocaleMethod(BuildContext context, Locale locale) async {
    await context.setLocale(locale);
    await Future<dynamic>.delayed(const Duration(milliseconds: 500));
    emit(LanguageState(locale));
  }
}
