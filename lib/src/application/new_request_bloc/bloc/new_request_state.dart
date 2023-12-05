import 'package:coofix/src/domain/domain/models/new_request_model/new_request_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
 part 'new_request_state.freezed.dart';
@freezed
abstract class NewRequestState with _$NewRequestState {
  factory NewRequestState({
    required bool status,
    required String message,
     required List<NewRequestModel> requestDatas,
    

  }) = _NewRequestState;

  factory NewRequestState.initial() => NewRequestState(
        status: false,
        message: "",
      requestDatas: []
        
      );
}
