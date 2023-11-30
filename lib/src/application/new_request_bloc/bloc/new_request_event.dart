part of 'new_request_bloc.dart';

@freezed
class NewRequestEvent with _$NewRequestEvent {
   factory NewRequestEvent.newrequest({
    required String id,
    required String productSaleId,
    required String serviceId,
    required String note,
    required List<String> serviceImages,
    required String serviceDateSlot,
    required String serviceDateTimeSlot,
    required String addressId,
    required bool isRecurringService,
  })=_newrequest;
}