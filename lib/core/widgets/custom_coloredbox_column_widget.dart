import 'package:fixresume/core/constants/app/color_constants.dart';
import 'package:fixresume/core/extensions/context_extension.dart';
import 'package:fixresume/core/extensions/widget_extension.dart';
import 'package:fixresume/core/widgets/custom_icon_button_widget.dart';
import 'package:fixresume/core/widgets/custom_snackbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// Custom colored box column widget.
class CustomColoredBoxColumnWidget extends StatelessWidget {
  const CustomColoredBoxColumnWidget({
    required this.labelText,
    required this.children,
    this.crossAxisAlignment,
    this.mooreIcon = false,
    this.onTap,
    super.key,
  });

  final List<Widget> children;
  final CrossAxisAlignment? crossAxisAlignment;
  final String labelText;
  final bool mooreIcon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return WidgetExtansion(
      Column(
        crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                labelText,
                style: context
                    .defaultSizeExtraBoldWithColor(ColorConstants.primaryColor),
              ),
              if (mooreIcon)
                CustomIconButtonWidget(
                  iconData: FontAwesomeIcons.ellipsis,
                  color: ColorConstants.myDark,
                  onTap: onTap ??
                      () {
                        CustomSnackbarWidget.show(
                          context,
                          'This feature is not available yet.',
                          icon: FontAwesomeIcons.solidBell,
                          bgColor: ColorConstants.myLightRed,
                          textColor: ColorConstants.myDarkRed,
                        );
                      },
                ),
            ],
          ),
          Divider(
            height: 8,
            indent: 0,
            endIndent: 0,
            color: ColorConstants.myLightGrey.withOpacity(.3),
          ),
          const SizedBox(height: 12),
          Column(children: children),
        ],
      ),
    ).wrapColoredContainer;
  }
}
