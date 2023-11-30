// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressModelImpl _$$AddressModelImplFromJson(Map<String, dynamic> json) =>
    _$AddressModelImpl(
      id: json['_id'] as String,
      rowId: json['row_id'] as int,
      customer: json['customer'] as String,
      addressType: json['addressType'] as String,
      fullName: json['fullName'] as String,
      address: json['address'] as String,
      pinCode: json['pinCode'] as String,
      directionToReach: json['directionToReach'] as String,
      locationCoordinates: LocationCoordinates.fromJson(
          json['locationCoordinates'] as Map<String, dynamic>),
      selected: json['selected'] as bool,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$$AddressModelImplToJson(_$AddressModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'row_id': instance.rowId,
      'customer': instance.customer,
      'addressType': instance.addressType,
      'fullName': instance.fullName,
      'address': instance.address,
      'pinCode': instance.pinCode,
      'directionToReach': instance.directionToReach,
      'locationCoordinates': instance.locationCoordinates,
      'selected': instance.selected,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$LocationCoordinatesImpl _$$LocationCoordinatesImplFromJson(
        Map<String, dynamic> json) =>
    _$LocationCoordinatesImpl(
      type: json['type'] as String,
      coordinates: (json['coordinates'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$$LocationCoordinatesImplToJson(
        _$LocationCoordinatesImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'coordinates': instance.coordinates,
    };
