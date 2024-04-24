// ignore_for_file: public_member_api_docs

import 'package:connectivity_plus/connectivity_plus.dart';

/// This enum is used to represent the network connectivity status.
enum NetworkConnectivityEnum {
  on,
  off;

  static NetworkConnectivityEnum checkConnectivity(
    List<ConnectivityResult> result,
  ) {
    if (result.contains(ConnectivityResult.mobile) ||
        result.contains(ConnectivityResult.wifi)) {
      return NetworkConnectivityEnum.on;
    } else {
      return NetworkConnectivityEnum.off;
    }
  }
}
