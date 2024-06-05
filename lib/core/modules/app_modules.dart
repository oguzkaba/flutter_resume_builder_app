// ignore_for_file: invalid_annotation_target

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:fixresume/core/modules/device_info_module.dart';
import 'package:fixresume/core/modules/env_module.dart';
import 'package:fixresume/core/modules/google_module.dart';
import 'package:fixresume/core/modules/package_info_module.dart';
import 'package:fixresume/core/modules/supabase_module.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

@module
abstract class AppModules {
  @preResolve
  Future<DotEnv> get environment => EnvironmentModule.init();

  @preResolve
  Future<SupabaseClient> get supabaseClient =>
      SupabaseModule.initializeSupabase();

  @preResolve
  Future<GoogleSignIn> get googleSignIn =>
      GoogleModule.initializeGoogleSignIn();

  @preResolve
  Future<BaseDeviceInfo> get deviceInfo =>
      DeviceInfoModule.initializeDeviceInfo();

  @preResolve
  Future<PackageInfo> get packageInfo =>
      PackageInfoModule.initializePackageInfo();

  @singleton
  Connectivity get connectivity => Connectivity();
}