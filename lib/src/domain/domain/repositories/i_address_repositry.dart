import 'package:coofix/src/domain/domain/models/get_address_model/get_address_model.dart';

abstract class IGetAddress {
  Future<List<AddressModel>> getAddress(
      {required String id, required int skip, required int limit});
  Future<AddressModel> addAddres({
    required String id,
    required String addressType,
    required String fullName,
    required String addres,
    required String pinCode,
    required String directionToReach,
    required double locationLatitude,
    required double locationLongitude,
  });


  Future<AddressModel>selectedAddress({required String id});

  Future<AddressModel>deletedAddress({required String id});
}

