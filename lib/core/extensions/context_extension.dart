import 'package:fixresume/core/constants/app/color_constants.dart';
import 'package:fixresume/core/constants/regex/regex_constants.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

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

  /// Validator
  bool isEmail(String value) =>
      RegExp(RegexConstants.emailRegex).hasMatch(value);

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

  /// Typography
  /// NoColor
  TextStyle get size12Normal => const TextStyle(fontSize: 12);
  TextStyle get size14Normal => const TextStyle(fontSize: 14);
  TextStyle get size16Normal => const TextStyle(fontSize: 16);
  TextStyle get size18Normal => const TextStyle(fontSize: 18);
  TextStyle get size22Normal => const TextStyle(fontSize: 22);
  TextStyle get size28Normal => const TextStyle(fontSize: 28);
  TextStyle get size36Normal => const TextStyle(fontSize: 36);
  TextStyle get size45Normal => const TextStyle(fontSize: 45);

  TextStyle get defaultSizeBold => const TextStyle(fontWeight: FontWeight.bold);
  TextStyle get size12Bold =>
      const TextStyle(fontSize: 12, fontWeight: FontWeight.bold);
  TextStyle get size14Bold =>
      const TextStyle(fontSize: 14, fontWeight: FontWeight.bold);
  TextStyle get size16Bold =>
      const TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
  TextStyle get size18Bold =>
      const TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
  TextStyle get size22Bold =>
      const TextStyle(fontSize: 22, fontWeight: FontWeight.bold);
  TextStyle get size28Bold =>
      const TextStyle(fontSize: 28, fontWeight: FontWeight.bold);
  TextStyle get size36Bold =>
      const TextStyle(fontSize: 36, fontWeight: FontWeight.bold);
  TextStyle get size45Bold =>
      const TextStyle(fontSize: 45, fontWeight: FontWeight.bold);

  TextStyle get defaultSizeExtraBold =>
      const TextStyle(fontWeight: FontWeight.w900);
  TextStyle get size12ExtraBold =>
      const TextStyle(fontSize: 12, fontWeight: FontWeight.w900);
  TextStyle get size14ExtraBold =>
      const TextStyle(fontSize: 14, fontWeight: FontWeight.w900);
  TextStyle get size16ExtraBold =>
      const TextStyle(fontSize: 16, fontWeight: FontWeight.w900);
  TextStyle get size18ExtraBold =>
      const TextStyle(fontSize: 18, fontWeight: FontWeight.w900);
  TextStyle get size22ExtraBold =>
      const TextStyle(fontSize: 22, fontWeight: FontWeight.w900);

  TextStyle get size28ExtraBold =>
      const TextStyle(fontSize: 28, fontWeight: FontWeight.w900);
  TextStyle get size36ExtraBold =>
      const TextStyle(fontSize: 36, fontWeight: FontWeight.w900);
  TextStyle get size45ExtraBold =>
      const TextStyle(fontSize: 45, fontWeight: FontWeight.w900);

  /// NormalWeight withColor
  TextStyle defaultSizeNormalWithColor(Color color) => TextStyle(
        color: color,
      );
  TextStyle size12NormalWithColor(Color color) => TextStyle(
        fontSize: 12,
        color: color,
      );
  TextStyle size14NormalWithColor(Color color) => TextStyle(
        fontSize: 14,
        color: color,
      );
  TextStyle size16NormalWithColor(Color color) => TextStyle(
        fontSize: 16,
        color: color,
      );
  TextStyle size18NormalWithColor(Color color) => TextStyle(
        fontSize: 18,
        color: color,
      );
  TextStyle size22NormalWithColor(Color color) => TextStyle(
        fontSize: 22,
        color: color,
      );
  TextStyle size28NormalWithColor(Color color) => TextStyle(
        fontSize: 28,
        color: color,
      );
  TextStyle size36NormalWithColor(Color color) => TextStyle(
        fontSize: 36,
        color: color,
      );
  TextStyle size45NormalWithColor(Color color) => TextStyle(
        fontSize: 45,
        color: color,
      );

  /// BoldWeight withColor
  TextStyle defaultSizeBoldWithColor(Color color) => TextStyle(
        color: color,
        fontWeight: FontWeight.bold,
      );
  TextStyle size12BoldWithColor(Color color) => TextStyle(
        fontSize: 12,
        color: color,
        fontWeight: FontWeight.bold,
      );
  TextStyle size14BoldWithColor(Color color) => TextStyle(
        fontSize: 14,
        color: color,
        fontWeight: FontWeight.bold,
      );
  TextStyle size16BoldWithColor(Color color) => TextStyle(
        fontSize: 16,
        color: color,
        fontWeight: FontWeight.bold,
      );
  TextStyle size18BoldWithColor(Color color) => TextStyle(
        fontSize: 18,
        color: color,
        fontWeight: FontWeight.bold,
      );
  TextStyle size22BoldWithColor(Color color) => TextStyle(
        fontSize: 22,
        color: color,
        fontWeight: FontWeight.bold,
      );
  TextStyle size28BoldWithColor(Color color) => TextStyle(
        fontSize: 28,
        color: color,
        fontWeight: FontWeight.bold,
      );
  TextStyle size36BoldWithColor(Color color) => TextStyle(
        fontSize: 36,
        color: color,
        fontWeight: FontWeight.bold,
      );
  TextStyle size45BoldWithColor(Color color) => TextStyle(
        fontSize: 45,
        color: color,
        fontWeight: FontWeight.bold,
      );

  /// ExtraBoldWeight withColor
  TextStyle defaultSizeExtraBoldWithColor(Color color) => TextStyle(
        color: color,
        fontWeight: FontWeight.w900,
      );
  TextStyle size12ExtraBoldWithColor(Color color) => TextStyle(
        fontSize: 12,
        color: color,
        fontWeight: FontWeight.w900,
      );
  TextStyle size14ExtraBoldWithColor(Color color) => TextStyle(
        fontSize: 14,
        color: color,
        fontWeight: FontWeight.w900,
      );
  TextStyle size16ExtraBoldWithColor(Color color) => TextStyle(
        fontSize: 16,
        color: color,
        fontWeight: FontWeight.w900,
      );
  TextStyle size18ExtraBoldWithColor(Color color) => TextStyle(
        fontSize: 18,
        color: color,
        fontWeight: FontWeight.w900,
      );
  TextStyle size22ExtraBoldWithColor(Color color) => TextStyle(
        fontSize: 22,
        color: color,
        fontWeight: FontWeight.w900,
      );
  TextStyle size28ExtraBoldWithColor(Color color) => TextStyle(
        fontSize: 28,
        color: color,
        fontWeight: FontWeight.w900,
      );
  TextStyle size36ExtraBoldWithColor(Color color) => TextStyle(
        fontSize: 36,
        color: color,
        fontWeight: FontWeight.w900,
      );
  TextStyle size45ExtraBoldWithColor(Color color) => TextStyle(
        fontSize: 45,
        color: color,
        fontWeight: FontWeight.w900,
      );

  /// InputDecoration-Border
  OutlineInputBorder get inputOutlineNoBorder => OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(12),
      );
  OutlineInputBorder get inputOutlineBorder => OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorConstants.myBlack.withOpacity(.2),
        ),
        borderRadius: BorderRadius.circular(12),
      );
  OutlineInputBorder get inputOutlineFocusedBorder => OutlineInputBorder(
        borderSide: BorderSide(color: ColorConstants.primaryColor),
        borderRadius: BorderRadius.circular(12),
      );
  OutlineInputBorder get inputOutlineErrorBorder => OutlineInputBorder(
        borderSide: BorderSide(color: colorScheme.error),
        borderRadius: BorderRadius.circular(12),
      );

  /// Shimmer
  Shimmer shimmerAvatar(double radius) => Shimmer.fromColors(
        baseColor: ColorConstants.myLightGrey,
        highlightColor: ColorConstants.myLightGrey.withOpacity(.7),
        child: CircleAvatar(radius: radius),
      );

  Shimmer shimmerContainer(double width, double height) => Shimmer.fromColors(
        baseColor: ColorConstants.myLightGrey,
        highlightColor: ColorConstants.myLightGrey.withOpacity(.7),
        child: Container(
          width: width,
          height: height,
          color: ColorConstants.myLightGrey,
        ),
      );

  Shimmer shimmerColoredBox(int count, {double height = 120}) {
    return Shimmer.fromColors(
      baseColor: ColorConstants.myLightGrey,
      highlightColor: ColorConstants.myLightGrey.withOpacity(.7),
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: count,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 8),
            color: ColorConstants.myLightGrey,
            height: height,
          );
        },
      ),
    );
  }
}
