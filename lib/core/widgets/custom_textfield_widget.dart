import 'package:fixresume/core/constants/app/color_constants.dart';
import 'package:fixresume/core/extensions/icon_extension.dart';
import 'package:fixresume/core/widgets/custom_icon_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// The CustomTextField class is a stateless widget in Dart.
class CustomTextFieldWidget extends StatelessWidget {
  /// The code you provided is defining a constructor
  /// for the `CustomTextField` class.
  const CustomTextFieldWidget({
    required this.hintText,
    required this.fillColor,
    super.key,
    this.prefixIconData,
    this.suffixIconData,
    this.onChanged,
    this.obsecureText,
    this.onPressed,
    this.iconColor,
    this.validator,
    this.controller,
    this.keyboardType,
    this.textInputAction,
    this.border,
    this.errorBorder,
    this.focusedBorder,
    this.formatter,
  });

  final String hintText;
  final Color fillColor;
  final IconData? prefixIconData;
  final IconData? suffixIconData;
  final bool? obsecureText;
  final Color? iconColor;
  final VoidCallback? onPressed;
  final ValueChanged<String>? onChanged;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final InputBorder? border;
  final InputBorder? errorBorder;
  final InputBorder? focusedBorder;
  final List<TextInputFormatter>? formatter;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: key,
      controller: controller,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      onTapOutside: (event) => FocusScope.of(context).unfocus(),
      validator: validator,
      inputFormatters: formatter,
      textAlignVertical: TextAlignVertical.center,
      obscureText: obsecureText ?? false,
      onChanged: onChanged,
      decoration: InputDecoration(
        prefixIcon: prefixIconData?.toIconMedGreyColorSized(18),
        suffixIcon: CustomIconButtonWidget(
          iconData: suffixIconData,
          onTap: onPressed,
          color: iconColor,
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 12,
          color: ColorConstants.myDark.withOpacity(.4),
        ),
        contentPadding: EdgeInsets.zero,
        filled: true,
        fillColor: fillColor,
        focusedBorder: focusedBorder,
        errorBorder: errorBorder,
        enabledBorder: border ?? InputBorder.none,
      ),
    );
  }
}
