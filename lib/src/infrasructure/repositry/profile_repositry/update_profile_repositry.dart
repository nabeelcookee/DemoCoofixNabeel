import 'package:coofix/app/interceptar/dio_interceptor.dart';
import 'package:coofix/app/services/apiservices/api.dart';
import 'package:coofix/src/domain/domain/models/profile_model/profile_model.dart';
import 'package:coofix/src/domain/domain/repositories/i_profile_repositry.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: IgetProfileRepositry)
class UpdateProfileRepositry implements IgetProfileRepositry {
  @override
  Future<ProfileModel> upadeProfile({required String name}) async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final Map<String, dynamic> data = {'name': name};

      var dio = Dio();
      dio.interceptors.add(Dionterceptor());

      final response = await dio.post(
        ApiEndpoints.updateProfile,
        data: data,
        options: Options(
          headers: {
            "Authorization": "Bearer ${prefs.getString('access_token')}"
          },
        ),
      );

      if (kDebugMode) {
        print(
            "get profile accsess token is ${prefs.getString('access_token')}");
        print('Get profile Response status code: ${response.statusCode}');
        print('Get profile Response headers: ${response.headers}');
        print('Get profile Response body: ${response.data}');
      }

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = response.data;

        final String id = responseData['row']['_id'] ?? '';
        final String rowid = responseData['row']['row_id'] ?? '';
        final String name = responseData['row']['name'] ?? '';
        final String phoneNumber = responseData['row']['phone_number'] ?? '';
        final String image = responseData['row']['image'] ?? '';
        final String customerImage =
            responseData['customer_image_base_url'] ?? '';

        final ProfileModel profileData = ProfileModel(
          id: id,
          rowid: rowid,
          name: name,
          phoneNumber: phoneNumber,
          image: image,
          customerImage: customerImage,
        );

        print("profileData: $profileData");
        return profileData;
      } else {
        throw Exception('Failed to check authentication..');
      }
    } catch (e) {
      print('Exception in updateProfile: $e');
      rethrow; // Rethrow the caught exception
    }
  }
}
