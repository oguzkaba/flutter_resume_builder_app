import 'dart:developer';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:fixresume/core/enums/network_connectivity_enum.dart';
import 'package:injectable/injectable.dart';

/// ConnectivityInfo abstract class
abstract interface class ConnectivityInfo {
  /// isConnected getter
  Future<NetworkConnectivityEnum> get check;
  Future<bool> get isConnected;
}

/// ConnectivityInfoImpl class

@Injectable(as: ConnectivityInfo)
class ConnectivityInfoImpl implements ConnectivityInfo {
  ConnectivityInfoImpl({required this.connectivity});

  final Connectivity connectivity;

  @override
  Future<NetworkConnectivityEnum> get check async {
    final result = await connectivity.checkConnectivity();
    log('Internet connection check! $result');
    return NetworkConnectivityEnum.checkConnectivity(result);
  }

  @override
  Future<bool> get isConnected async =>
      await check == NetworkConnectivityEnum.on;
}
