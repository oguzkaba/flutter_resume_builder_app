// ignore_for_file: prefer_constructors_over_static_methods

import 'package:flutter/material.dart';
import 'package:flutter_resume_builder_app/core/enums/routes_enum.dart';
import 'package:flutter_resume_builder_app/features/auth/login/presentation/views/login_view.dart';
import 'package:flutter_resume_builder_app/features/auth/register/presentation/views/register_view.dart';
import 'package:flutter_resume_builder_app/features/dashboard/presentation/views/dashboard_view.dart';
import 'package:flutter_resume_builder_app/features/error/views/error_view.dart';
import 'package:flutter_resume_builder_app/features/home/presentation/views/home_view.dart';
import 'package:flutter_resume_builder_app/features/onboard/presentation/views/onboard_view.dart';
import 'package:flutter_resume_builder_app/features/resume/presentation/views/create_resume_view.dart';
import 'package:flutter_resume_builder_app/features/resume/presentation/views/preview_resume_view.dart';
import 'package:flutter_resume_builder_app/features/resume/presentation/views/sub_views/entry_info_view.dart';
import 'package:flutter_resume_builder_app/features/resume/templates/presentation/views/templates_view.dart';
import 'package:flutter_resume_builder_app/features/settings/presentation/views/settings_view.dart';
import 'package:flutter_resume_builder_app/features/settings/presentation/views/sub_views/premium/presentation/views/premium_view.dart';
import 'package:flutter_resume_builder_app/features/settings/presentation/views/sub_views/terms_policy/privacy_policy_view.dart';
import 'package:flutter_resume_builder_app/features/settings/presentation/views/sub_views/terms_policy/terms_of_conditions_view.dart';
import 'package:flutter_resume_builder_app/features/splash/presentation/views/splash_view.dart';
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
    GoRoute(
      name: RoutesEnum.register.name,
      path: RoutesEnum.register.path,
      pageBuilder: (context, state) => MaterialPage(
        key: state.pageKey,
        child: const RegisterView(),
      ),
    ),
    GoRoute(
      name: RoutesEnum.login.name,
      path: RoutesEnum.login.path,
      pageBuilder: (context, state) => MaterialPage(
        key: state.pageKey,
        child: const LoginView(),
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
                  routes: [
                    GoRoute(
                      name: RoutesEnum.entryInfo.name,
                      path: RoutesEnum.entryInfo.path,
                      pageBuilder: (context, state) => MaterialPage(
                        key: state.pageKey,
                        child: EntryInfoView(
                          resumeInfo: state.extra! as List<String>,
                        ),
                      ),
                    ),
                  ],
                ),
                GoRoute(
                  name: RoutesEnum.previewResume.name,
                  path: RoutesEnum.previewResume.path,
                  pageBuilder: (context, state) => MaterialPage(
                    key: state.pageKey,
                    child: const PreviewResumeView(),
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
                    //fullscreenDialog: true,
                    child: const PremiumView(),
                  ),
                ),
                GoRoute(
                  name: RoutesEnum.terms.name,
                  path: RoutesEnum.terms.path,
                  pageBuilder: (context, state) => MaterialPage(
                    key: state.pageKey,
                    //fullscreenDialog: true,
                    child: const TermsOfConditionsView(),
                  ),
                ),
                GoRoute(
                  name: RoutesEnum.privacy.name,
                  path: RoutesEnum.privacy.path,
                  pageBuilder: (context, state) => MaterialPage(
                    key: state.pageKey,
                    //fullscreenDialog: true,
                    child: const PrivacyPolicyView(),
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
