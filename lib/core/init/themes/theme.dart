import 'package:fixresume/core/constants/app/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class AppTheme {
  ThemeData get lightTheme {
    return ThemeData.light().copyWith(
      pageTransitionsTheme: _pageTransitions(),
      scaffoldBackgroundColor: ColorConstants.myWhite,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: ColorConstants.myWhite,
      ),
      chipTheme: _chipTheme(),
      colorScheme: _colorScheme(),
      filledButtonTheme: _filledButtonTheme(),
    );
  }

  FilledButtonThemeData _filledButtonTheme() {
    return FilledButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.resolveWith<Color>(
          (states) => states.contains(WidgetState.disabled)
              ? ColorConstants.primaryColor.withOpacity(0.5)
              : ColorConstants.primaryColor,
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }

  ColorScheme _colorScheme() {
    return ColorScheme.fromSeed(
      primary: ColorConstants.primaryColor,
      seedColor: ColorConstants.primaryColor,
      surface: ColorConstants.myWhite,
      // primaryContainer: ColorConstants.myWhite,
    );
  }

  ChipThemeData _chipTheme() {
    return ChipThemeData(
      color: WidgetStateProperty.resolveWith<Color>(
        (states) => states.contains(WidgetState.selected)
            ? ColorConstants.primaryColor
            : ColorConstants.myExtraLightGrey,
      ),
      showCheckmark: true,
      checkmarkColor: ColorConstants.myWhite,
      labelStyle: TextStyle(
        color: ColorConstants.myBlack,
        fontSize: 14,
      ),
      secondaryLabelStyle: TextStyle(
        color: ColorConstants.myWhite,
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
      side: WidgetStateBorderSide.resolveWith(
        (states) => states.contains(WidgetState.selected)
            ? BorderSide(
                color: ColorConstants.primaryColor,
                width: 2,
              )
            : BorderSide(
                color: ColorConstants.myLightGrey,
                width: 2,
              ),
      ),
    );
  }

  PageTransitionsTheme _pageTransitions() {
    return const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      },
    );
  }
}
