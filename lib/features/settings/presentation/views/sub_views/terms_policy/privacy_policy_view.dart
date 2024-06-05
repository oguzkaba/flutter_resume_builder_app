import 'package:fixresume/core/extensions/string_extensions.dart';
import 'package:fixresume/core/init/lang/locale_keys.g.dart';
import 'package:fixresume/core/utils/webview_util.dart';
import 'package:flutter/material.dart';

/// This class is likely used for routing within a Dart application.
class PrivacyPolicyView extends StatelessWidget {
  /// Constructor for the `PrivacyPolicyView` class.
  const PrivacyPolicyView({super.key});

  @override
  Widget build(BuildContext context) {
    return WebViewUtil(
      htmlFileNameOrUrl: 'privacy-policy',
      title: LocaleKeys.settings_privacy_name.locale,
    );
  }
}
