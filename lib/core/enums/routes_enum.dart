// ignore_for_file: public_member_api_docs

/// RouteEnum is an enum class that contains all the routes in the application.
enum RoutesEnum {
  splash,
  onboard,
  register,
  login,
  error,
  home,
  createResume,
  entryInfo,
  previewResume,
  templates,
  settings,
  premium,
  terms,
  privacy;

  String get path {
    switch (this) {
      case RoutesEnum.splash:
        return '/';
      case RoutesEnum.onboard:
        return '/onboard';
      case RoutesEnum.register:
        return '/register';
      case RoutesEnum.login:
        return '/login';
      case RoutesEnum.error:
        return '/error';
      case RoutesEnum.home:
        return '/home';
      case RoutesEnum.createResume:
        return 'createresume';
      case RoutesEnum.entryInfo:
        return 'entryinfo';
      case RoutesEnum.previewResume:
        return 'previewresume';
      case RoutesEnum.templates:
        return '/templates';
      case RoutesEnum.settings:
        return '/settings';
      case RoutesEnum.premium:
        return 'premium';
      case RoutesEnum.terms:
        return 'terms';
      case RoutesEnum.privacy:
        return 'privacy';
    }
  }
}
