// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:flutter_resume_builder_app/core/extensions/string_extensions.dart';
import 'package:flutter_resume_builder_app/core/init/lang/locale_keys.g.dart';

/// Application constants
final class AppConstants {
  /// Application name
  static const String appName = 'Flutter Starter';

  /// Application version
  static const String appVersion = '1.0.0';

  /// List bottom navigation items
  List<String> bottomNavigationLabels = [
    LocaleKeys.home_name.locale,
    LocaleKeys.templates_name.locale,
    LocaleKeys.settings_name.locale,
  ];

  /// List bottom navigation Icons
  /// Active icons
  static const List<IconData> bottomNavigationIconsActive = [
    Icons.home_rounded,
    Icons.dashboard_rounded,
    Icons.settings_rounded,
  ];

  /// List bottom navigation Icons
  /// Inactive icons
  static const List<IconData> bottomNavigationIconsInactive = [
    Icons.home_outlined,
    Icons.dashboard_outlined,
    Icons.settings_outlined,
  ];

  /// langAssetPath constants
  static const langAssetPath = 'assets/lang';
}
