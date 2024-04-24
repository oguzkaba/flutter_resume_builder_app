// ignore_for_file: public_member_api_docs

/// RouteEnum is an enum class that contains all the routes in the application.
enum RoutesEnum {
  splash,
  onboard,
  error,
  home,
  createResume,
  templates,
  settings,
  premium;

  String get path {
    switch (this) {
      case RoutesEnum.splash:
        return '/splash';
      case RoutesEnum.onboard:
        return '/onboard';
      case RoutesEnum.error:
        return '/error';
      case RoutesEnum.home:
        return '/home';
      case RoutesEnum.createResume:
        return 'createresume';
      case RoutesEnum.templates:
        return '/templates';
      case RoutesEnum.settings:
        return '/settings';
      case RoutesEnum.premium:
        return 'premium';
    }
  }
}
