import 'dart:io' show Platform;

import 'package:fixresume/core/modules/env_module.dart';
import 'package:purchases_flutter/purchases_flutter.dart';

class RevenuecatModule {
  static Future<PurchasesConfiguration> initializeRevenueCat() async {
    await Purchases.setLogLevel(LogLevel.debug);

    var configuration =
        PurchasesConfiguration(EnvironmentModule.rcGoogleApiKey);

    if (Platform.isAndroid) {
      configuration = PurchasesConfiguration(EnvironmentModule.rcGoogleApiKey);
    } else if (Platform.isIOS) {
      configuration = PurchasesConfiguration(
        EnvironmentModule.rcAppleApiKey,
      ); // T-ODO: Add App Store ID with .env save
    }

    await Purchases.configure(configuration);
    return configuration;
  }
}
