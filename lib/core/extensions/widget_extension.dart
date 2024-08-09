import 'package:fixresume/core/constants/app/color_constants.dart';
import 'package:flutter/widgets.dart';

/// This extension is used to wrap a widget.
extension WidgetExtansion on Widget {
  /// This method is used to convert a widget to a [SliverToBoxAdapter].
  SliverToBoxAdapter get toSliver => SliverToBoxAdapter(child: this);

  /// This method is used to wrap a widget with a [Container].
  Container get wrapColoredContainer => Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: ColorConstants.myExtraLightGrey,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
          ),
        ),
        width: double.infinity,
        child: this,
      );
}
