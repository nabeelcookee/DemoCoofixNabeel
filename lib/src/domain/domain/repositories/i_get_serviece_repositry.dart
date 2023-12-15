import 'package:coofix/src/domain/domain/models/get_servieces/get_servieces_model.dart';

abstract class IGetServiecesRepository{
  Future<List<GetServiecesModel>> getServices({required String id ,required int skip, required int limit});
  
}