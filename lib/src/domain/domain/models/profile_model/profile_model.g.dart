// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileModelImpl _$$ProfileModelImplFromJson(Map<String, dynamic> json) =>
    _$ProfileModelImpl(
      id: json['_id'] as String? ?? "",
      rowid: json['row_id'] as String? ?? "",
      name: json['nmae'] as String? ?? "",
      phoneNumber: json['phone_number'] as String? ?? "",
      image: json['image'] as String? ?? "",
      customerImage: json['customer_image_base_url'] as String? ?? "",
    );

Map<String, dynamic> _$$ProfileModelImplToJson(_$ProfileModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'row_id': instance.rowid,
      'nmae': instance.name,
      'phone_number': instance.phoneNumber,
      'image': instance.image,
      'customer_image_base_url': instance.customerImage,
    };
