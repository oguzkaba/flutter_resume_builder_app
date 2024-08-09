import 'package:fixresume/core/extensions/color_extension.dart';
import 'package:flutter/material.dart';

/// This Dart class likely contains constants for colors used in the application.
final class ColorConstants {
  static Color primaryColor = '2A84FF'.toColor;
  static Color myWhite = 'ffffff'.toColor;
  static Color secondaryColor = myWhite;
  static Color myYellow = 'ffc107'.toColor;
  static Color myOrange = 'ff8922'.toColor;
  static Color myGreen = '4CAF50'.toColor;
  static Color myLightRed = 'ffb7b7'.toColor;
  static Color myRed = 'ff0a0a'.toColor;
  static Color myDarkRed = 'b80000'.toColor;
  static Color myDark = '393939'.toColor;
  static Color myBlack = '000000'.toColor;
  static Color myTransparent = const Color.fromRGBO(0, 0, 0, 0);
  static Color myLightGrey = 'CCCCCC'.toColor;
  static Color myExtraLightGrey = 'F7F7F7'.toColor;
  static Color myMediumGrey = 'A3A3A3'.toColor;
  static Color myBlue = '2196f3'.toColor;
  static Color shimmerBase = 'e0e0e0'.toColor;
  static Color shimmerHighlight = 'f5f5f5'.toColor;

  ///MaterialState property for the color
  static WidgetStateProperty<Color> primaryColorMaterialState =
      WidgetStateProperty.all(primaryColor);
  static WidgetStateProperty<Color> secondaryColorMaterialState =
      WidgetStateProperty.all(secondaryColor);
  static WidgetStateProperty<Color> myYellowMaterialState =
      WidgetStateProperty.all(myYellow);
  static WidgetStateProperty<Color> myOrangeMaterialState =
      WidgetStateProperty.all(myOrange);
  static WidgetStateProperty<Color> myGreenMaterialState =
      WidgetStateProperty.all(myGreen);
  static WidgetStateProperty<Color> myLightRedMaterialState =
      WidgetStateProperty.all(myLightRed);
  static WidgetStateProperty<Color> myRedMaterialState =
      WidgetStateProperty.all(myRed);
  static WidgetStateProperty<Color> myDarkRedMaterialState =
      WidgetStateProperty.all(myDarkRed);
  static WidgetStateProperty<Color> myDarkMaterialState =
      WidgetStateProperty.all(myDark);
  static WidgetStateProperty<Color> myWhiteMaterialState =
      WidgetStateProperty.all(myWhite);
  static WidgetStateProperty<Color> myBlackMaterialState =
      WidgetStateProperty.all(myBlack);
  static WidgetStateProperty<Color> myTransparentMaterialState =
      WidgetStateProperty.all(myTransparent);
  static WidgetStateProperty<Color> myLightGreyMaterialState =
      WidgetStateProperty.all(myLightGrey);
  static WidgetStateProperty<Color> myExtraLightGreyMaterialState =
      WidgetStateProperty.all(myExtraLightGrey);
  static WidgetStateProperty<Color> myMediumGreyMaterialState =
      WidgetStateProperty.all(myMediumGrey);
  static WidgetStateProperty<Color> myBlueMaterialState =
      WidgetStateProperty.all(myBlue);
  static WidgetStateProperty<Color> shimmerBaseMaterialState =
      WidgetStateProperty.all(shimmerBase);
  static WidgetStateProperty<Color> shimmerHighlightMaterialState =
      WidgetStateProperty.all(shimmerHighlight);
}
