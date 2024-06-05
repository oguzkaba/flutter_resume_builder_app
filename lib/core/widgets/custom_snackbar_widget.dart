import 'package:fixresume/core/constants/app/color_constants.dart';
import 'package:fixresume/core/extensions/context_extension.dart';
import 'package:fixresume/core/extensions/icon_extension.dart';
import 'package:flutter/material.dart';

/// CustomSnackbarWidget class
class CustomSnackbarWidget {
  /// showSnackbar method
  static void show(
    BuildContext context,
    String message, {
    Color? bgColor,
    Color? textColor,
    IconData? icon,
    bool? positionTop,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        margin: positionTop ?? false
            ? EdgeInsets.only(bottom: context.height - 80)
            : EdgeInsets.zero,
        backgroundColor: bgColor ?? ColorConstants.myLightRed,
        content: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null)
              icon.toFaIconCustomColorSized(
                textColor ?? ColorConstants.myDarkRed,
                18,
              ),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                message,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: textColor ?? ColorConstants.myDarkRed),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
