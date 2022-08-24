import 'package:connectivity_plus/connectivity_plus.dart';

class NetworkConnectivity {
  const NetworkConnectivity();

  Future<bool> get status async {
    return !(await Connectivity().checkConnectivity() ==
        ConnectivityResult.none);
  }
}
