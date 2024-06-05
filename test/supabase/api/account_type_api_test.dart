import 'dart:developer';

import 'package:fixresume/core/init/di/dep_injection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' show Environment;
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  // Test group for the getAccountType function

  /// Setup Dependency Injection
  await configureDependencies(Environment.test);

  group('supabaseGetAccountType', () {
    test('returns account_type when http response is successful', () async {
      final response =
          await getIt<SupabaseClient>().from('account_type').select();
      log(response.toString());

      expect(response, isA<List<Map<String, dynamic>>>());
    });
  });
}
