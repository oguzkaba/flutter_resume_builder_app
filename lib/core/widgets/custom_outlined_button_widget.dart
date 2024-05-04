import 'package:flutter/material.dart';
import 'package:flutter_resume_builder_app/core/constants/app/color_constants.dart';
import 'package:flutter_resume_builder_app/core/extensions/context_extension.dart';
import 'package:flutter_resume_builder_app/core/extensions/icon_extension.dart';

/// CustomOutlinedIconButtonWidget is a StatelessWidget.
class CustomOutlinedIconButtonWidget extends StatelessWidget {
  ///constructor
  const CustomOutlinedIconButtonWidget({
    required this.icon,
    required this.labelText,
    required this.onPressed,
    super.key,
  });

  /// Icon
  final IconData icon;

  /// Label
  final String labelText;

  /// onPressed
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      style: OutlinedButton.styleFrom(
        side: BorderSide(
          color: ColorConstants.myMediumGrey,
        ),
      ),
      onPressed: onPressed,
      icon: icon.toFaIconPrimaryColorSized(16),
      label: Text(
        labelText,
        style: context.size12BoldWithColor(
          ColorConstants.myBlack,
        ),
      ),
    );
  }
}
