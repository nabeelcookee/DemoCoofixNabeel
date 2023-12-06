import 'package:bloc/bloc.dart';
import 'package:coofix/src/application/prodect_bloc/prodect_state.dart';
import 'package:coofix/src/domain/domain/repositories/i_prodect_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'prodect_event.dart';
 part 'prodect_bloc.freezed.dart';

@injectable
class ProdectBloc extends Bloc<ProdectEvent, ProdectState> {
   IProdectSales iProdectSales; 
  ProdectBloc(this.iProdectSales) : super((ProdectState.initial())) {
   on<_ProdectSalesEvent>(_getProdects);
  }

  Future<void>_getProdects(_ProdectSalesEvent event , Emitter<ProdectState> emit)async{
    try{
      emit(state.copyWith(status: false));
    var response =await iProdectSales.getProdects(id: event.id, skip: event.skip, limit: event.limit);
    emit(state.copyWith(prodectList: response,status: true));
    }catch(e){
      print(e);
     throw Exception(e);
    }
  }
}
