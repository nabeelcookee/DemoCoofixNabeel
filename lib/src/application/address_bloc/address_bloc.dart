import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:coofix/src/application/address_bloc/address_event.dart';
import 'package:coofix/src/application/address_bloc/address_state.dart';
import 'package:coofix/src/domain/domain/models/get_address_model/get_address_model.dart';
import 'package:coofix/src/domain/domain/repositories/i_address_repositry.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

@injectable
class AddressBloc extends Bloc<GetAddressEvent, AddressState> {
  final IGetAddress iGetAddress;

  AddressBloc(this.iGetAddress) : super(AddressState.initial()) {
    on<GetAddressEvent>(_getAddress);
  
}
FutureOr<void>_getAddress(GetAddressEvent event ,Emitter<AddressState> emit) async{
  try{
     emit(state.copyWith(
    ));
    final response= await iGetAddress.getServices(id: "", skip: 0, limit: 0);
    emit(state.copyWith(address: response));
}catch(e){
 if (kDebugMode) {
      print('Error in getaddress: $e');
    } emit(
      state.copyWith( errorMessage: "${e}",),
    );
  }
}
}