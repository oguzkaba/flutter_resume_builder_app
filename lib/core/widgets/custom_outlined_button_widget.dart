import 'package:fixresume/core/constants/app/color_constants.dart';
import 'package:fixresume/core/extensions/icon_extension.dart';
import 'package:flutter/material.dart';

/// CustomOutlinedIconButtonWidget is a StatelessWidget.
class CustomOutlinedIconButtonWidget extends StatelessWidget {
  ///constructor
  const CustomOutlinedIconButtonWidget({
    required this.icon,
    required this.labelText,
    required this.onPressed,
    super.key,
    this.color,
    this.fontSize,
    this.iconSize,
    this.fixedSize,
    this.alignment,
    this.shape,
    this.loading = false,
  });

  /// Icon
  final IconData icon;

  /// Label
  final String labelText;

  /// color
  final Color? color;

  /// fontSize
  final double? fontSize;

  ///iconSize
  final double? iconSize;

  ///fixedSize
  final Size? fixedSize;

  ///alignment child
  final AlignmentGeometry? alignment;

  ///shape
  final OutlinedBorder? shape;

  /// onPressed
  final VoidCallback onPressed;

  /// bool loading.
  final bool? loading;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      style: OutlinedButton.styleFrom(
        alignment: alignment,
        shape: shape,
        fixedSize: fixedSize,
        side: BorderSide(color: ColorConstants.myMediumGrey),
      ),
      onPressed: loading == false ? onPressed : null,
      icon: loading == false
          ? icon.toFaIconCustomColorSized(
              color ?? ColorConstants.primaryColor,
              iconSize ?? 16,
            )
          : const SizedBox.shrink(),
      label: loading == false
          ? Text(
              labelText,
              style: TextStyle(
                color: ColorConstants.myDark,
                fontWeight: FontWeight.bold,
                fontSize: fontSize ?? 12,
              ),
            )
          : SizedBox(
              height: 24,
              width: 24,
              child: CircularProgressIndicator.adaptive(
                valueColor: AlwaysStoppedAnimation<Color>(
                  ColorConstants.myDark,
                ),
                strokeWidth: 2,
                backgroundColor: ColorConstants.myWhite,
              ),
            ),
    );
  }
}
