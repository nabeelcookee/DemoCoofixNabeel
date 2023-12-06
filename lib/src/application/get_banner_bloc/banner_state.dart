part of 'banner_bloc.dart';

@freezed
abstract class BannerState with _$BannerState {
   factory BannerState({
    required bool status,
    required  String message,
    required List<BannerModel> bannerList,
  })=_BannerState;

  factory BannerState.initial()=>BannerState(status: false, message: "", bannerList: []);
}
