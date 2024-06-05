import 'package:package_info_plus/package_info_plus.dart';

class PackageInfoModule {
  static Future<PackageInfo> initializePackageInfo() async {
    return PackageInfo.fromPlatform();
  }
}
