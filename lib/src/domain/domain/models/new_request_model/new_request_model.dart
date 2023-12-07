import 'package:json_annotation/src/json_key.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
 part 'new_request_model.freezed.dart';
   part 'new_request_model.g.dart';
@freezed
class NewRequestModel with _$NewRequestModel{
  factory NewRequestModel({
     @JsonKey(name: '_id')@Default("") String id,
    @JsonKey(name: 'row_id')@Default(0) int rowId,
    @JsonKey(name: 'customer')@Default("") String customer,
    @JsonKey(name: 'customerAddress')@Default("") String customerAddress,
    @JsonKey(name: 'name')@Default("") String name,
    @JsonKey(name: 'image')@Default("") String image,
    @JsonKey(name: 'technician')@Default("") String? technician,
    @JsonKey(name: 'phone_number')@Default("") String phoneNumber,
    @JsonKey(name: 'productSerialNumber')@Default("") String productSerialNumber,
    @JsonKey(name: 'isRecurringService')@Default(false) bool isRecurringService,
    @JsonKey(name: 'serviceDateSlot')@Default("") String? serviceDateSlot,
    @JsonKey(name: 'serviceDateTimeSlot')@Default("") String serviceDateTimeSlot,
    @JsonKey(name: 'note') @Default("")String note,
    @JsonKey(name: 'service_request_image_base_url')@Default("") String servicerequestimagebaseurl,
    @JsonKey(name: 'product_image_base_url')@Default("") String productimagebaseurl,
    @JsonKey(name: 'service_image_base_url')@Default('') String serviceimagebaseurl,
    @JsonKey(name: 'status')@Default("") String status,
    @JsonKey(name: 'createdAt')@Default("") String createdAt,
    @JsonKey(name: 'updatedAt') @Default("")String updatedAt,
  

  }) =_NewRequestModel;
   factory NewRequestModel.fromJson(Map<String, dynamic> json)=>_$NewRequestModelFromJson(json);
  
}