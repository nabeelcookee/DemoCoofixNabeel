import 'package:freezed_annotation/freezed_annotation.dart';
 part 'new_request_state.freezed.dart';
@freezed
abstract class NewRequestState with _$NewRequestState {
  factory NewRequestState({
    required bool status,
    required String message,
    required String serviceRequestImageBaseUrl,
    required String productImageBaseUrl,
    required String serviceImageBaseUrl,
  }) = _NewRequestState;

  factory NewRequestState.initial() => NewRequestState(
        status: false,
        message: "",
        serviceRequestImageBaseUrl: "",
        productImageBaseUrl: "",
        serviceImageBaseUrl: "",
      );
}
