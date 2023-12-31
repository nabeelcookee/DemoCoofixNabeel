
import 'package:coofix/src/domain/domain/models/get_address_model/get_address_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
  part 'address_state.freezed.dart';
@freezed
abstract class AddressState with _$AddressState {
  factory AddressState({
    required bool status,
    required String errorMessage,
    required List<AddressModel> address,
    required String id,
  }) = _AddressState;

  factory AddressState.initial() => AddressState(
        status: false,
        errorMessage: "",
        address: [],
        id: ""
      );
}
