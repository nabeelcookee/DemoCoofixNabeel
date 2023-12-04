  

  part of 'address_bloc.dart';

@freezed
class AddressEvent with _$AddressEvent {
  const factory AddressEvent.getAddress({
    required int limit,
    required int skip,
    required String id,
  }) = _GetAddressEvent;

  const factory AddressEvent.addAddress({
    required String id,
    required String addressType,
    required String fullName,
    required String address,
    required String pinCode,
    required String directionToReach,
    required double locationLatitude,
    required double locationLongitude,
  }) = _AddAddressEvent;

  const factory AddressEvent.selectedAddress({
    required String id,
  }) = _SelectedAddressEvent;
}
