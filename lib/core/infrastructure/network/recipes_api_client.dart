import 'package:dio/dio.dart';
import 'package:recipes_flutter_demo/core/infrastructure/constants/network_constants.dart';
import 'package:recipes_flutter_demo/core/infrastructure/network/http_method.dart';

final _dioBaseOptions = BaseOptions(
  baseUrl: NetworkConstants.recipesApiBase,
  connectTimeout: NetworkConstants.recipesApiConnectionTimeout,
  receiveTimeout: NetworkConstants.recipesApiReceiveTimeout,
  contentType: NetworkConstants.recipesApiContentType,
);

class RecipesApiClient {
  final _dio = Dio(_dioBaseOptions);

  void addInterceptor(Interceptor interceptor) {
    _dio.interceptors.add(interceptor);
  }

  Future<Response<T>> makeUnauthenticatedRequest<T>(
    HttpMethod method,
    String url, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    Options? options,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final requestOptions = options ?? Options();

    return _dio.request(
      url,
      data: data,
      queryParameters: queryParameters,
      cancelToken: cancelToken,
      options: requestOptions.copyWith(method: method.stringRepresentation),
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
  }
}
