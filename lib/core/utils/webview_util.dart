// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_resume_builder_app/core/extensions/asset_extension.dart';
import 'package:flutter_resume_builder_app/core/extensions/string_extensions.dart';
import 'package:flutter_resume_builder_app/core/widgets/custom_dialog_appbar_widget.dart';
import 'package:webview_flutter/webview_flutter.dart';

/// WebView Widget
class WebViewUtil extends StatefulWidget {
  ///Constructor for the `WebViewUtil` class.
  const WebViewUtil({
    required this.htmlFileName,
    super.key,
  });
  final String htmlFileName;

  @override
  State<WebViewUtil> createState() => _WebViewUtilState();
}

class _WebViewUtilState extends State<WebViewUtil> {
  int loadingPercentage = 0;

  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageStarted: (url) {
            setState(() {
              loadingPercentage = 0;
            });
          },
          onProgress: (progress) {
            setState(() {
              loadingPercentage = progress;
            });
          },
          onPageFinished: (url) {
            setState(() {
              loadingPercentage = 100;
            });
          },
        ),
      )
      ..loadFlutterAsset(widget.htmlFileName.toHtml);
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        extendBody: true,
        appBar: CustomDialogAppBarWidget(
          title: widget.htmlFileName.capitalize,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Stack(
            children: [
              WebViewWidget(
                controller: controller,
              ),
              if (loadingPercentage < 100)
                LinearProgressIndicator(
                  value: loadingPercentage / 100.0,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
