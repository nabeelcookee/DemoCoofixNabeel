import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class Dionterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {

    if (kDebugMode) {
      print('Request: ${options.method} ${options.uri}');
    }
    if (kDebugMode) {
      print('Request headers: ${options.headers}');
    }
    if (kDebugMode) {
      print('Request data: ${options.data}');
    }
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {

    if (kDebugMode) {
      print('Response: ${response.statusCode}');
    }
    if (kDebugMode) {
      print('Response headers: ${response.headers}');
    }
    if (kDebugMode) {
      print('Response data: ${response.data}');
    }
    super.onResponse(response, handler);
  }

  @override
  // ignore: deprecated_member_use
  void onError(DioError err, ErrorInterceptorHandler handler) {
  
    if (kDebugMode) {
      print('Error: ${err.message}');
    }
    if (kDebugMode) {
      print('Error response: ${err.response}');
    }
    super.onError(err, handler);
  }}