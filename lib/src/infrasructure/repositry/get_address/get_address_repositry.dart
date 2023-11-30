import 'dart:developer';
import 'package:coofix/app/interceptar/dio_interceptor.dart';
import 'package:coofix/app/services/apiservices/api.dart';
import 'package:coofix/src/domain/domain/models/get_address_model/get_address_model.dart';
import 'package:coofix/src/domain/domain/repositories/i_address_repositry.dart';
import 'package:coofix/src/presentation/core/constants/constants.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: IGetAddress)
class GetAddressRepositry implements IGetAddress {
  @override
  Future<List<AddressModel>> getServices(
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
      final response = await dio.post(ApiEndpoints.getAdress,
          data: data,
          options: Options(headers: {  "Authorization": "Bearer ${prefs.getString('access_token')}"}));
           if (kDebugMode) {
      print("get services accsess token is ${prefs.getString('access_token')}");
      print('Get Servieces Response status code: ${response.statusCode}');
      print('Get Servieces Response headers: ${response.headers}');
      print('Get Servieces Response body: ${response.data}');
    }
       if (response.data is Map<String, dynamic>) {
  final Map<String, dynamic> responseData = response.data;
  log(responseData.toString(), name: "response.data");

  // final List<AddressModel> DataList = [];
  // final List coordinatesList=[];
  // for (var element in responseData['data'] as List) {
  //     DataList.add(AddressModel.fromJson(element));
  //   coordinatesList.add(responseData['coordinates'] );
  //  AppConstants.coordinatesList=coordinatesList;
  // }
  // log(DataList.toString(),name: "data list for adress");
  // return DataList;
} else {
  throw Exception("Unexpected response type: ${response.data.runtimeType}");
}

    } catch (e) {
      print(e);
    }
    throw Exception("...................");
  }
}
