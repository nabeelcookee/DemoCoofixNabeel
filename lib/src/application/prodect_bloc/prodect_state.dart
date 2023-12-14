import 'package:coofix/src/domain/domain/models/prodect_model/prodect_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'prodect_state.freezed.dart';

/// TODO : Review changes to do
///
/// - Dont generate dedicated freezed files for events or states.
/// - Add this state file as a part of bloc file
/// - Also dont use abstract class for states. Just use normal class
///

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
