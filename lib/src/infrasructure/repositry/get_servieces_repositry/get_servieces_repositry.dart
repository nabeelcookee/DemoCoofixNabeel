import 'dart:developer';

import 'package:coofix/app/constants/api_constants.dart';
import 'package:coofix/app/interceptar/dio_interceptor.dart';
import 'package:coofix/src/domain/domain/models/get_servieces/get_servieces_model.dart';
import 'package:coofix/src/domain/domain/repositories/i_get_serviece_repositry.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:coofix/src/presentation/core/constants/constants.dart';

/// TODO : Review changes to do
/// 
/// - Make api calling and its related functionalities such as interception, error handling as a seperate service class
/// - Add proper status code handling method. Try to use the features of DioIntercepter for it.
/// - User debugPrint or log instead of print statement.
/// - Craete seperate api service profiles for general and profile apis.
/// - Handle Heeders with tokens for different api profiles commonly 
/// - Find a common method for api calls to reduce reduntant writing of same code in every repositories.
/// - Remove unused log, print statements

@LazySingleton(as: IGetServieces)
class GetServiecesRepositry implements IGetServieces {
  @override
  Future<List<GetServiecesModel>> getServices(
      {required String id, required int skip, required int limit}) async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final Map<String, dynamic> data = {
        'id': id,
        'limit': limit,
        'skip': skip,
      };
      var dio = Dio();
      dio.interceptors.add(Dionterceptor());
      final response = await dio.post(
        ApiEndpoints.getServieces,
        data: data,
        options: Options(headers: {"Tokenvalid": AppConstants.tockenValied}),
      );
      if (kDebugMode) {
        print(
            "get services accsess token is ${prefs.getString('access_token')}");
        print('Get Servieces Response status code: ${response.statusCode}');
        print('Get Servieces Response headers: ${response.headers}');
        print('Get Servieces Response body: ${response.data}');
      }
      if (response.data is Map<String, dynamic>) {
        final Map<String, dynamic> responseData = response.data;
        log(responseData.toString(), name: "response.data");

        final List<GetServiecesModel> dataList = [];
        for (var element in responseData['data'] as List) {
          dataList.add(GetServiecesModel.fromJson(element));
          AppConstants.servicIimageBaseUrl = responseData['image_base_url'];
        }
        return dataList;
      } else {
        throw Exception(
            "Unexpected response type: ${response.data.runtimeType}");
      }
    } catch (e) {
      if (kDebugMode) {
        print('Exception: $e');
      }
      throw Exception("Failed with exception: $e");
    }
  }
}
