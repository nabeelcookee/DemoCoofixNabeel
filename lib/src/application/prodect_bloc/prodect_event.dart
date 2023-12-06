part of 'prodect_bloc.dart';



@freezed
class ProdectEvent with _$ProdectEvent {
   factory ProdectEvent.getProdects({
    required int skip,
    required int limit,
    required String id,
  })= _prodectSalesEvent;
}