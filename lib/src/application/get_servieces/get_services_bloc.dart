import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:coofix/app/constants/status/status.dart';
import 'package:coofix/src/domain/domain/repositories/i_get_serviece_repositry.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:coofix/src/domain/domain/models/get_servieces/get_servieces_model.dart';

import 'get_services_event.dart';
part 'get_services_event.dart';
part 'get_services_state.dart';
part 'get_services_bloc.freezed.dart';
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
        state.copyWith(isLoading: Status.failure(e.toString()),),
      );
    }
  }
}
