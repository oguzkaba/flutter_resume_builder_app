import 'package:fixresume/core/constants/app/color_constants.dart';
import 'package:fixresume/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

/// CustomSegmentedButton Widget.
class CustomSegmentedButtonWidget extends StatelessWidget {
  /// CustomSegmentedButtonWidget constructor.
  const CustomSegmentedButtonWidget({
    required this.selected,
    required this.value,
    required this.segments,
    super.key,
    this.padding,
  });

  /// ValueChanged<int> selectedPlan.
  final ValueChanged<int> selected;

  /// Set<int> value.
  final int value;

  /// List<ButtonSegment<int>> segments.
  final List<ButtonSegment<int>> segments;

  /// EdgeInsets padding.
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return SegmentedButton(
      showSelectedIcon: false,
      style: ButtonStyle(
        side: WidgetStatePropertyAll(
          BorderSide(
            color: ColorConstants.myLightGrey.withOpacity(0.5),
          ),
        ),
        padding: WidgetStatePropertyAll(
          padding ?? context.edgeInsetsAllLarge,
        ),
        backgroundColor: WidgetStateProperty.resolveWith(
          (states) => states.contains(WidgetState.selected)
              ? ColorConstants.primaryColor
              : ColorConstants.myWhite,
        ),
        foregroundColor: WidgetStateProperty.resolveWith(
          (states) => states.contains(WidgetState.selected)
              ? ColorConstants.myWhite
              : ColorConstants.myBlack,
        ),
        textStyle: WidgetStateProperty.resolveWith(
          (states) => states.contains(WidgetState.selected)
              ? context.defaultSizeBoldWithColor(ColorConstants.myWhite)
              : context.defaultSizeBold,
        ),
      ),
      onSelectionChanged: (value) => selected(value.first),
      segments: segments,
      selected: {value},
    );
  }
}
