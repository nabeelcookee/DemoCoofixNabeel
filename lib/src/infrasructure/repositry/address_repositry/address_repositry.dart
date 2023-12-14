import 'package:coofix/app/constants/api_constants.dart';
import 'package:coofix/app/interceptar/dio_interceptor.dart';
import 'package:coofix/src/domain/domain/models/get_address_model/get_address_model.dart';
import 'package:coofix/src/domain/domain/repositories/i_address_repositry.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: IGetAddress)
class GetAddressRepository implements IGetAddress {

  @override
  Future<List<AddressModel>> getAddress(
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
        ApiEndpoints.getAdress,
        data: data,
        options: Options(
          headers: {
            "Authorization": "Bearer ${prefs.getString('access_token') ?? ''}",
          },
        ),
      );
      if (kDebugMode) {
        print("Get Address access token is ${prefs.getString('access_token')}");
        print('Get Address Response status code: ${response.statusCode}');
        print('Get Address Response headers: ${response.headers}');
        print('Get Address Response body: ${response.data}');
      }
      if (response.statusCode == 200) {
        if (response.data is List) {
          return response.data
              .map<AddressModel>((item) => AddressModel.fromJson(item))
              .toList();
        } else if (response.data is Map<String, dynamic> &&
            response.data.containsKey('data') &&
            response.data['data'] is List) {
          return response.data['data']
              .map<AddressModel>((item) => AddressModel.fromJson(item))
              .toList();
        } else {
          throw Exception("Unexpected response structure: ${response.data}");
        }
      } else {
        throw Exception(
            "Failed to get services. Status code: ${response.statusCode}");
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error in getaddress: $e');
      }
      throw Exception("Failed to get services. $e");
    }
  }

  @override
  Future<AddressModel> selectedAddress({required String id}) async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final Map<String, dynamic> data = {
        'id': id,
      };

      var dio = Dio();
      dio.interceptors.add(Dionterceptor());

      final response = await dio.post(
        ApiEndpoints.selectedAddress,
        data: data,
        options: Options(
          headers: {
            "Authorization": "Bearer ${prefs.getString('access_token') ?? ''}",
          },
        ),
      );
      if (kDebugMode) {
        print("selected Address access token is ${prefs.getString('access_token')}");
        print('selected Address Response status code: ${response.statusCode}');
        print('selected Address Response headers: ${response.headers}');
        print('selected Address Response body: ${response.data}');
      }
      if (response.statusCode == 200) {
        final dynamic responseData = response.data;
        final AddressModel selectedData = AddressModel.fromJson(responseData);
        return selectedData;
      } else {
        throw Exception(
            "Failed to fetch address. Status code: ${response.statusCode}");
      }
    } catch (e) {
      print(e);
      throw Exception("Failed to fetch address. $e");
    }
  }
  
  @override
  Future<AddressModel> addAddres(
      {required String id,
      required String addressType,
      required String fullName,
      required String addres,
      required String pinCode,
      required String directionToReach,
      required double locationLatitude,
      required double locationLongitude}) async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();

      final Map<String, dynamic> data = {
        "id": id,
        "addressType": addressType,
        "fullName": fullName,
        "address": addres,
        "pinCode": pinCode,
        "directionToReach": directionToReach,
        "locationLatitude": locationLatitude,
        "locationLongitude": locationLongitude,
      };

      var dio = Dio();
      dio.interceptors.add(Dionterceptor());

      final response = await dio.post(
        ApiEndpoints.addAddres,
        data: data,
        options: Options(headers: {
          "Authorization": "Bearer ${prefs.getString('access_token') ?? ''}",
        }),
      );
      if (kDebugMode) {
        print("add Address access token is ${prefs.getString('access_token')}");
        print('add Address Response status code: ${response.statusCode}');
        print('add Address Response headers: ${response.headers}');
        print('add Address Response body: ${response.data}');
      }

      if (response.statusCode == 200) {
        final AddressModel deleteadress = AddressModel.fromJson(response.data);
        if (kDebugMode) {
          print("Address added successfully");
        }
        return deleteadress;
      } else {
        throw Exception(
            "Failed to add address. Status code: ${response.statusCode}");
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      throw Exception("Failed to add address. $e");
    }
  }
  


  @override
  
  Future<AddressModel> deletedAddress({required String id}) async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final Map<String, dynamic> data = {
        "_id": id,
      };
      var dio = Dio();
      dio.interceptors.add(Dionterceptor());

      final response = await dio.post(
        ApiEndpoints.deleteAddress,
        data: data,
        options: Options(headers: {
          "Authorization": "Bearer ${prefs.getString('access_token') ?? ''}",
        }),
      );
      if (kDebugMode) {
        print(
            "delete Address access token is ${prefs.getString('access_token')}");
        print('delete Address Response status code: ${response.statusCode}');
        print('delete Address Response headers: ${response.headers}');
        print('delete Address Response body: ${response.data}');
      }

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = response.data;
        final AddressModel addressModel = AddressModel.fromJson(responseData);
        if (kDebugMode) {
          print("Address delete successfully");
        }

        return addressModel;
      } else {
        throw Exception(
            "Failed to add address. Status code: ${response.statusCode}");
      }
    } catch (e) {
      throw Exception(e);
    }
  }

}

