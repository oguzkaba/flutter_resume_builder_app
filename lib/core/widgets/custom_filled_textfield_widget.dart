import 'package:fixresume/core/constants/app/color_constants.dart';
import 'package:flutter/material.dart';

/// This Dart class named CustomFilledTextFieldWidget extends StatelessWidget.
class CustomFilledTextFieldWidget extends StatelessWidget {
  /// Constructor for CustomFilledTextFieldWidget
  const CustomFilledTextFieldWidget({
    required this.hintText,
    super.key,
    this.controller,
    this.onChanged,
    this.suffixIcon,
    this.fillColor,
    this.readOnly = false,
  });

  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final Widget? suffixIcon;
  final Color? fillColor;
  final String hintText;
  final bool readOnly;

  @override
  Widget build(BuildContext context) {
    return TextField(
      readOnly: readOnly,
      onTapOutside: (event) => FocusScope.of(context).unfocus(),
      controller: controller,
      onChanged: onChanged,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 8),
        suffixIcon: suffixIcon,
        border: const UnderlineInputBorder(),
        filled: true,
        fillColor: fillColor ?? ColorConstants.myExtraLightGrey,
        hintText: hintText,
      ),
    );
  }
}
