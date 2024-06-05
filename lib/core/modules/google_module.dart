import 'package:fixresume/core/modules/env_module.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleModule {
  static Future<GoogleSignIn> initializeGoogleSignIn() async {
    return GoogleSignIn(
      clientId: EnvironmentModule.googleIosClientId,
      serverClientId: EnvironmentModule.googleWebClientId,
    );
  }
}
