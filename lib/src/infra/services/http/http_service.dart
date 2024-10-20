import 'package:daily_calorie_calculator_flutter/src/infra/services/http/http_response.dart';
import 'package:result_dart/result_dart.dart';

import 'exceptions/http_request_exception.dart';

abstract class HttpService {
  void updateBaseUrl({required String baseUrl});

  AsyncResult<HttpResponse, HttpRequestException> get(
    String path, {
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParams,
  });
}
