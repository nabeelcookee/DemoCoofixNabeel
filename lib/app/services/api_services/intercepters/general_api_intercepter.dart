import 'package:coofix/app/services/api_services/utils/api_logger.dart';
import 'package:dio/dio.dart';

class GeneralApiIntercepter extends Interceptor {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    super.onResponse(response, handler);
    ApiLogger.logSuccessResponse(response);
  }
}
