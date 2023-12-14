
import 'package:bloc/bloc.dart';
import 'package:coofix/src/application/new_request_bloc/bloc/new_request_state.dart';
import 'package:coofix/src/domain/domain/repositories/i_request_repositry.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
part 'new_request_event.dart';
part 'new_request_bloc.freezed.dart';

@injectable
class NewRequestBloc extends Bloc<NewRequestEvent, NewRequestState> {
  INewRequestRepositry iNewRequestRepository;
  NewRequestBloc(this.iNewRequestRepository)
      : super(NewRequestState.initial()) {
    on<_newrequest>(_createRequest);
    on<_listRequests>(_listAllRequests);
  }

  Future<void> _listAllRequests(
      _listRequests event, Emitter<NewRequestState> emit) async {
    try {
      emit(state.copyWith(status: false));
      var response = await iNewRequestRepository.listRequests(
          limit: event.limit,
          skip: event.skip,
          id: event.id,
          status: event.status,
          productSaleId: event.productSaleId);
      emit(state.copyWith(requestDatas: response,));
      print("listall requests${response.length}");
    } catch (e) {
      print("errorr is $e");
      throw Exception(e);
    }
  }

  Future<void> _createRequest(
    _newrequest event,
    Emitter<NewRequestState> emit,
  ) async {
    try {
      emit(state.copyWith(status: false));
      var response = await iNewRequestRepository.newrequest(
          id: event.id,
          addressId: event.addressId,
          serviceId: event.serviceId,
          isRecurringService: event.isRecurringService,
          note: event.note,
          serviceDateSlot: event.serviceDateSlot,
          serviceDateTimeSlot: event.serviceDateTimeSlot);
      emit(state.copyWith(status: true, requestDatas: response));
    } catch (e) {
      // errors
      emit(state.copyWith(status: false));
      print("Error: $e");
    }
  }
}
