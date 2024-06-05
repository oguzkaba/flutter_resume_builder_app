import 'package:fixresume/core/modules/env_module.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseModule {
  static Future<SupabaseClient> initializeSupabase() async {
    final supabase = await Supabase.initialize(
      url: EnvironmentModule.supabaseUrl,
      anonKey: EnvironmentModule.supabaseAnonKey,
    );
    return supabase.client;
  }
}
