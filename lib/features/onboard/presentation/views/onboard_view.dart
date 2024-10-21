import 'dart:async';

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
  const OnboardView({super.key});

  @override
  State<OnboardView> createState() => _OnboardViewState();
}

final currentIndex = ValueNotifier<int>(0);
final controller = PageController();

class _OnboardViewState extends State<OnboardView> {
  @override
  void initState() {
    super.initState();
    _changeSlide();
  }

  Timer _changeSlide() {
    return Timer.periodic(const Duration(seconds: 5), (timer) {
      if (!mounted) {
        timer.cancel();
      }
      if (currentIndex.value == 4) {
        currentIndex.value = 0;
      } else {
        currentIndex.value++;
      }
      if (controller.hasClients) {
        controller.animateToPage(
          currentIndex.value,
          duration: const Duration(seconds: 1),
          curve: Curves.easeIn,
        );
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _changeSlide().cancel();
    controller.dispose();
  }

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
                ValueListenableBuilder<int>(
                  valueListenable: currentIndex,
                  builder: (context, _, __) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: context.height * 0.5,
                          child: PageView(
                            allowImplicitScrolling: true,
                            physics: const BouncingScrollPhysics(),
                            controller: controller,
                            onPageChanged: (index) =>
                                currentIndex.value = index,
                            children: List.generate(
                              5,
                              (index) => Container(
                                margin: const EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                  color: ColorConstants.myWhite,
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'onboard/slide${index + 1}'.toPNG,
                                    ),
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(5, (index) {
                            return Padding(
                              padding: const EdgeInsets.all(8),
                              child: Container(
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                  color: currentIndex.value == index
                                      ? ColorConstants.primaryColor
                                      : ColorConstants.myLightGrey,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            );
                          }),
                        ),
                      ],
                    );
                  },
                ),
                context.verticalPaddingSmall,
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
