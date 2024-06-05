import 'package:fixresume/core/constants/app/color_constants.dart';
import 'package:fixresume/core/extensions/context_extension.dart';
import 'package:fixresume/core/extensions/string_extensions.dart';
import 'package:flutter/material.dart';

/// Preview Resume View
class PreviewResumeView extends StatelessWidget {
  /// Constructor
  const PreviewResumeView({
    required this.routeExtra,
    super.key,
  });

  /// Route Extra
  final Map<String, dynamic> routeExtra;

  @override
  Widget build(BuildContext context) {
    final child = routeExtra['child'] as Widget;
    final resumeName = routeExtra['resumeName'] as String;

    return Scaffold(
      backgroundColor: ColorConstants.myLightGrey,
      appBar: AppBar(
        title: Text(
          'Preview Resume ( ${resumeName.split('.')[0].capitalize} )',
          style: context.defaultSizeBold,
        ),
      ),
      body: child,
    );
  }
}
