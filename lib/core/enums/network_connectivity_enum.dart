import 'package:connectivity_plus/connectivity_plus.dart';

/// This enum is used to represent the network connectivity status.
enum NetworkConnectivityEnum {
  on,
  off;

  static NetworkConnectivityEnum checkConnectivity(
    List<ConnectivityResult> result,
  ) {
    if (result.contains(ConnectivityResult.mobile) ||
        result.contains(ConnectivityResult.wifi) ||
        result.contains(ConnectivityResult.ethernet)) {
      return NetworkConnectivityEnum.on;
    } else {
      return NetworkConnectivityEnum.off;
    }
  }
}
