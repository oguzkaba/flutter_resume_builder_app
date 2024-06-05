import 'package:fixresume/core/extensions/context_extension.dart';
import 'package:fixresume/core/extensions/widget_extension.dart';
import 'package:flutter/material.dart';

/// Custom colored box column widget.
class CustomColoredBoxColumnWidget extends StatelessWidget {
  const CustomColoredBoxColumnWidget({
    required this.children,
    required this.labelText,
    this.crossAxisAlignment,
    super.key,
  });

  final List<Widget> children;
  final CrossAxisAlignment? crossAxisAlignment;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return WidgetExtansion(
      Column(
        crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              labelText,
              style: context.defaultSizeExtraBold,
            ),
          ),
          const SizedBox(height: 8),
          Column(
            children: children,
          ),
        ],
      ),
    ).wrapColoredContainer;
  }
}