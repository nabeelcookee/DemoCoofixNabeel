import 'package:coofix/app/interceptar/dio_interceptor.dart';
import 'package:coofix/app/services/apiservices/api.dart';
import 'package:coofix/src/domain/domain/models/new_request_model/new_request_model.dart';
import 'package:coofix/src/domain/domain/repositories/i_request_repositry.dart';
import 'package:coofix/src/presentation/core/constants/constants.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: INewRequestRepositry)
class NewRequestRepositry implements INewRequestRepositry {
  @override
  Future<NewRequestModel> newrequest(
      {required String id,
      required String serviceId,
      required String addressId,
      required bool isRecurringService,
      required String note,
      required String serviceDateSlot,
      required String serviceDateTimeSlot}) async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      print("new request  accsess token is ${prefs.getString('access_token')}");
      if (prefs.getString('access_token') == null) {
        print("Invalid_Token");
        throw Exception("Invalid_Token");
      }
      final Map<String, dynamic> data = {
        'serviceId': serviceId,
        'id': id,
        'addressId': addressId,
        'isRecurringService': isRecurringService,
        'serviceDateTimeSlot': serviceDateTimeSlot,
        'serviceDateSlot': serviceDateSlot,
        'note': note
      };
      var dio = Dio();
      dio.interceptors.add(Dionterceptor());
      final response = await dio.post(
        ApiEndpoints.newRequest,
        data: data,
        options: Options(
          headers: {
            "Authorization": "Bearer ${prefs.getString('access_token')}",
          },
        ),
      );

      print("Response status: ${response.statusCode}");
      print("Response data: ${response.data}");
      if (kDebugMode) {
        print(
            " new request  accsess token is ${prefs.getString('access_token')}");
        print(' new request  Response status code: ${response.statusCode}');
        print(' new request  Response headers: ${response.headers}');
        print(' new request Response body: ${response.data}');
      }
      if (response.statusCode == 200) {
        if (response.data is List) {
          return response.data
              .map<NewRequestModel>((item) => NewRequestModel.fromJson(item))
              .toList();
        } else if (response.data is Map<String, dynamic>) {
          final NewRequestModel newRequestData =
              NewRequestModel.fromJson(response.data);
          return newRequestData;
        } else {
          throw DioException(
            error: "Failed",
            requestOptions: RequestOptions(),
            type: DioExceptionType.badResponse,
            response: response,
          );
        }
      } else {
        throw DioException(
          error: "Failed",
          requestOptions: RequestOptions(),
          type: DioExceptionType.badResponse,
          response: response,
        );
      }
    } catch (e) {
      if (kDebugMode) {
        print("Error: $e");
      }
      rethrow;
    }
  }

  @override
  Future<List<NewRequestModel>> listRequests({
    required int limit,
    required int skip,
    required String id,
    required String status,
    required String productSaleId,
  }) async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      print("Access token: ${prefs.getString('access_token')}");

      if (prefs.getString('access_token') == null) {
        print("Invalid Token");
        throw Exception("Invalid Token");
      }

      final Map<String, dynamic> data = {
        'id': id,
        'limit': limit,
        'skip': skip,
        'status': status,
        'productSaleId': productSaleId,
      };

      var dio = Dio();
      dio.interceptors.add(Dionterceptor());

      final response = await dio.post(
        ApiEndpoints.listAllRequests,
        data: data,
        options: Options(
          headers: {
            "Authorization": "Bearer ${prefs.getString('access_token')}",
          },
        ),
      );

      if (kDebugMode) {
        print("Access token: ${prefs.getString('access_token')}");
        print('list request Response status code: ${response.statusCode}');
        print('list request Response headers: ${response.headers}');
        print('list request Response body: ${response.data}');
      }

      if (response.statusCode == 200) {
        if (response.data is List) {
          print("list request Response body${response.data}");
          return response.data
              .map<NewRequestModel>((item) => NewRequestModel.fromJson(item))
              .toList();
        } else {
          throw DioException(
            error: "Failed",
            requestOptions: RequestOptions(),
            type: DioExceptionType.badResponse,
            response: response,
          );
        }
      } else {
        throw DioException(
          error: "Failed",
          requestOptions: RequestOptions(),
          type: DioExceptionType.badResponse,
          response: response,
        );
      }
    } catch (e) {
      print("Error: $e");
    }
    throw Exception("");
  }
}
