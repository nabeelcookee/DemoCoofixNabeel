part of 'new_request_bloc.dart';


/// TODO : Review changes to do
///
/// - Dont generate dedicated freezed files for events or states.
/// - Add this state file as a part of bloc file
/// - Also dont use abstract class for events. Just use normal class
///
@freezed
class NewRequestEvent with _$NewRequestEvent {
   factory NewRequestEvent.newrequest({
    required String id,
    required String serviceId,
    required String note,
    required String serviceDateSlot,
    required String serviceDateTimeSlot,
    required String addressId,
    required bool isRecurringService,
  })=_newrequest;

  factory NewRequestEvent.listRequests({
    required String id,
    required int limit,
    required int skip,
    required String status,
    required String productSaleId,
  })= _listRequests;
}