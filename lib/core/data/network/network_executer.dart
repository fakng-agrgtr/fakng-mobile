import 'package:dio/dio.dart';
import 'package:fakng_mobile/core/data/models/network_error/network_error.dart';
import 'package:fakng_mobile/core/data/models/result/result.dart';
import 'package:fakng_mobile/core/data/network/network_client.dart';
import 'package:fakng_mobile/core/data/network/network_connectivity.dart';
import 'package:fakng_mobile/core/injection_container.dart';

class NetworkExecuter {
  late final NetworkConnectivity _networkConnectivity;

  NetworkExecuter({
    required NetworkConnectivity networkConnectivity,
  }) {
    _networkConnectivity = networkConnectivity;
  }

  Future<Result<K, NetworkError>> execute<T, K>({
    required K Function() request,
    required T responseType,
  }) async {
    // Check Network Connectivity
    if (await _networkConnectivity.status) {
      try {
        final response = request();
        return Result.success(response);

        // NETWORK ERROR
      } on DioError catch (diorError) {
        logger.e(diorError);
        return Result.failure(NetworkError.request(error: diorError));

        // TYPE ERROR
      } on TypeError catch (e) {
        logger.e('${NetworkError.type(error: e.toString())}');
        return Result.failure(NetworkError.type(error: e.toString()));
      }

      // No Internet Connection
    } else {
      logger.e('No Internet Connection');
      return const Result.failure(
        NetworkError.connectivity(message: 'No Internet Connection'),
      );
    }
  }
}
