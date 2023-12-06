import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

 part 'banner_model.freezed.dart';
   part 'banner_model.g.dart';

@freezed
class BannerModel with _$BannerModel {
  factory BannerModel({
    @JsonKey(name: '_id') String? id,
    @JsonKey(name:'title') String? title,
    @JsonKey(name: 'promo_title') String? promoTitle,
    @JsonKey(name: 'offer_title') String? offerTitle,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'image_base_url') String? banneImage,

  }) = _BannerModel;

  factory BannerModel.fromJson(Map<String, dynamic> json) =>
      _$BannerModelFromJson(json);
}
