import 'package:fixresume/core/extensions/string_extensions.dart';
import 'package:fixresume/core/init/lang/locale_keys.g.dart';
import 'package:fixresume/core/utils/webview_util.dart';
import 'package:flutter/material.dart';

/// This class is likely used for routing within a Dart application.
class TermsOfConditionsView extends StatelessWidget {
  /// Constructor for the `TermsOfConditionsView` class.
  const TermsOfConditionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return WebViewUtil(
      htmlFileNameOrUrl: 'terms-of-conditions',
      title: LocaleKeys.settings_terms_name.locale(context),
    );
  }
}
