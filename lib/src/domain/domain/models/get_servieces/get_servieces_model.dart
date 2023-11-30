import 'package:freezed_annotation/freezed_annotation.dart';
 part 'get_servieces_model.freezed.dart';
 part 'get_servieces_model.g.dart';
@freezed
class GetServiecesModel with _$GetServiecesModel {
  factory GetServiecesModel({
    @JsonKey(name: '_id') @Default('') String id,
    @JsonKey(name: 'row_id')@Default(0) int rowId,
    @JsonKey(name: 'name')@Default('') String name,
    @JsonKey(name: 'description')@Default('') String description,
    @JsonKey(name: 'short_description')@Default('') String shortDescription,
    @JsonKey(name: 'availability')@Default('') String availability,
    @JsonKey(name: 'duration')@Default('') String duration,
    @JsonKey(name: 'minimum_price')@Default(0) int minimumPrice,
    @JsonKey(name: 'image')@Default('') String image,
    @JsonKey(name: 'image_cover')@Default('') String imageCover,
    @JsonKey(name: 'active')@Default(false) bool active,
    @JsonKey(name: 'deleted')@Default(false) bool deleted,
    @JsonKey(name: 'createdAt')@Default('') String createdAt,
    @JsonKey(name: 'updatedAt')@Default('') String updatedAt,
  }) = _GetServiecesModel;
  
  factory GetServiecesModel.fromJson(Map<String, dynamic> json) =>
      _$GetServiecesModelFromJson(json);
}

