
import 'package:coofix/src/domain/domain/models/get_servieces/get_servieces_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_services_state.freezed.dart';
@freezed
abstract class ServiceState with _$ServiceState {
  factory ServiceState({
    required bool status,
    required bool isLoading,
    required String errorMessage,
    required List<GetServiecesModel> services,
  }) = _ServiceState;

  factory ServiceState.initial() => ServiceState(
        status: false,
        isLoading: false,
        errorMessage: "",
          services: [],
      );
}
