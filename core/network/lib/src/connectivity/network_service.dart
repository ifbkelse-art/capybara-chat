import 'package:network/network.dart';

abstract interface class NetworkService {
  Future<NetworkStatus> checkConnection();
  Stream<NetworkStatus> get onStatusChanged;
}
