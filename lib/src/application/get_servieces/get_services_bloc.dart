import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:coofix/app/constants/status/status.dart';
import 'package:coofix/src/domain/domain/repositories/i_get_serviece_repositry.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

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
      emit(
        state.copyWith(isLoading: Status.failure(e.toString()), status: false),
      );
    }
  }
}
