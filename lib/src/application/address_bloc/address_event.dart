
import 'package:freezed_annotation/freezed_annotation.dart';
  part 'address_event.freezed.dart';
@freezed
class GetAddressEvent with _$GetAddressEvent {
  const factory GetAddressEvent.getAddress({
    required int limit,
    required int skip,
    required String id,
  }) = _GetAddressEvent;
}
@freezed
class AddAddressEvent with _$AddAddressEvent {
  const factory AddAddressEvent.addAddress({
  required String id,
  required String  addressType,
  required String fullName,
  required String addres,
  required String pinCode,
  required String directionToReach,
  required double locationLatitude,
  required double locationLongitude,
  }) = _AddAddressEvent;
}
@freezed
class SelectedAddressEvent with _$SelectedAddressEvent{
  const factory SelectedAddressEvent.selectedAddress({
    required String id,
  }) = _SelectedAddressEvent;
  }
