import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
 part 'prodect_model.freezed.dart';
part 'prodect_model.g.dart';
// Prodect listing Model class
@freezed
class ProductPurchaseModel with _$ProductPurchaseModel {
  factory ProductPurchaseModel({
    @JsonKey(name: '_id') String? id,
    @JsonKey(name: 'row_id') int? rowId,
    @JsonKey(name: 'customer') String? customer,
    @JsonKey(name: 'productSerialNumber') String? productSerialNumber,
    @JsonKey(name: 'productPrice') String? productPrice,
    @JsonKey(name: 'purchaseDate') String? purchaseDate,
    @JsonKey(name: 'isWarrantyIncluded') bool? isWarrantyIncluded,
    @JsonKey(name: 'warrentyExpiry') String? warrentyExpiry,
    @JsonKey(name: 'isPeriodicServiceIncluded') bool? isPeriodicServiceIncluded,
    @JsonKey(name: 'periodicServiceCount') int? periodicServiceCount,
    @JsonKey(name: 'lifeTimeService') bool? lifeTimeService,
    @JsonKey(name: 'createdAt') String? createdAt,
    @JsonKey(name: 'updatedAt') String? updatedAt,
    @JsonKey(name:'name' )String? year,
    @JsonKey(name:'description' )String? description,
     @JsonKey(name:'price' )String? price,
     @JsonKey(name:'image' )String? image,
     @JsonKey(name:'active' )bool? active,
     @JsonKey(name:'deleted' )bool? deleted,
     @JsonKey(name:'title' )String? title,
     @JsonKey(name:'period_in_months' )int? periodinmonths,
    
  }) = _ProductPurchaseModel;

  factory ProductPurchaseModel.fromJson(Map<String, dynamic> json) =>
      _$ProductPurchaseModelFromJson(json);
}
