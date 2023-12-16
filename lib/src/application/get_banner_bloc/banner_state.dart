part of 'banner_bloc.dart';

/// TODO : Review changes to do
///
/// - Also dont use abstract class for states. Just use normal class
///

@freezed
 class BannerState with _$BannerState {
  factory BannerState({
    required Status bannerStatus,
    required String message,
    required List<BannerModel> bannerList,
  }) = _BannerState;

  factory BannerState.initial() => BannerState(bannerStatus: Status.initial(), message: "", bannerList: []);
}
