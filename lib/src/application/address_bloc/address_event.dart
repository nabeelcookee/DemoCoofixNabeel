 import 'package:freezed_annotation/freezed_annotation.dart';
 part 'address_event.freezed.dart';

@freezed
class AddressEvent with _$AddressEvent {
  const factory AddressEvent.getAddress({
    required String id,
    required int skip,
    required int limit,
  }) = _GetAddressEvent;

  const factory AddressEvent.addAddress({
    required String id,
    required String addressType,
    required String fullName,
    required String addres,
    required String pinCode,
    required String directionToReach,
    required double locationLatitude,
    required double locationLongitude,
  }) = _AddAddressEvent;

  const factory AddressEvent.selectedAddress({
    required String id,
  }) = _SelectedAddressEvent;
}
