import 'package:fixresume/core/constants/app/color_constants.dart';
import 'package:fixresume/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

/// CustomFilledButtonWidget for the application.
class CustomFilledButtonWidget extends StatelessWidget {
  /// CustomFilledButtonWidget constructor.
  const CustomFilledButtonWidget({
    required this.buttonText,
    required this.onPressed,
    super.key,
    this.width,
    this.loading = false,
  });

  /// VoidCallback onPressed.
  final VoidCallback? onPressed;

  /// String buttonText.
  final String buttonText;

  /// double? width.
  final double? width;

  /// bool loading.
  final bool? loading;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? context.width,
      height: 48,
      child: FilledButton(
        onPressed: loading == false ? onPressed : null,
        child: loading == false
            ? Text(
                buttonText,
                style: context.size16BoldWithColor(ColorConstants.myWhite),
              )
            : SizedBox(
                height: 24,
                width: 24,
                child: CircularProgressIndicator.adaptive(
                  strokeWidth: 2,
                  backgroundColor: ColorConstants.myWhite,
                ),
              ),
      ),
    );
  }
}
