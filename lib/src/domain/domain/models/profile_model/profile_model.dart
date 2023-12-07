import 'package:freezed_annotation/freezed_annotation.dart';
 part 'profile_model.freezed.dart';
part 'profile_model.g.dart';
@freezed
class ProfileModel with _$ProfileModel {
  factory ProfileModel({
    @JsonKey(name: '_id')@Default("") String  id,
    @JsonKey(name:'row_id')@Default("") String rowid,
    @JsonKey(name: 'nmae')@Default("") String name,
    @JsonKey(name: 'phone_number')@Default("") String phoneNumber,
    @JsonKey(name: 'image')@Default("") String image,
    @JsonKey(name: 'customer_image_base_url')@Default("") String customerImage,

  }) = _ProfileModel;

  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);
}