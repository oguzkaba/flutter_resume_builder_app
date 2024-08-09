import 'package:fixresume/core/constants/app/color_constants.dart';
import 'package:fixresume/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AuthLinkWidget extends StatelessWidget {
  const AuthLinkWidget({
    required this.onTap,
    required this.textQuestion,
    required this.textAction,
    super.key,
  });

  final VoidCallback onTap;
  final String textQuestion;
  final String textAction;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        HapticFeedback.vibrate();
        onTap();
      },
      child: SizedBox(
        height: 50,
        child: Center(
          child: Text.rich(
            TextSpan(
              text: textQuestion,
              style: context
                  .defaultSizeNormalWithColor(ColorConstants.myMediumGrey),
              children: [
                TextSpan(
                  text: textAction,
                  style: context
                      .defaultSizeExtraBoldWithColor(
                        ColorConstants.primaryColor,
                      )
                      .copyWith(
                        decoration: TextDecoration.underline,
                        decorationColor: ColorConstants.primaryColor,
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
