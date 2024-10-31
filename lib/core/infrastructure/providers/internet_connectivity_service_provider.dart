import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:recipes_flutter_demo/core/infrastructure/services/internet_connectivity_service.dart';
import 'package:recipes_flutter_demo/core/domain/services/i_internet_connectivity_service.dart';

final internetConnectivityServiceProvider =
    Provider<IInternetConnectivityService>(
  (ref) => InternetConnectivityService(),
);
