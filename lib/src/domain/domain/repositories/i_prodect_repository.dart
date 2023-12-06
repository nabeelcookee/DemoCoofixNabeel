import 'package:coofix/src/domain/domain/models/prodect_model/prodect_model.dart';
// Prodect listing I repositry
abstract class IProdectSales{
  Future<List<ProductPurchaseModel>> getProdects({required String id ,required int skip, required int limit});
  
}