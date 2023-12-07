import 'package:coofix/src/domain/domain/models/new_request_model/new_request_model.dart';

abstract class INewRequestRepositry{
  Future<List<NewRequestModel>> newrequest({required String id ,required String serviceId,required String addressId, required bool isRecurringService ,required String serviceDateTimeSlot, required String serviceDateSlot,required String note});
  Future<List<NewRequestModel>>listRequests({required int limit , required int skip , required String id , required String status , required String productSaleId });
}