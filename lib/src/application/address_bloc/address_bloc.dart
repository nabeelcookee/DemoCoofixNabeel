import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:coofix/src/application/address_bloc/address_event.dart';
import 'package:coofix/src/application/address_bloc/address_state.dart';
import 'package:coofix/src/domain/domain/models/get_address_model/get_address_model.dart';
import 'package:coofix/src/domain/domain/repositories/i_address_repositry.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@injectable
class AddressBloc extends Bloc<AddressEvent, AddressState> {
  final IGetAddress iGetAddress;

  AddressBloc(this.iGetAddress) : super(AddressState.initial()) {
    on<_GetAddressEvent>(_handleGetAddress);
    on<_AddAddressEvent>(_handleAddAddress);
    on<_SelectedAddressEvent>(_handleSelectedAddress);
  }

  Future<void> _handleGetAddress(
      _GetAddressEvent event, Emitter<AddressState> emit) async {
    try {
      emit(state.copyWith());
      final response = await iGetAddress.getAddress(
        id: event.id,
        skip: event.skip,
        limit: event.limit,
      );
      emit(state.copyWith(
        address: response,
      ));
    } catch (e) {
      if (kDebugMode) {
        print('Error in getAddress: $e');
      }
      emit(
        state.copyWith(
          errorMessage: "$e",
        ),
      );
    }
  }

  Future<void> _handleAddAddress(
      _AddAddressEvent event, Emitter<AddressState> emit) async {
    try {
      emit(state.copyWith(status: false));
      final response = await iGetAddress.addAddres(
        id: event.id,
        addressType: event.addressType,
        fullName: event.fullName,
        addres: event.addres,
        pinCode: event.pinCode,
        directionToReach: event.directionToReach,
        locationLatitude: event.locationLatitude,
        locationLongitude: event.locationLongitude,
      );

      final List<AddressModel> addressList = [response];
      emit(state.copyWith(
        status: true,
        address: addressList,
      ));
    } catch (e) {
      if (kDebugMode) {
        print('Error in addAddress: $e');
      }
      emit(
        state.copyWith(errorMessage: "$e", status: false),
      );
    }
  }

  Future<void> _handleSelectedAddress(
      _SelectedAddressEvent event, Emitter<AddressState> emit) async {
    try {
      final response = await iGetAddress.selectedAddress(id: event.id);
      emit(state.copyWith(
        status: true,
        address: [response],
      ));
    } catch (e) {
      throw Exception("Failed response: $e");
    }
  }
}
