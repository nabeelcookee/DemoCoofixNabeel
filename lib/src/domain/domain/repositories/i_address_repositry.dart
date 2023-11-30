import 'package:coofix/src/domain/domain/models/get_address_model/get_address_model.dart';

abstract class IGetAddress{
  Future<List<AddressModel>> getServices({required String id ,required int skip, required int limit});
  
}