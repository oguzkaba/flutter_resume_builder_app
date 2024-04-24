// ignore_for_file: public_member_api_docs

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_resume_builder_app/core/enums/network_connectivity_enum.dart';

/// ConnectivityInfo abstract class
abstract class ConnectivityInfo {
  /// isConnected getter
  Future<NetworkConnectivityEnum> get isConnected;
}

/// ConnectivityInfoImpl class
class ConnectivityInfoImpl implements ConnectivityInfo {
  ConnectivityInfoImpl({required this.connectivity});

  final Connectivity connectivity;

  @override
  Future<NetworkConnectivityEnum> get isConnected async {
    final result = await connectivity.checkConnectivity();
    return NetworkConnectivityEnum.checkConnectivity(result);
  }
}
