// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BannerModelImpl _$$BannerModelImplFromJson(Map<String, dynamic> json) =>
    _$BannerModelImpl(
      id: json['_id'] as String?,
      title: json['title'] as String?,
      promoTitle: json['promo_title'] as String?,
      offerTitle: json['offer_title'] as String?,
      image: json['image'] as String?,
      banneImage: json['image_base_url'] as String?,
    );

Map<String, dynamic> _$$BannerModelImplToJson(_$BannerModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'promo_title': instance.promoTitle,
      'offer_title': instance.offerTitle,
      'image': instance.image,
      'image_base_url': instance.banneImage,
    };
