
import 'package:coofix/src/domain/domain/models/prodect_model/prodect_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
 part 'prodect_state.freezed.dart';
@freezed
 abstract class ProdectState with _$ProdectState {
   factory ProdectState({
    required bool status,
    required String message,
    required List<ProductPurchaseModel> prodectList,

   }) = _ProdectSalesState;

    factory ProdectState.initial() => ProdectState(
      status: false,
      message: "",
      prodectList: [],
      );
        
}
