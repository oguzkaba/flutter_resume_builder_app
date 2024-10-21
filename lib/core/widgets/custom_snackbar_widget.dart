import 'package:fixresume/core/constants/app/color_constants.dart';
import 'package:fixresume/core/extensions/context_extension.dart';
import 'package:fixresume/core/extensions/icon_extension.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// CustomSnackbarWidget class
class CustomSnackbarWidget {
  /// showSnackbar method
  static void show(
    BuildContext context,
    String message, {
    required Color bgColor,
    required Color textColor,
    required IconData icon,
    bool? positionTop,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        margin: positionTop ?? false
            ? EdgeInsets.only(bottom: context.height - 80)
            : EdgeInsets.zero,
        backgroundColor: bgColor,
        content: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            icon.toFaIconCustomColorSized(
              textColor,
              18,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: FittedBox(
                alignment: Alignment.centerLeft,
                fit: BoxFit.scaleDown,
                child: Text(
                  message,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: textColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// showSuccess method
  static void showSuccess(BuildContext context, String message) {
    show(
      context,
      message,
      bgColor: ColorConstants.myGreen,
      textColor: ColorConstants.myWhite,
      icon: FontAwesomeIcons.circleCheck,
    );
  }

  /// showError method
  static void showError(BuildContext context, String message) {
    show(
      context,
      message,
      bgColor: ColorConstants.myDarkRed,
      textColor: ColorConstants.myWhite,
      icon: FontAwesomeIcons.circleExclamation,
    );
  }

  /// showWarning method
  static void showWarning(BuildContext context, String message) {
    show(
      context,
      message,
      bgColor: ColorConstants.myYellow,
      textColor: ColorConstants.myBlack,
      icon: FontAwesomeIcons.triangleExclamation,
    );
  }

  /// showInfo method
  static void showInfo(BuildContext context, String message) {
    show(
      context,
      message,
      bgColor: ColorConstants.myBlue,
      textColor: ColorConstants.myWhite,
      icon: FontAwesomeIcons.info,
    );
  }

  /// showCustom method
  static void showCustom(
    BuildContext context,
    String message, {
    required Color bgColor,
    required Color textColor,
    required IconData icon,
    bool? positionTop,
  }) {
    show(
      context,
      message,
      bgColor: bgColor,
      textColor: textColor,
      icon: icon,
      positionTop: positionTop,
    );
  }
}
