import 'dart:developer';
import 'package:coofix/app/constants/api_constants.dart';
import 'package:coofix/app/interceptar/dio_interceptor.dart';
import 'package:coofix/src/domain/domain/models/banner_model/banner_model.dart';
import 'package:coofix/src/domain/domain/repositories/i_get_banner_repository.dart';
import 'package:coofix/src/presentation/core/constants/constants.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
@LazySingleton(as: IGetBannerRepositry)

/// TODO : Review changes to do
/// 
/// - Make api calling and its related functionalities such as interception, error handling as a seperate service class
/// - Add proper status code handling method. Try to use the features of DioIntercepter for it.
/// - User debugPrint or log instead of print statement.
/// - Craete seperate api service profiles for general and profile apis.
/// - Handle Heeders with tokens for different api profiles commonly 
/// - Find a common method for api calls to reduce reduntant writing of same code in every repositories.
/// - Remove unused log, print statements

class GetBannerRepositry implements IGetBannerRepositry {
  @override
  Future<List<BannerModel>> getBanner() async {
    try {
      var dio = Dio();
      dio.interceptors.add(Dionterceptor());
      final response = await dio.get(
        ApiEndpoints.getBanner,
        options: Options(
          headers: {"Tokenvalid": AppConstants.tockenValied},
        ),
      );
      print("response .data from banne ${response.data}");
      if (response.data is Map<String, dynamic>) {
        final Map<String, dynamic> responseData = response.data;
        log(responseData.toString(), name: "response.data");

        final List<BannerModel> getBannerList = [];
        for (var element in responseData['data'] as List) {
          getBannerList.add(BannerModel.fromJson(element));
          AppConstants.bannerImageBaseUrl = responseData['image_base_url'];
        }
        return getBannerList;
      } else {
        throw Exception(
            "Unexpected response type: ${response.data.runtimeType}");
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
