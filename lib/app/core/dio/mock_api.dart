import 'package:dio/dio.dart';

class DioMockApi {
  Dio dioClient = Dio();
  final baseUrl = 'https://6573803a063f876cec9cf9f6.mockapi.io/';

  static final DioMockApi _instance = DioMockApi._internal();

  factory DioMockApi() {
    _instance.dioClient.interceptors.add(getInterceptor());
    return _instance;
  }

  DioMockApi._internal();

  Dio get dio => dioClient;

  static InterceptorsWrapper getInterceptor() {
    return InterceptorsWrapper(
      onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
        return handler.next(options);
      },
      onResponse: (Response response, ResponseInterceptorHandler handler) {
        return handler.next(response);
      },
      onError: (DioException error, ErrorInterceptorHandler handler) {
        return handler.next(error);
      },
    );
  }
}
