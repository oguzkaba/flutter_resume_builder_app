import 'dart:developer';

import 'package:flutter/services.dart';
import 'package:purchases_flutter/purchases_flutter.dart';

class PurchasesManager {
  PurchasesManager._init();

  static PurchasesManager? _instance;

  // ignore: prefer_constructors_over_static_methods
  static PurchasesManager get instance {
    _instance ??= PurchasesManager._init();
    return _instance!;
  }

  // Fetch offers
  static Future<List<Offering>> fetchOffers() async {
    try {
      final offerings = await Purchases.getOfferings();
      final current = offerings.current;

      return current == null ? [] : [current];
    } on PlatformException catch (e) {
      log(e.message ?? 'Error fetching offers');
      return [];
    }
  }
}
