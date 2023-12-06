part of 'prodect_bloc.dart';
// Prodect listing Event
@freezed
class ProdectEvent with _$ProdectEvent {
  const factory ProdectEvent.getProdects({
    required int skip,
    required int limit,
    required String id,
  })= _ProdectSalesEvent;
}