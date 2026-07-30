import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:network/src/connectivity/network_service.dart';
import 'package:network/src/models/network_status.dart';

class ConnectivityService implements NetworkService {
  final Connectivity _connectivity;

  ConnectivityService(this._connectivity);

  @override
  Future<NetworkStatus> checkConnection() async {
    final result = await _connectivity.checkConnectivity();
    return _map(result);
  }

  @override
  Stream<NetworkStatus> get onStatusChanged {
    return _connectivity.onConnectivityChanged.map(_map);
  }

  NetworkStatus _map(List<ConnectivityResult> results) {
    if (results.contains(ConnectivityResult.none)) {
      return NetworkStatus.disconnected;
    }
    return NetworkStatus.connected;
  }
}
