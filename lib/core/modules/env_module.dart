import 'package:flutter_dotenv/flutter_dotenv.dart';

class EnvironmentModule {
  static Future<DotEnv> init() async {
    await dotenv.load();
    return dotenv;
  }

  static String get supabaseUrl => dotenv.get('SUPABASE_URL');
  static String get supabaseAnonKey => dotenv.get('SUPABASE_ANONKEY');

  static String get googleIosClientId => dotenv.get('GOOGLE_IOS_CLIENT_ID');
  static String get googleWebClientId => dotenv.get('GOOGLE_WEB_CLIENT_ID');
}
