import 'package:coofix/main.dart';
import 'package:dio/dio.dart';
import 'package:coofix/app/services/api_services/utils/api_logger.dart';
import '../exceptions/dio_exceptions.dart';

class ErrorApiInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    ApiLogger.logFailureResponse(err);

    switch (err.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        throw DeadlineExceededException(requestOptions: err.requestOptions);

      case DioExceptionType.badCertificate:
        throw BadCertificateException(
          requestOptions: err.requestOptions,
          error: err.error,
        );

      case DioExceptionType.badResponse:
        switch (err.response?.statusCode) {
          case 400:
            throw BadRequestException(requestOptions: err.requestOptions);
          case 401:
            navigatorKey.currentState?.pushNamedAndRemoveUntil('/',(_) => true);
            throw UnauthorizedException(requestOptions: err.requestOptions);
          case 403:
            throw ForbiddenException(requestOptions: err.requestOptions);
          case 404:
            throw NotFoundException(requestOptions: err.requestOptions);
          case 409:
            throw ConflictException(requestOptions: err.requestOptions);
          case 429:
            throw TooManyRequestException(requestOptions: err.requestOptions);
          case 500:
            throw InternalServerErrorException(requestOptions: err.requestOptions);
          case 503:
            throw ServiceUnavailableException(requestOptions: err.requestOptions);
          default:
            throw ResponseFromServerException(
              requestOptions: err.requestOptions,
              error: err.response?.statusMessage ?? "Unknown server error",
            );
        }
      case DioExceptionType.cancel:
        throw RequestCancelledException(requestOptions: err.requestOptions);

      case DioExceptionType.connectionError:
        throw NoInternetConnectionException(requestOptions: err.requestOptions);

      case DioExceptionType.unknown:
      default:
        throw UnknownErrorException(requestOptions: err.requestOptions); 
    }
  }
}
