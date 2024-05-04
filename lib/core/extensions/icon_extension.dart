import 'package:flutter/material.dart';
import 'package:flutter_resume_builder_app/core/constants/app/color_constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// This extension is used to covert Icon/FaIcon.
extension IconExtension on IconData {
  /// This extension is used to covert FaIcon.
  ///
  /// This method is used to convert an [IconData] to a [FaIcon].
  FaIcon get toFaIconDefaultColor => FaIcon(
        size: 18,
        this,
      );

  /// This method is used to convert an [IconData] to a [FaIcon].
  FaIcon get toFaIconPrimaryColor => FaIcon(
        this,
        size: 18,
        color: ColorConstants.primaryColor,
      );

  /// This method is used to convert an [IconData] to a [FaIcon].
  FaIcon get toFaIconMedGreyColor => FaIcon(
        this,
        size: 18,
        color: ColorConstants.myMediumGrey,
      );

  /// This method is used to convert an [IconData] to a [FaIcon].
  FaIcon get toFaIconWhiteColor => FaIcon(
        this,
        size: 18,
        color: ColorConstants.myWhite,
      );

  /// Custom Sized FaIcon
  FaIcon toFaIconDefColorSized(double size) => FaIcon(
        size: size,
        this,
      );

  /// Custom Sized FaIcon with color
  FaIcon toFaIconPrimaryColorSized(double size) => FaIcon(
        this,
        size: size,
        color: ColorConstants.primaryColor,
      );

  /// Custom Sized FaIcon with color
  FaIcon toFaIconMedGreyColorSized(double size) => FaIcon(
        this,
        size: size,
        color: ColorConstants.myMediumGrey,
      );

  /// Custom Sized FaIcon with color
  FaIcon toFaIconWhiteColorSized(double size) => FaIcon(
        this,
        size: size,
        color: ColorConstants.myWhite,
      );

  /// Custom Sized and Color FaIcon.
  FaIcon toFaIconCustomColorSized(Color color, double size) => FaIcon(
        this,
        size: size,
        color: color,
      );

  /// This extension is used to covert Icon.
  ///
  /// This method is used to convert an [IconData] to a [Icon].
  Icon get toIconDefaultColor => Icon(
        this,
      );

  /// This method is used to convert an [IconData] to a [Icon].
  Icon get toIconPrimaryColor => Icon(
        this,
        color: ColorConstants.primaryColor,
      );

  /// This method is used to convert an [IconData] to a [Icon].
  Icon get toIconMedGreyColor => Icon(
        this,
        color: ColorConstants.myMediumGrey,
      );

  /// This method is used to convert an [IconData] to a [Icon].
  Icon get toIconWhiteColor => Icon(
        this,
        color: ColorConstants.myWhite,
      );

  /// Custom Sized Icon
  Icon toIconDefColorSized(double size) => Icon(
        this,
        size: size,
      );

  /// Custom Sized Icon with color
  Icon toIconPrimaryColorSized(double size) => Icon(
        this,
        size: size,
        color: ColorConstants.primaryColor,
      );

  /// Custom Sized Icon with color
  Icon toIconMedGreyColorSized(double size) => Icon(
        this,
        size: size,
        color: ColorConstants.myMediumGrey,
      );

  /// Custom Sized Icon with color
  Icon toIconWhiteColorSized(double size) => Icon(
        this,
        size: size,
        color: ColorConstants.myWhite,
      );

  /// Custom Sized and Color Icon.
  Icon toIconCustomColorSized(Color color, double size) => Icon(
        this,
        size: size,
        color: color,
      );
}
