import 'package:coofix/src/domain/domain/models/banner_model/banner_model.dart';
 abstract class  IGetBannerRepository {
  Future<List<BannerModel>>getBanner();
}
