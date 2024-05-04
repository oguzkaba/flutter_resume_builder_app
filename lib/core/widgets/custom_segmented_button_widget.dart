import 'package:flutter/material.dart';
import 'package:flutter_resume_builder_app/core/constants/app/color_constants.dart';
import 'package:flutter_resume_builder_app/core/extensions/context_extension.dart';

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
        side: MaterialStatePropertyAll(
          BorderSide(
            color: ColorConstants.myLightGrey.withOpacity(0.5),
          ),
        ),
        padding: MaterialStatePropertyAll(
          padding ?? context.edgeInsetsAllLarge,
        ),
        backgroundColor: MaterialStateProperty.resolveWith(
          (states) => states.contains(MaterialState.selected)
              ? ColorConstants.primaryColor
              : ColorConstants.myWhite,
        ),
        foregroundColor: MaterialStateProperty.resolveWith(
          (states) => states.contains(MaterialState.selected)
              ? ColorConstants.myWhite
              : ColorConstants.myBlack,
        ),
        textStyle: MaterialStateProperty.resolveWith(
          (states) => states.contains(MaterialState.selected)
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
