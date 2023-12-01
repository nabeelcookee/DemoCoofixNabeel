import 'package:coofix/src/domain/domain/models/get_address_model/get_address_model.dart';

abstract class IGetAddress {
  Future<List<AddressModel>> getServices(
      {required String id, required int skip, required int limit});
  Future<AddressModel> addAddres({
    required String id,
    required String addressType,
    required String fullName,
    required String addAddres,
    required String pinCode,
    required String directionToReach,
    required double locationLatitude,
    required double locationLongitude,
  });
}
