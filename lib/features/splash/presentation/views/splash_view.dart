import 'dart:developer';

import 'package:fixresume/core/constants/app/color_constants.dart';
import 'package:fixresume/core/enums/routes_enum.dart';
import 'package:fixresume/core/extensions/asset_extension.dart';
import 'package:fixresume/core/extensions/context_extension.dart';
import 'package:fixresume/core/init/di/dep_injection.dart';
import 'package:fixresume/features/auth/presentation/blocs/auth/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      appAuthControl(const Duration(seconds: 3));
    });
  }

  Future<void> appAuthControl(Duration duration) async {
    getIt<AuthBloc>().add(const AuthEvent.loggedIn());
    await Future<dynamic>.delayed(duration).then(
      (value) {
        getIt<AuthBloc>().state.maybeWhen(
              loading: () => log('Loading'),
              orElse: () => context.goNamed(RoutesEnum.onboard.name),
              failure: (String message) {
                if (message == 'User not logged in!') {
                  context.goNamed(RoutesEnum.onboard.name);
                } else {
                  context.goNamed(RoutesEnum.error.name, extra: message);
                }
              },
              success: (user) =>
                  context.goNamed(RoutesEnum.home.name),
            );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: ColorConstants.myWhite,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'app-icon-100'.toAppIcon,
            ),
            Text.rich(
              TextSpan(
                text: 'Fix',
                style: context.textTheme.titleLarge?.copyWith(
                  color: ColorConstants.primaryColor,
                  fontWeight: FontWeight.bold,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Resume',
                    style: context.textTheme.titleLarge?.copyWith(
                      color: ColorConstants.myBlack,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 120, child: LinearProgressIndicator()),
          ],
        ),
      ),
    );
  }
}
