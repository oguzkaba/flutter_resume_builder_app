// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:flutter_resume_builder_app/core/extensions/color_extension.dart';

/// This Dart class likely contains constants for colors used in the application.
final class ColorConstants {
  static Color primaryColor = '2A84FF'.toColor;
  static Color secondaryColor = 'e7b7ff'.toColor;
  static Color myYellow = 'ffc107'.toColor;
  static Color myLightRed = 'ffb7b7'.toColor;
  static Color myRed = 'ff0a0a'.toColor;
  static Color myDarkRed = 'b80000'.toColor;
  static Color myDark = '393939'.toColor;
  static Color myWhite = 'ffffff'.toColor;
  static Color myBlack = '000000'.toColor;
  static Color myTransparent = '000000'.toColor;
  static Color myLightGrey = 'CCCCCC'.toColor;
  static Color myExtraLightGrey = 'F7F7F7'.toColor;
  static Color myMediumGrey = 'A3A3A3'.toColor;
  static Color myBlue = '2196f3'.toColor;
  static Color shimmerBase = 'e0e0e0'.toColor;
  static Color shimmerHighlight = 'f5f5f5'.toColor;

  ///MaterialState property for the color
  static MaterialStateProperty<Color> primaryColorMaterialState =
      MaterialStateProperty.all(primaryColor);
  static MaterialStateProperty<Color> secondaryColorMaterialState =
      MaterialStateProperty.all(secondaryColor);
  static MaterialStateProperty<Color> myYellowMaterialState =
      MaterialStateProperty.all(myYellow);
  static MaterialStateProperty<Color> myLightRedMaterialState =
      MaterialStateProperty.all(myLightRed);
  static MaterialStateProperty<Color> myRedMaterialState =
      MaterialStateProperty.all(myRed);
  static MaterialStateProperty<Color> myDarkRedMaterialState =
      MaterialStateProperty.all(myDarkRed);
  static MaterialStateProperty<Color> myDarkMaterialState =
      MaterialStateProperty.all(myDark);
  static MaterialStateProperty<Color> myWhiteMaterialState =
      MaterialStateProperty.all(myWhite);
  static MaterialStateProperty<Color> myBlackMaterialState =
      MaterialStateProperty.all(myBlack);
  static MaterialStateProperty<Color> myTransparentMaterialState =
      MaterialStateProperty.all(myTransparent);
  static MaterialStateProperty<Color> myLightGreyMaterialState =
      MaterialStateProperty.all(myLightGrey);
  static MaterialStateProperty<Color> myExtraLightGreyMaterialState =
      MaterialStateProperty.all(myExtraLightGrey);
  static MaterialStateProperty<Color> myMediumGreyMaterialState =
      MaterialStateProperty.all(myMediumGrey);
  static MaterialStateProperty<Color> myBlueMaterialState =
      MaterialStateProperty.all(myBlue);
  static MaterialStateProperty<Color> shimmerBaseMaterialState =
      MaterialStateProperty.all(shimmerBase);
  static MaterialStateProperty<Color> shimmerHighlightMaterialState =
      MaterialStateProperty.all(shimmerHighlight);
}
