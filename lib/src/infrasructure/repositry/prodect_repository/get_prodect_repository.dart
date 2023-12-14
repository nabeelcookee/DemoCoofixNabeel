import 'package:coofix/app/constants/api_constants.dart';
import 'package:coofix/app/interceptar/dio_interceptor.dart';
import 'package:coofix/src/domain/domain/models/prodect_model/prodect_model.dart';
import 'package:coofix/src/domain/domain/repositories/i_prodect_repository.dart';
import 'package:coofix/src/presentation/core/constants/constants.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// TODO : Review changes to do
/// 
/// - Make api calling and its related functionalities such as interception, error handling as a seperate service class
/// - Add proper status code handling method. Try to use the features of DioIntercepter for it.
/// - User debugPrint or log instead of print statement.
/// - Craete seperate api service profiles for general and profile apis.
/// - Handle Heeders with tokens for different api profiles commonly 
/// - Find a common method for api calls to reduce reduntant writing of same code in every repositories.
/// - Remove unused log, print statements

@LazySingleton(as: IProdectSales)
class GetProdectRepositry implements IProdectSales {
  @override
  Future<List<ProductPurchaseModel>> getProdects(
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
        ApiEndpoints.getProdects,
        data: data,
        options: Options(
          headers: {
            "Authorization": "Bearer ${prefs.getString('access_token')}",
          },
        ),  
      );
      if (kDebugMode) {
        print(
            "get prodect accsess token is ${prefs.getString('access_token')}");
        print('Get prodect Response status code: ${response.statusCode}');
        print('Get prodect Response headers: ${response.headers}');
        print('Get prodect Response body: ${response.data}');
      }
      if (response.data is Map<String, dynamic>) {
        final Map<String, dynamic> responseData = response.data;
        print("prodect list data :$responseData");

        final List<ProductPurchaseModel> prodectList = [];
        for (var element in responseData['data'] as List) {
          prodectList.add(ProductPurchaseModel.fromJson(element));
          AppConstants.prodectImageBaseUrl = responseData['image_base_url'];
        }
        print("prodect list is :$prodectList");
        return prodectList;
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
