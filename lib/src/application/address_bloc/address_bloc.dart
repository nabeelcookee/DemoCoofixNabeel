import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:coofix/src/application/address_bloc/address_event.dart';
import 'package:coofix/src/application/address_bloc/address_state.dart';
import 'package:coofix/src/domain/domain/models/get_address_model/get_address_model.dart';
import 'package:coofix/src/domain/domain/repositories/i_address_repositry.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@injectable
class AddressBloc extends Bloc<GetAddressEvent, AddressState> {
  final IGetAddress iGetAddress;

  AddressBloc(this.iGetAddress) : super(AddressState.initial()) {
    on<GetAddressEvent>(_getAddress);
  }
  FutureOr<void> _getAddress(
      GetAddressEvent event, Emitter<AddressState> emit) async {
    try {
      emit(state.copyWith());
      final response = await iGetAddress.getServices(
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
}

@injectable
class AddAddressBloc extends Bloc<AddAddressEvent, AddressState> {
  final IGetAddress iGetAddress;

  AddAddressBloc(this.iGetAddress) : super(AddressState.initial()) {
    on<AddAddressEvent>(_addAddress);
  }
  FutureOr<void> _addAddress(
      AddAddressEvent event, Emitter<AddressState> emit) async {
    try {
      emit(state.copyWith(status: false));
      final response = await iGetAddress.addAddres(
        id: event.id,
        addAddres: event.addres,
        addressType: event.addressType,
        directionToReach: event.directionToReach,
        fullName: event.fullName,
        locationLatitude: event.locationLatitude,
        locationLongitude: event.locationLongitude,
        pinCode: event.pinCode,
      );
 
      final List<AddressModel> addressList = [response];
      emit(state.copyWith(status: true,
        address: addressList,
      ));
    } catch (e) {
      if (kDebugMode) {
        print('Error in getaddress: $e');
      }
      emit(
        state.copyWith(
          errorMessage: "$e",status: false
        ),
      );
    }
  }
}
