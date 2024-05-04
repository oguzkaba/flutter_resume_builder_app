import 'package:flutter/material.dart';
import 'package:flutter_resume_builder_app/core/extensions/context_extension.dart';

/// CustomFilledButtonWidget for the application.
class CustomFilledButtonWidget extends StatelessWidget {
  /// CustomFilledButtonWidget constructor.
  const CustomFilledButtonWidget({
    required this.buttonText,
    required this.onPressed,
    super.key,
    this.width,
  });

  /// VoidCallback onPressed.
  final VoidCallback? onPressed;

  /// String buttonText.
  final String buttonText;

  /// double? width.
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? context.width,
      height: 48,
      child: FilledButton(
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: context.size16BoldWithColor(Colors.white),
        ),
      ),
    );
  }
}
