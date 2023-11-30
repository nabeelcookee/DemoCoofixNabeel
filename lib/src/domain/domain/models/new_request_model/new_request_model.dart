import 'package:json_annotation/src/json_key.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
 part 'new_request_model.freezed.dart';
  part 'new_request_model.g.dart';

@freezed
class NewRequestModel with _$NewRequestModel{
  factory NewRequestModel({
    @JsonKey(name: 'status')@Default(false)bool status,
    @JsonKey(name: 'message')@Default('')String message,
    @JsonKey(name: 'service_request_image_base_url')@Default('') String requestImageBaseUrl,
    @JsonKey(name: 'product_image_base_url')@Default('')String productImageBaseUrl,
    @JsonKey(name: 'service_image_base_url')@Default('')String serviceImageBaseUrl,

  }) =_NewRequestModel;
   factory NewRequestModel.fromJson(Map<String, dynamic> json)=>_$NewRequestModelFromJson(json);
  
}