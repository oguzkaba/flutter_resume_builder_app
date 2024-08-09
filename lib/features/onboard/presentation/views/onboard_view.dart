import 'package:fixresume/core/constants/app/color_constants.dart';
import 'package:fixresume/core/enums/routes_enum.dart';
import 'package:fixresume/core/extensions/asset_extension.dart';
import 'package:fixresume/core/extensions/context_extension.dart';
import 'package:fixresume/core/extensions/string_extensions.dart';
import 'package:fixresume/core/init/lang/locale_keys.g.dart';
import 'package:fixresume/core/widgets/custom_filledbutton_widget.dart';
import 'package:fixresume/features/auth/presentation/widgets/auth_link_widget.dart';
import 'package:flutter/material.dart';
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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
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
          LocaleKeys.onboard_title.locale(context),
          textAlign: TextAlign.center,
          style: context.size28Bold,
        ),
        Text(
          LocaleKeys.onboard_desc.locale(context),
          textAlign: TextAlign.center,
          style: context.size12BoldWithColor(ColorConstants.myMediumGrey),
        ),
        context.verticalPaddingNormal,
        CustomFilledButtonWidget(
          buttonText: LocaleKeys.onboard_buttonText.locale(context),
          onPressed: () => context.goNamed(RoutesEnum.register.name),
        ),
        AuthLinkWidget(
          onTap: () => context.goNamed(RoutesEnum.login.name),
          textQuestion: LocaleKeys.onboard_haveAccount.locale(context),
          textAction: LocaleKeys.onboard_login.locale(context),
        ),
      ],
    );
  }
}
