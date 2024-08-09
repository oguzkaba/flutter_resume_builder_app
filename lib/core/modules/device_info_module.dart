import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';

class DeviceInfoModule {
  static Future<BaseDeviceInfo> initializeDeviceInfo() async {
    final deviceInfo = DeviceInfoPlugin();

    if (Platform.isAndroid) {
      return deviceInfo.androidInfo;
    } else if (Platform.isIOS) {
      return deviceInfo.iosInfo;
    }
    throw Exception('Platform not supported');
  }
}
//   final deviceInfo = DeviceInfoPlugin();
//   late AndroidDeviceInfo androidInfo;
//   late IosDeviceInfo iosInfo;
//   if (Platform.isAndroid) {
//     androidInfo = await deviceInfo.androidInfo;
//   } else if (Platform.isIOS) {
//     iosInfo = await deviceInfo.iosInfo;
//   }
