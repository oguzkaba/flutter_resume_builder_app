import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_resume_builder_app/core/constants/app/color_constants.dart';
import 'package:flutter_resume_builder_app/core/enums/routes_enum.dart';
import 'package:flutter_resume_builder_app/core/extensions/asset_extension.dart';
import 'package:flutter_resume_builder_app/core/extensions/context_extension.dart';
import 'package:flutter_resume_builder_app/core/extensions/string_extensions.dart';
import 'package:flutter_resume_builder_app/core/init/lang/locale_keys.g.dart';
import 'package:flutter_resume_builder_app/core/widgets/custom_filledbutton_widget.dart';
import 'package:go_router/go_router.dart';

/// This Dart class named OnboardView extends StatefulWidget.
class OnboardView extends StatefulWidget {
  /// In the provided Dart code snippet, the constructor `const OnboardView({super.key});` is defining a
  /// constructor for the `OnboardView` class.
  const OnboardView({super.key});

  @override
  State<OnboardView> createState() => _OnboardViewState();
}

class _OnboardViewState extends State<OnboardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                context.verticalPaddingSmall,
                Image.asset(
                  'onboard_slide1'.toPNG,
                  width: 320,
                ),
                context.verticalPaddingNormal,
                _bottomSection(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column _bottomSection(BuildContext context) {
    return Column(
      children: [
        Text(
          'Build a Professional Resume for Free!',
          textAlign: TextAlign.center,
          style: context.size36Bold,
        ),
        Text(
          'Create your resume in minutes with our easy-to-use resume builder.',
          textAlign: TextAlign.center,
          style: context.size12BoldWithColor(ColorConstants.myMediumGrey),
        ),
        context.verticalPaddingNormal,
        CustomFilledButtonWidget(
          buttonText: LocaleKeys.onboard_buttonText.locale,
          onPressed: () => context.goNamed(RoutesEnum.register.name),
        ),
        context.verticalPaddingSmall,
        Text.rich(
          TextSpan(
            text: 'Already have an account? ',
            style:
                context.defaultSizeNormalWithColor(ColorConstants.myMediumGrey),
            children: [
              TextSpan(
                text: 'Login',
                recognizer: TapGestureRecognizer()
                  ..onTap = () => context.goNamed(RoutesEnum.login.name),
                style: context
                    .defaultSizeBoldWithColor(ColorConstants.primaryColor)
                    .copyWith(
                      decoration: TextDecoration.underline,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
