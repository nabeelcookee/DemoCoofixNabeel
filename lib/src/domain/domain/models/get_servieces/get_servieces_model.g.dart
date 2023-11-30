// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_servieces_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetServiecesModelImpl _$$GetServiecesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GetServiecesModelImpl(
      id: json['_id'] as String? ?? '',
      rowId: json['row_id'] as int? ?? 0,
      name: json['name'] as String? ?? '',
      description: json['description'] as String? ?? '',
      shortDescription: json['short_description'] as String? ?? '',
      availability: json['availability'] as String? ?? '',
      duration: json['duration'] as String? ?? '',
      minimumPrice: json['minimum_price'] as int? ?? 0,
      image: json['image'] as String? ?? '',
      imageCover: json['image_cover'] as String? ?? '',
      active: json['active'] as bool? ?? false,
      deleted: json['deleted'] as bool? ?? false,
      createdAt: json['createdAt'] as String? ?? '',
      updatedAt: json['updatedAt'] as String? ?? '',
    );

Map<String, dynamic> _$$GetServiecesModelImplToJson(
        _$GetServiecesModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'row_id': instance.rowId,
      'name': instance.name,
      'description': instance.description,
      'short_description': instance.shortDescription,
      'availability': instance.availability,
      'duration': instance.duration,
      'minimum_price': instance.minimumPrice,
      'image': instance.image,
      'image_cover': instance.imageCover,
      'active': instance.active,
      'deleted': instance.deleted,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
