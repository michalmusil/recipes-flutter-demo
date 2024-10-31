import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:recipes_flutter_demo/core/domain/services/i_internet_connectivity_service.dart';

class InternetConnectivityService implements IInternetConnectivityService {
  final _connectivity = Connectivity();

  @override
  Future<bool> isConnected() async {
    final connectivityResults = await _connectivity.checkConnectivity();
    return connectivityResults.any((res) => res != ConnectivityResult.none);
  }
}
