import 'package:flutter/material.dart';

/// Strin to Color extension
extension ColorExtension on String {
  /// This line of code defines an extension on the `String` class in Dart. It adds a getter property
  /// called `toColor` that converts a hexadecimal color string (e.g., 'FF0000' for red) to a `Color`
  /// object in Flutter.

  Color get toColor => Color(int.parse('0xFF$this'));
}
