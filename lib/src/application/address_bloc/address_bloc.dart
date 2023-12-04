import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:coofix/src/application/address_bloc/address_state.dart';
import 'package:coofix/src/domain/domain/models/get_address_model/get_address_model.dart';
import 'package:coofix/src/domain/domain/repositories/i_address_repositry.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
part 'address_event.dart';
part 'address_bloc.freezed.dart';

@injectable
class AddressBloc extends Bloc<AddressEvent, AddressState> {
  final IGetAddress iGetAddress;

  AddressBloc(this.iGetAddress) : super(AddressState.initial()) {
    on<_GetAddressEvent>(_getAddress);
    on<_AddAddressEvent>(_addAddress);
    on<_SelectedAddressEvent>(_selectedAddress);
  }
  FutureOr<void> _getAddress(
      _GetAddressEvent event, Emitter<AddressState> emit) async {
    try {
      emit(state.copyWith());
      final response = await iGetAddress.getAddress(
          id: event.id, skip: event.skip, limit: event.limit);
      emit(state.copyWith(
        address: response,
      ));
    } catch (e) {
      if (kDebugMode) {
        print('Error in getaddress: $e');
      }
      emit(
        state.copyWith(
          errorMessage: "${e}",
        ),
      );
    }
  }

  FutureOr<void> _addAddress(
      _AddAddressEvent event, Emitter<AddressState> emit) async {
    try {
      emit(state.copyWith(status: false));
      final response = await iGetAddress.addAddres(
        id: event.id,
        addres: event.address,
        addressType: event.addressType,
        directionToReach: event.directionToReach,
        fullName: event.fullName,
        locationLatitude: event.locationLatitude,
        locationLongitude: event.locationLongitude,
        pinCode: event.pinCode,
      );

      final List<AddressModel> addressList = [response];
      emit(state.copyWith(
        status: true,
        address: addressList,
      ));
    } catch (e) {
      if (kDebugMode) {
        print('Error in getaddress: $e');
      }
      emit(
        state.copyWith(errorMessage: "$e", status: false),
      );
    }
  }

  FutureOr<void> _selectedAddress(
      _SelectedAddressEvent event, Emitter<AddressState> emit) async {
    try {
      emit(state.copyWith(status: false));
      final response = await iGetAddress.selectedAddress(id: event.id);

      final List<AddressModel> addressList = [response];
      emit(state.copyWith(
        status: true,
        address: addressList,
      ));
    } catch (e) {
      if (kDebugMode) {
        print('Error in getaddress: $e');
      }
      emit(
        state.copyWith(errorMessage: "$e", status: false),
      );
    }
  }
}
