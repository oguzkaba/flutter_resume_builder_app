import 'package:flutter_dotenv/flutter_dotenv.dart';

class EnvironmentModule {
  static Future<DotEnv> init() async {
    await dotenv.load();
    return dotenv;
  }

  static String get supabaseUrl => dotenv.get('SUPABASE_URL');
  static String get supabaseAnonKey => dotenv.get('SUPABASE_ANONKEY');
  static String get supabaseCallbackUrl => dotenv.get('SUPABASE_CALLBACK_URL');
  static String get supabaseBucketUrl => dotenv.get('SUPABASE_BUCKET_URL');

  static String get googleIosClientId => dotenv.get('GOOGLE_IOS_CLIENT_ID');
  static String get googleWebClientId => dotenv.get('GOOGLE_WEB_CLIENT_ID');

  static String get linkedinClientId => dotenv.get('LINKEDIN_CLIENT_ID');
  static String get linkedinClientSecret =>
      dotenv.get('LINKEDIN_CLIENT_SECRET');

  static String get rcGoogleApiKey => dotenv.get('REVENUECAT_GOOGLE_API_KEY');
  static String get rcAppleApiKey => dotenv.get('REVENUECAT_APPLE_API_KEY');
}
