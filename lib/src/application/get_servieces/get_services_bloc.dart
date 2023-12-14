import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:coofix/src/domain/domain/repositories/i_get_serviece_repositry.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'get_services_event.dart';
import 'get_services_state.dart';

@injectable
class GetServicesBloc extends Bloc<GetServicesEvent, ServiceState> {
  final IGetServieces iGetServieces;

  GetServicesBloc(this.iGetServieces) : super(ServiceState.initial()) {
    on<GetServicesEvent>(_getServices);
  }
  FutureOr<void> _getServices(
      GetServicesEvent event, Emitter<ServiceState> emit) async {
    try {
      emit(state.copyWith());
      final response = await iGetServieces.getServices(
        limit: event.limit,
        skip: event.skip,
        id: event.id,
      );
      emit(state.copyWith(
        services: response,
      ));
    } catch (e) {
      if (kDebugMode) {
        print('Error in _getServices: $e');
      }
      emit(
        state.copyWith(isLoading: false, errorMessage: "$e", status: false),
      );
    }
  }
}
