import 'package:flutter/material.dart';
import 'package:flutter_resume_builder_app/core/constants/app/color_constants.dart';
import 'package:flutter_resume_builder_app/core/enums/routes_enum.dart';
import 'package:flutter_resume_builder_app/core/extensions/asset_extension.dart';
import 'package:flutter_resume_builder_app/core/extensions/context_extension.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

/// This class represents a StatefulWidget for a splash screen view in a Dart application.
class SplashView extends StatefulWidget {
  /// constructor for the `SplashView` class.
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), routeOnboard);
    super.initState();
  }

  void routeOnboard() => context.goNamed(RoutesEnum.onboard.name);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: ColorConstants.myWhite,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              'splash'.toLottie,
              fit: BoxFit.cover,
              width: 200,
              height: 200,
            ),
            Text.rich(
              TextSpan(
                text: 'Fix',
                style: context.body18BoldPrimaryColor,
                children: <TextSpan>[
                  TextSpan(
                    text: 'Resume',
                    style: context.body18BoldBlack,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
