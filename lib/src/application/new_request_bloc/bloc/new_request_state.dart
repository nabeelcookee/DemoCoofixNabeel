import 'package:coofix/src/domain/domain/models/new_request_model/new_request_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'new_request_state.freezed.dart';

/// TODO : Review changes to do
///
/// - Dont generate dedicated freezed files for events or states.
/// - Add this state file as a part of bloc file
/// - Also dont use abstract class for states. Just use normal class
///
@freezed
abstract class NewRequestState with _$NewRequestState {
  factory NewRequestState({
    required bool status,
    required String message,
    required List<NewRequestModel> requestDatas,
  }) = _NewRequestState;

  factory NewRequestState.initial() => NewRequestState(status: false, message: "", requestDatas: []);
}
