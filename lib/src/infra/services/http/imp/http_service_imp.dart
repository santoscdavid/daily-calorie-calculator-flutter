import 'package:dio/dio.dart';
import 'package:result_dart/result_dart.dart';

import '../exceptions/http_request_exception.dart';
import '../http_response.dart';
import '../http_service.dart';

class HttpServiceImp implements HttpService {
  HttpServiceImp({
    required String baseUrl,
    List<Interceptor> interceptors = const [],
  }) {
    _dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: const Duration(seconds: 10),
      ),
    );

    _dio.interceptors.addAll(interceptors);
  }

  late final Dio _dio;

  @override
  void updateBaseUrl({required String baseUrl}) {
    _dio.options.baseUrl = baseUrl;
  }

  @override
  AsyncResult<HttpResponse, HttpRequestException> get(
    String path, {
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParams,
  }) async {
    try {
      final response = await _dio.get(path);
      return Success(HttpResponse(response.data));
    } on DioException catch (e) {
      return _handleHttpException(e);
    }
  }
}

Failure<HttpResponse, HttpRequestException> _handleHttpException(
  DioException e,
) {
  final exception = HttpRequestException(
    status: e.response!.data['status'] ?? 0,
    title: e.response!.data['title'] ?? 'Error',
    userMessage: e.response!.data['userMessage'] ?? '',
    timestamp: DateTime.now(),
    detail: e.response!.data['detail'],
    type: e.response!.data['type'],
    objects: ObjectErrors.fromJson(e.response!.data['objects']),
    message: e.response!.data['message'],
  );
  return Failure(exception);
}

Map<String, dynamic> getHeaders(Map<String, dynamic>? queryHeaders) {
  Map<String, dynamic> newHeader = queryHeaders ?? {};

  return newHeader;
}
