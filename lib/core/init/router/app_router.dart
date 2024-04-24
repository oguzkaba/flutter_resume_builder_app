// ignore_for_file: prefer_constructors_over_static_methods

import 'package:flutter/material.dart';
import 'package:flutter_resume_builder_app/core/enums/routes_enum.dart';
import 'package:flutter_resume_builder_app/features/dashboard/presentation/view/dashboard_view.dart';
import 'package:flutter_resume_builder_app/features/error/view/error_view.dart';
import 'package:flutter_resume_builder_app/features/home/presentation/views/home_view.dart';
import 'package:flutter_resume_builder_app/features/onboard/view/onboard_view.dart';
import 'package:flutter_resume_builder_app/features/premium/presentation/views/premium_view.dart';
import 'package:flutter_resume_builder_app/features/resume/create/presentation/view/create_resume_view.dart';
import 'package:flutter_resume_builder_app/features/settings/view/settings_view.dart';
import 'package:flutter_resume_builder_app/features/splash/presentation/view/splash_view.dart';
import 'package:flutter_resume_builder_app/features/templates/view/templates_view.dart';
import 'package:go_router/go_router.dart';

/// This class is likely used for routing within a Dart application.

/// private navigators
final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorHomeKey =
    GlobalKey<NavigatorState>(debugLabel: '_shellNavigatorHomeKey');
final _shellNavigatorTemplatesKey =
    GlobalKey<NavigatorState>(debugLabel: '_shellNavigatorTemplatesKey');
final _shellNavigatorSettingsKey =
    GlobalKey<NavigatorState>(debugLabel: '_shellNavigatorSettingsKey');

/// This line of code defines a static constant `router` of type `GoRouter`.
final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  debugLogDiagnostics: true,
  initialLocation: RoutesEnum.splash.path,
  errorPageBuilder: (context, state) => MaterialPage(
    key: state.pageKey,
    child: ErrorView(
      goException: state.error,
    ),
  ),
  routes: [
    GoRoute(
      name: RoutesEnum.splash.name,
      path: RoutesEnum.splash.path,
      pageBuilder: (context, state) => MaterialPage(
        key: state.pageKey,
        child: const SplashView(),
      ),
    ),
    GoRoute(
      name: RoutesEnum.onboard.name,
      path: RoutesEnum.onboard.path,
      pageBuilder: (context, state) => MaterialPage(
        key: state.pageKey,
        child: const OnboardView(),
      ),
    ),
    StatefulShellRoute.indexedStack(
      builder: (
        BuildContext context,
        GoRouterState state,
        StatefulNavigationShell navigationShell,
      ) {
        return DashboardView(
          navigationShell: navigationShell,
        );
      },
      branches: <StatefulShellBranch>[
        StatefulShellBranch(
          navigatorKey: _shellNavigatorHomeKey,
          routes: <RouteBase>[
            GoRoute(
              name: RoutesEnum.home.name,
              path: RoutesEnum.home.path,
              pageBuilder: (context, state) => MaterialPage(
                key: state.pageKey,
                child: const HomeView(),
              ),
              routes: [
                GoRoute(
                  name: RoutesEnum.createResume.name,
                  path: RoutesEnum.createResume.path,
                  pageBuilder: (context, state) => MaterialPage(
                    key: state.pageKey,
                    child: const CreateResumeView(),
                  ),
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _shellNavigatorTemplatesKey,
          routes: <RouteBase>[
            GoRoute(
              name: RoutesEnum.templates.name,
              path: RoutesEnum.templates.path,
              pageBuilder: (context, state) => MaterialPage(
                key: state.pageKey,
                child: const TemplatesView(),
              ),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _shellNavigatorSettingsKey,
          routes: <RouteBase>[
            GoRoute(
              name: RoutesEnum.settings.name,
              path: RoutesEnum.settings.path,
              pageBuilder: (context, state) => MaterialPage(
                key: state.pageKey,
                child: const SettingsView(),
              ),
              routes: [
                GoRoute(
                  name: RoutesEnum.premium.name,
                  path: RoutesEnum.premium.path,
                  pageBuilder: (context, state) => MaterialPage(
                    key: state.pageKey,
                    child: const PremiumView(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  ],
);
