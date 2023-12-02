import 'package:coofix/src/domain/domain/models/get_address_model/get_address_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:coofix/src/application/address_bloc/address_bloc.dart';
part 'address_state.freezed.dart';
part  'address_bloc.dart';
 
@freezed
abstract class AddressState with _$AddressState {
  factory AddressState({
    required bool status,
    required String errorMessage,
    required List<AddressModel> address,
  }) = _AddressState;

  factory AddressState.initial() => AddressState(
        status: false,
        errorMessage: "",
        address: [],
      );
}
