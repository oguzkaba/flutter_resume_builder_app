import 'package:flutter/material.dart';
import 'package:flutter_resume_builder_app/core/constants/app/color_constants.dart';
import 'package:flutter_resume_builder_app/core/enums/routes_enum.dart';
import 'package:flutter_resume_builder_app/core/extensions/asset_extension.dart';
import 'package:flutter_resume_builder_app/core/extensions/context_extension.dart';
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
          style: context.textTheme.displaySmall?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        context.verticalPaddingSmall,
        Text(
          'Create your resume in minutes with our easy-to-use resume builder.',
          textAlign: TextAlign.center,
          style: context.textTheme.bodySmall?.copyWith(
            fontWeight: FontWeight.bold,
            color: ColorConstants.myLightGrey,
          ),
        ),
        context.verticalPaddingNormal,
        SizedBox(
          width: context.width,
          height: 48,
          child: FilledButton(
            onPressed: () {
              context.pushNamed(RoutesEnum.home.name);
            },
            child: Text(
              'Get Started',
              style:
                  context.textTheme.titleMedium?.copyWith(color: Colors.white),
            ),
          ),
        ),
        context.verticalPaddingSmall,
        Text.rich(
          TextSpan(
            text: 'Already have an account? ',
            style: context.textTheme.bodyMedium?.copyWith(
              color: ColorConstants.myMediumGrey,
            ),
            children: [
              TextSpan(
                text: 'Login',
                style: context.textTheme.bodyMedium?.copyWith(
                  color: ColorConstants.primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
