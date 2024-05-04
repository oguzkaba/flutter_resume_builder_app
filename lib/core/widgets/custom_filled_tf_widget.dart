// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:flutter_resume_builder_app/core/constants/app/color_constants.dart';

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
  });

  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final Widget? suffixIcon;
  final Color? fillColor;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
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
