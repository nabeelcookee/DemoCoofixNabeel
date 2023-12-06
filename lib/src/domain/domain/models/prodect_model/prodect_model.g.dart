// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prodect_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductPurchaseModelImpl _$$ProductPurchaseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductPurchaseModelImpl(
      id: json['_id'] as String?,
      rowId: json['row_id'] as int?,
      customer: json['customer'] as String?,
      productSerialNumber: json['productSerialNumber'] as String?,
      productPrice: json['productPrice'] as String?,
      purchaseDate: json['purchaseDate'] as String?,
      isWarrantyIncluded: json['isWarrantyIncluded'] as bool?,
      warrentyExpiry: json['warrentyExpiry'] as String?,
      isPeriodicServiceIncluded: json['isPeriodicServiceIncluded'] as bool?,
      periodicServiceCount: json['periodicServiceCount'] as int?,
      lifeTimeService: json['lifeTimeService'] as bool?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      year: json['name'] as String?,
      description: json['description'] as String?,
      price: json['price'] as String?,
      image: json['image'] as String?,
      active: json['active'] as bool?,
      deleted: json['deleted'] as bool?,
      title: json['title'] as String?,
      periodinmonths: json['period_in_months'] as int?,
    );

Map<String, dynamic> _$$ProductPurchaseModelImplToJson(
        _$ProductPurchaseModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'row_id': instance.rowId,
      'customer': instance.customer,
      'productSerialNumber': instance.productSerialNumber,
      'productPrice': instance.productPrice,
      'purchaseDate': instance.purchaseDate,
      'isWarrantyIncluded': instance.isWarrantyIncluded,
      'warrentyExpiry': instance.warrentyExpiry,
      'isPeriodicServiceIncluded': instance.isPeriodicServiceIncluded,
      'periodicServiceCount': instance.periodicServiceCount,
      'lifeTimeService': instance.lifeTimeService,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'name': instance.year,
      'description': instance.description,
      'price': instance.price,
      'image': instance.image,
      'active': instance.active,
      'deleted': instance.deleted,
      'title': instance.title,
      'period_in_months': instance.periodinmonths,
    };
