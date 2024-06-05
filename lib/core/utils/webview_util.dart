import 'package:fixresume/core/enums/routes_enum.dart';
import 'package:fixresume/core/extensions/asset_extension.dart';
import 'package:fixresume/core/widgets/custom_dialog_appbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:webview_flutter/webview_flutter.dart';

enum WebViewLoadType { asset, url }

/// WebView Widget
class WebViewUtil extends StatefulWidget {
  ///Constructor for the `WebViewUtil` class.
  const WebViewUtil({
    required this.htmlFileNameOrUrl,
    required this.title,
    this.loadType = WebViewLoadType.asset,
    super.key,
  });
  final String htmlFileNameOrUrl;
  final String title;
  final WebViewLoadType loadType;

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
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
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
      );
    if (widget.loadType == WebViewLoadType.url) {
      controller.loadRequest(Uri.parse(widget.htmlFileNameOrUrl));
    } else {
      controller.loadFlutterAsset(widget.htmlFileNameOrUrl.toHtml);
    }
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvoked: (value) {
        context.goNamed(RoutesEnum.settings.name);
      },
      child: Scaffold(
        extendBody: true,
        appBar: CustomDialogAppBarWidget(
          title: widget.title,
        ),
        body: Padding(
          padding: const EdgeInsets.all(2),
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
