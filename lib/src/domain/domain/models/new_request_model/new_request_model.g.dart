// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewRequestModelImpl _$$NewRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NewRequestModelImpl(
      id: json['_id'] as String? ?? "",
      rowId: json['row_id'] as int? ?? 0,
      customer: json['customer'] as String? ?? "",
      customerAddress: json['customerAddress'] as String? ?? "",
      name: json['name'] as String? ?? "",
      image: json['image'] as String? ?? "",
      technician: json['technician'] as String? ?? "",
      phoneNumber: json['phone_number'] as String? ?? "",
      productSerialNumber: json['productSerialNumber'] as String? ?? "",
      isRecurringService: json['isRecurringService'] as bool? ?? false,
      serviceDateSlot: json['serviceDateSlot'] as String? ?? "",
      serviceDateTimeSlot: json['serviceDateTimeSlot'] as String? ?? "",
      note: json['note'] as String? ?? "",
      servicerequestimagebaseurl:
          json['service_request_image_base_url'] as String? ?? "",
      productimagebaseurl: json['product_image_base_url'] as String? ?? "",
      serviceimagebaseurl: json['service_image_base_url'] as String? ?? '',
      status: json['status'] as String? ?? "",
      createdAt: json['createdAt'] as String? ?? "",
      updatedAt: json['updatedAt'] as String? ?? "",
    );

Map<String, dynamic> _$$NewRequestModelImplToJson(
        _$NewRequestModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'row_id': instance.rowId,
      'customer': instance.customer,
      'customerAddress': instance.customerAddress,
      'name': instance.name,
      'image': instance.image,
      'technician': instance.technician,
      'phone_number': instance.phoneNumber,
      'productSerialNumber': instance.productSerialNumber,
      'isRecurringService': instance.isRecurringService,
      'serviceDateSlot': instance.serviceDateSlot,
      'serviceDateTimeSlot': instance.serviceDateTimeSlot,
      'note': instance.note,
      'service_request_image_base_url': instance.servicerequestimagebaseurl,
      'product_image_base_url': instance.productimagebaseurl,
      'service_image_base_url': instance.serviceimagebaseurl,
      'status': instance.status,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
