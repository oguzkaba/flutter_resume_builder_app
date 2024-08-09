import 'package:fixresume/core/enums/routes_enum.dart';
import 'package:fixresume/features/auth/presentation/views/login_view.dart';
import 'package:fixresume/features/auth/presentation/views/register_details_view.dart';
import 'package:fixresume/features/auth/presentation/views/register_view.dart';
import 'package:fixresume/features/auth/presentation/widgets/cropped_image_screen.dart';
import 'package:fixresume/features/dashboard/presentation/views/dashboard_view.dart';
import 'package:fixresume/features/error/views/error_view.dart';
import 'package:fixresume/features/home/presentation/views/home_view.dart';
import 'package:fixresume/features/onboard/presentation/views/onboard_view.dart';
import 'package:fixresume/features/resume/presentation/views/create_resume_view.dart';
import 'package:fixresume/features/resume/presentation/views/preview_resume_view.dart';
import 'package:fixresume/features/resume/presentation/views/sub_views/entry_info_view.dart';
import 'package:fixresume/features/resume/templates/presentation/views/templates_view.dart';
import 'package:fixresume/features/settings/presentation/views/settings_view.dart';
import 'package:fixresume/features/settings/presentation/views/sub_views/account/account_view.dart';
import 'package:fixresume/features/settings/presentation/views/sub_views/contact/our_website.dart';
import 'package:fixresume/features/settings/presentation/views/sub_views/languages/languages_view.dart';
import 'package:fixresume/features/settings/presentation/views/sub_views/premium/premium_view.dart';
import 'package:fixresume/features/settings/presentation/views/sub_views/terms_policy/privacy_policy_view.dart';
import 'package:fixresume/features/settings/presentation/views/sub_views/terms_policy/terms_of_conditions_view.dart';
import 'package:fixresume/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
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
      name: RoutesEnum.error.name,
      path: RoutesEnum.error.path,
      pageBuilder: (context, state) => MaterialPage(
        key: state.pageKey,
        child: ErrorView(
          message: state.extra as String?,
        ),
      ),
    ),
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
      name: RoutesEnum.registerDetails.name,
      path: RoutesEnum.registerDetails.path,
      pageBuilder: (context, state) => MaterialPage(
        key: state.pageKey,
        child: const RegisterDetailsView(),
      ),
      routes: [
        GoRoute(
          name: RoutesEnum.cropImageScreen.name,
          path: RoutesEnum.cropImageScreen.path,
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            child: const CropperImageScreen(),
          ),
        ),
      ],
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
                  pageBuilder: (context, state) {
                    return MaterialPage(
                      key: state.pageKey,
                      child: PreviewResumeView(
                        routeExtra: state.extra! as Map<String, dynamic>,
                      ),
                    );
                  },
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
                  name: RoutesEnum.account.name,
                  path: RoutesEnum.account.path,
                  pageBuilder: (context, state) => MaterialPage(
                    key: state.pageKey,
                    child: const AccountView(),
                  ),
                ),
                GoRoute(
                  name: RoutesEnum.premium.name,
                  path: RoutesEnum.premium.path,
                  pageBuilder: (context, state) => MaterialPage(
                    key: state.pageKey,
                    child: const PremiumView(),
                  ),
                ),
                GoRoute(
                  name: RoutesEnum.languages.name,
                  path: RoutesEnum.languages.path,
                  pageBuilder: (context, state) => MaterialPage(
                    key: state.pageKey,
                    child: const LanguagesView(),
                  ),
                ),
                GoRoute(
                  name: RoutesEnum.terms.name,
                  path: RoutesEnum.terms.path,
                  pageBuilder: (context, state) => MaterialPage(
                    key: state.pageKey,
                    child: const TermsOfConditionsView(),
                  ),
                ),
                GoRoute(
                  name: RoutesEnum.privacy.name,
                  path: RoutesEnum.privacy.path,
                  pageBuilder: (context, state) => MaterialPage(
                    key: state.pageKey,
                    child: const PrivacyPolicyView(),
                  ),
                ),
                GoRoute(
                  name: RoutesEnum.ourWebsite.name,
                  path: RoutesEnum.ourWebsite.path,
                  pageBuilder: (context, state) => MaterialPage(
                    key: state.pageKey,
                    child: const OurWebsiteView(),
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

/// Route State arguments.
