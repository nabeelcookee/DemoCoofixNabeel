import 'package:coofix/app/constants/api_constants.dart';
import 'package:coofix/app/services/api_services/intercepters/error_api_intercepter.dart';
import 'package:coofix/app/services/api_services/intercepters/general_api_intercepter.dart';
import 'package:coofix/app/services/api_services/intercepters/profile_api_intercepter.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class Api {
  final profile = createProfileDio();
  final general = createGeneralDio();
  final dioToken = Dio(BaseOptions(baseUrl: ApiUrls.base));

  Api._internal();

  static final _singleton = Api._internal();
  factory Api() => _singleton;

  /// Function for creating dio instance for calling apis
  /// requires access token
  static Dio createProfileDio() {
    var dio = Dio(
      BaseOptions(
        baseUrl: ApiUrls.base,
        receiveTimeout: const Duration(seconds: 30),
        connectTimeout: const Duration(seconds: 30),
        sendTimeout: const Duration(seconds: 30),
      ),
    );

    dio.interceptors.addAll([ProfileApiIntercepter(), ErrorApiInterceptor()]);

    return dio;
  }

  /// Function for creating dio instance for calling apis
  /// not requires access token
  static Dio createGeneralDio() {
    var dio = Dio(
      BaseOptions(
        headers: {
          'Tokenvalid': ApiTokens.validToken,
        },
        baseUrl: ApiUrls.base,
        receiveTimeout: const Duration(seconds: 30),
        connectTimeout: const Duration(seconds: 30),
        sendTimeout: const Duration(seconds: 30),
      ),
    );

    dio.interceptors.addAll([GeneralApiIntercepter(), ErrorApiInterceptor()]);

    return dio;
  }
}
