import 'dart:developer';
import 'package:coofix/app/interceptar/dio_interceptor.dart';
import 'package:coofix/app/services/apiservices/api.dart';
import 'package:coofix/src/domain/domain/models/banner_model/banner_model.dart';
import 'package:coofix/src/domain/domain/repositories/i_get_banner_repository.dart';
import 'package:coofix/src/presentation/core/constants/constants.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
@LazySingleton(as: IGetBannerRepositry)
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
