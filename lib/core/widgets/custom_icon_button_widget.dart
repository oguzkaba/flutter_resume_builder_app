import 'package:fixresume/core/constants/app/color_constants.dart';
import 'package:flutter/material.dart';

class CustomIconButtonWidget extends StatelessWidget {
  const CustomIconButtonWidget({
    required this.iconData,
    required this.onTap,
    this.color,
    this.size,
    super.key,
  });

  final IconData? iconData;
  final VoidCallback? onTap;
  final Color? color;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Icon(
        iconData,
        size: size ?? 18,
        color: color ?? ColorConstants.myMediumGrey,
        weight: 10,
      ),
    );
  }
}
