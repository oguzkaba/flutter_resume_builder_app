import 'package:fixresume/core/modules/env_module.dart';
import 'package:signin_with_linkedin/signin_with_linkedin.dart';

class LinkedInModule {
  static Future<LinkedInConfig> initializeLinkedInSignIn() async {
    return LinkedInConfig(
      clientId: EnvironmentModule.linkedinClientId,
      clientSecret: EnvironmentModule.linkedinClientSecret,
      redirectUrl: EnvironmentModule.supabaseCallbackUrl,
      scope: ['openid', 'profile', 'email'],
    );
  }
}
