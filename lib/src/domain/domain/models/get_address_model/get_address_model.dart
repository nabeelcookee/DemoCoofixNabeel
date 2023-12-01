import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_address_model.freezed.dart';
part 'get_address_model.g.dart';

@freezed
class AddressModel with _$AddressModel {
  factory AddressModel({
    @JsonKey(name: '_id') required String id,
    @JsonKey(name: 'row_id') required int rowId,
    @JsonKey(name: 'customer') required String customer,
    @JsonKey(name: 'addressType') required String addressType,
    @JsonKey(name: 'fullName') required String fullName,
    @JsonKey(name: 'address') required String address,
    @JsonKey(name: 'pinCode') required String pinCode,
    @JsonKey(name: 'directionToReach') required String directionToReach,
    required LocationCoordinates locationCoordinates,
    @JsonKey(name: 'selected') required bool selected,
    @JsonKey(name: 'createdAt') required String createdAt,
    @JsonKey(name: 'updatedAt') required String updatedAt,
  }) = _AddressModel;

  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);
}

@freezed
class LocationCoordinates with _$LocationCoordinates {
  factory LocationCoordinates({
    @JsonKey(name: 'type') required String type,
    required List<double> coordinates,
  }) = _LocationCoordinates;

  factory LocationCoordinates.fromJson(Map<String, dynamic> json) =>
      _$LocationCoordinatesFromJson(json);
}
