// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:flutter_resume_builder_app/core/constants/app/color_constants.dart';

/// This extension is used to extend the `BuildContext` class.
extension ContextExtension on BuildContext {
  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;
  ColorScheme get colorScheme => theme.colorScheme;
  Brightness get brightness => theme.brightness;
  bool get isDark => brightness == Brightness.dark;
  bool get isPortrait =>
      MediaQuery.of(this).orientation == Orientation.portrait;
  bool get isLandscape =>
      MediaQuery.of(this).orientation == Orientation.landscape;
  bool get isMobile => MediaQuery.of(this).size.shortestSide < 600;

  /// Padding
  Widget get paddingSmall => Padding(padding: EdgeInsets.all(width * .01));
  Widget get paddingMedium => Padding(padding: EdgeInsets.all(width * .02));
  Widget get paddingNormal => Padding(padding: EdgeInsets.all(width * .03));
  Widget get paddingLarge => Padding(padding: EdgeInsets.all(width * .05));

  Widget get horizontalPaddingSmall =>
      Padding(padding: EdgeInsets.symmetric(horizontal: width * .003));
  Widget get horizontalPaddingMedium =>
      Padding(padding: EdgeInsets.symmetric(horizontal: width * .02));
  Widget get horizontalPaddingNormal =>
      Padding(padding: EdgeInsets.symmetric(horizontal: width * .03));
  Widget get horizontalPaddingLarge =>
      Padding(padding: EdgeInsets.symmetric(horizontal: width * .05));

  Widget get verticalPaddingSmall =>
      Padding(padding: EdgeInsets.symmetric(vertical: height * .01));
  Widget get verticalPaddingMedium =>
      Padding(padding: EdgeInsets.symmetric(vertical: height * .02));
  Widget get verticalPaddingNormal =>
      Padding(padding: EdgeInsets.symmetric(vertical: height * .03));
  Widget get verticalPaddingLarge =>
      Padding(padding: EdgeInsets.symmetric(vertical: height * .05));

  /// EdgeInsets
  EdgeInsets get edgeInsetsAllSmall => EdgeInsets.all(width * .01);
  EdgeInsets get edgeInsetsAllMedium => EdgeInsets.all(width * .02);
  EdgeInsets get edgeInsetsAllNormal => EdgeInsets.all(width * .03);
  EdgeInsets get edgeInsetsAllLarge => EdgeInsets.all(width * .05);

  EdgeInsets get edgeInsetsHorizontalSmall =>
      EdgeInsets.symmetric(horizontal: width * .01);
  EdgeInsets get edgeInsetsHorizontalMedium =>
      EdgeInsets.symmetric(horizontal: width * .02);
  EdgeInsets get edgeInsetsHorizontalNormal =>
      EdgeInsets.symmetric(horizontal: width * .03);
  EdgeInsets get edgeInsetsHorizontalLarge =>
      EdgeInsets.symmetric(horizontal: width * .05);

  EdgeInsets get edgeInsetsVerticalSmall =>
      EdgeInsets.symmetric(vertical: height * .01);
  EdgeInsets get edgeInsetsVerticalMedium =>
      EdgeInsets.symmetric(vertical: height * .02);
  EdgeInsets get edgeInsetsVerticalNormal =>
      EdgeInsets.symmetric(vertical: height * .03);
  EdgeInsets get edgeInsetsVerticalLarge =>
      EdgeInsets.symmetric(vertical: height * .05);

  ///TextTheme
  TextStyle get primaryBold => TextStyle(
        color: ColorConstants.primaryColor,
        fontWeight: FontWeight.bold,
      );
  TextStyle get whiteBold => TextStyle(
        color: ColorConstants.myWhite,
        fontWeight: FontWeight.bold,
      );
  TextStyle get lightGreyBold => TextStyle(
        color: ColorConstants.myWhite,
        fontWeight: FontWeight.bold,
      );
  TextStyle get mediumGreyBold => TextStyle(
        color: ColorConstants.myMediumGrey,
        fontWeight: FontWeight.bold,
      );
  TextStyle get blackBold => TextStyle(
        color: ColorConstants.myBlack,
        fontWeight: FontWeight.bold,
      );

  TextStyle? get body18BoldBlack => textTheme.bodyLarge?.copyWith(
        fontWeight: FontWeight.w900,
        fontSize: 18,
        color: ColorConstants.myBlack,
      );
  TextStyle? get body18BoldMediumGrey => textTheme.bodyLarge?.copyWith(
        fontWeight: FontWeight.w900,
        fontSize: 18,
        color: ColorConstants.myMediumGrey,
      );
  TextStyle? get body18BoldPrimaryColor => textTheme.bodyLarge?.copyWith(
        fontWeight: FontWeight.w900,
        fontSize: 18,
        color: ColorConstants.primaryColor,
      );
  TextStyle? get body18BoldLightGrey => textTheme.bodyLarge?.copyWith(
        fontWeight: FontWeight.w900,
        fontSize: 18,
        color: ColorConstants.myLightGrey,
      );

  TextStyle? get body14BoldBlack => textTheme.bodyLarge?.copyWith(
        fontWeight: FontWeight.w900,
        fontSize: 14,
        color: ColorConstants.myBlack,
      );
  TextStyle? get body14BoldMediumGrey => textTheme.bodyLarge?.copyWith(
        fontWeight: FontWeight.w900,
        fontSize: 14,
        color: ColorConstants.myMediumGrey,
      );
  TextStyle? get body14BoldPrimaryColor => textTheme.bodyLarge?.copyWith(
        fontWeight: FontWeight.w900,
        fontSize: 14,
        color: ColorConstants.primaryColor,
      );
  TextStyle? get body12BoldMediumGrey => textTheme.bodySmall?.copyWith(
        fontWeight: FontWeight.w900,
        fontSize: 12,
        color: ColorConstants.myMediumGrey,
      );
  TextStyle? get body12BoldBlack => textTheme.bodySmall?.copyWith(
        fontWeight: FontWeight.w900,
        color: ColorConstants.myBlack,
      );
  TextStyle? get body12BoldPrimaryColor => textTheme.bodySmall?.copyWith(
        fontWeight: FontWeight.w900,
        color: ColorConstants.primaryColor,
      );
  TextStyle? get body12BoldLightGrey => textTheme.bodySmall?.copyWith(
        fontWeight: FontWeight.w900,
        color: ColorConstants.myLightGrey,
      );
}
