import 'package:flutter/material.dart';
import 'package:flutter_resume_builder_app/core/utils/webview_util.dart';

/// This class is likely used for routing within a Dart application.
class PrivacyPolicyView extends StatelessWidget {
  /// Constructor for the `PrivacyPolicyView` class.
  const PrivacyPolicyView({super.key});

  @override
  Widget build(BuildContext context) {
    return const WebViewUtil(htmlFileName: 'privacy-policy');
  }
}
