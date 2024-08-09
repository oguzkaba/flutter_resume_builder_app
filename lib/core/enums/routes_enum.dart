/// RouteEnum is an enum class that contains all the routes in the application.
enum RoutesEnum {
  splash,
  onboard,
  register,
  registerDetails,
  cropImageScreen,
  login,
  error,
  home,
  createResume,
  entryInfo,
  previewResume,
  templates,
  settings,
  account,
  premium,
  languages,
  terms,
  privacy,
  ourWebsite;

  String get path {
    switch (this) {
      case RoutesEnum.splash:
        return '/';
      case RoutesEnum.onboard:
        return '/onboard';
      case RoutesEnum.register:
        return '/register';
      case RoutesEnum.registerDetails:
        return '/register-details';
      case RoutesEnum.cropImageScreen:
        return 'crop-image-screen';
      case RoutesEnum.login:
        return '/login';
      case RoutesEnum.error:
        return '/error';
      case RoutesEnum.home:
        return '/home';
      case RoutesEnum.createResume:
        return 'create-resume';
      case RoutesEnum.entryInfo:
        return 'entryinfo';
      case RoutesEnum.previewResume:
        return 'preview-resume';
      case RoutesEnum.templates:
        return '/templates';
      case RoutesEnum.settings:
        return '/settings';
      case RoutesEnum.account:
        return 'account';
      case RoutesEnum.premium:
        return 'premium';
      case RoutesEnum.languages:
        return 'languages';
      case RoutesEnum.terms:
        return 'terms';
      case RoutesEnum.privacy:
        return 'privacy';
      case RoutesEnum.ourWebsite:
        return 'our-website';
    }
  }
}
