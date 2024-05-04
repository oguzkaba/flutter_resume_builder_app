// ignore_for_file: public_member_api_docs, prefer_constructors_over_static_methods

import 'package:flutter/material.dart';

//*flutter pub run easy_localization:generate -S assets/lang -f keys -O lib/core/init/lang -o locale_keys.g.dart

/// `LangManager` is a singleton class in Dart that manages language localization settings for a
/// Flutter application. It provides support for two locales: Turkish (tr_TR) and English (en_US).
/// The class ensures that only one instance of `LangManager` is created and provides access to
/// this instance through a static getter method. The `supportLocales` property returns a list of
/// supported locales.
class LanguageManager {
  final trLocale = const Locale('tr', 'TR');
  final enLocale = const Locale('en', 'US');

  List<Locale> get supportLocales => [
        trLocale,
        enLocale,
      ];
}
