import 'dart:developer';
import 'package:coofix/app/constants/api_constants.dart';
import 'package:coofix/app/constants/storage_constants.dart';
import 'package:coofix/app/interceptar/dio_interceptor.dart';
import 'package:coofix/app/services/api_services/api_service.dart';
import 'package:coofix/app/services/local_storage_service.dart';
import 'package:coofix/src/domain/domain/models/app_user_model/app_user_model.dart';
import 'package:coofix/src/domain/domain/repositories/i_auth_repository.dart';
import 'package:coofix/src/presentation/core/constants/constants.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: IAuthRepository)
class AuthRepository implements IAuthRepository {
  // Add api service class object and run build runner
  final Api api;
  AuthRepository({required this.api});

  // OLD CODE FOR SEND OTP -----
  //
  // Future<AppUser> sendOtp(String phoneNumber) async {
  //   try {
  //     final Map<String, dynamic> data = {
  //       'phone_number': phoneNumber,
  //     };
  //     var dio = Dio();
  //     dio.interceptors.add(Dionterceptor());
  //     final response = await dio.post(
  //       ApiEndpoints.checkPhone,
  //       options: Options(
  //         headers: {"Tokenvalid": AppConstants.tockenValied},
  //       ),
  //       data: data,
  //     );
  //     print('Response status code: ${response.statusCode}');
  //     print('Response headers: ${response.headers}');
  //     print('Response body: ${response.data}');

  //     if (response.statusCode! >= 200 && response.statusCode! < 300) {
  //       Map<String, dynamic> responseJson = response.data;
  //       AppUser data = AppUser.fromJson(responseJson);
  //       print('Response body: $data');
  //       return data;
  //     } else {
  //       throw Exception('Failed to send OTP: ${response.statusCode}');
  //     }
  //   } catch (e) {
  //     throw Exception('Failed to send OTP: $e');
  //   }
  // }

  //
  //
  //
  //
  // UPDATED NEW METHOD CODE FOR SEND OTP -------
  //
  @override
  Future<AppUser> sendOtp(String phoneNumber) async {
    try {
      //
      // This is map type request data of the api
      final Map<String, dynamic> requestData = {
        'phone_number': phoneNumber,
      };

      // [api] is the service [api.general] is api profile type [post] is the method
      // for profile apis [api.profile] can be used.
      // for get mthod apis [api.general.get / api.profile.get] can be used
      var response =
          await api.general.post(ApiEndpoints.checkPhone, data: requestData);

      // Model conversion of the json reponse
      AppUser user = AppUser.fromJson(response.data);

      // Returning the converted model
      return user;
    } catch (e) {
      // rethrowing the catched excpetion
      rethrow;
    }
  }

  //
  //
  //
  //
  //
  //

  // void saveAccessTokenToPrefs(String accessToken) async {
  //   try {
  //     SharedPreferences prefs = await SharedPreferences.getInstance();
  //     prefs.setString('access_token', accessToken);
  //     print('Access token saved: $accessToken');
  //   } catch (e) {
  //     print('Error accessing SharedPreferences: $e');
  //   }
  // }

  @override
  Future<AppUser> checkAuth() async {
    try {
      final response = await api.profile.get(
        ApiEndpoints.checkAuth,
      );

      final AppUser user = AppUser.fromJson(response.data);

      return user;
    } catch (error) {
      rethrow;
    }
  }

  @override
  Future<AppUser> verifyOtp(
      {required String otp, required String userId}) async {
    try {
      final Map<String, dynamic> requestData = {
        'otp': otp,
        'user_id': userId,
      };
      final response =
          await api.general.post(ApiEndpoints.verifyOtpApi, data: requestData);
      final userData = AppUser.fromJson(response.data);
      LocalStorage.setString(StorageKey.accessToken, userData.accessToken);

      return userData;
    } catch (e) {
      rethrow;
    }
  }
}
