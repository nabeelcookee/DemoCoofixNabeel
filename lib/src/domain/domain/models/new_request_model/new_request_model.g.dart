// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewRequestModelImpl _$$NewRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NewRequestModelImpl(
      status: json['status'] as bool? ?? false,
      message: json['message'] as String? ?? '',
      requestImageBaseUrl:
          json['service_request_image_base_url'] as String? ?? '',
      productImageBaseUrl: json['product_image_base_url'] as String? ?? '',
      serviceImageBaseUrl: json['service_image_base_url'] as String? ?? '',
    );

Map<String, dynamic> _$$NewRequestModelImplToJson(
        _$NewRequestModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'service_request_image_base_url': instance.requestImageBaseUrl,
      'product_image_base_url': instance.productImageBaseUrl,
      'service_image_base_url': instance.serviceImageBaseUrl,
    };
