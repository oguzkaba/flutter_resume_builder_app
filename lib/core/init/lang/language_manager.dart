//*dart run easy_localization:generate -S assets/lang -f keys -O lib/core/init/lang -o locale_keys.g.dart

import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

/// `LangManager` is a singleton class in Dart that manages language localization settings for a
/// Flutter application. It provides support for two locales: Turkish (tr_TR) and English (en_US).
/// The class ensures that only one instance of `LangManager` is created and provides access to
/// this instance through a static getter method. The `supportLocales` property returns a list of
/// supported locales.

@injectable
class LanguageManager {
  final trLocale = const Locale('tr', 'TR');
  final enLocale = const Locale('en', 'US');

  List<Locale> get supportLocales => [
        trLocale,
        enLocale,
      ];
}
