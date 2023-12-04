import 'package:coofix/src/domain/domain/models/new_request_model/new_request_model.dart';

abstract class INewRequestRepositry{
  Future<NewRequestModel> newrequest({required String id ,required String serviceId,required String addressId, required bool isRecurringService ,required String serviceDateTimeSlot, required String serviceDateSlot,required String note});
}