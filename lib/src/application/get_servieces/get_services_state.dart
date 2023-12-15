import 'package:coofix/app/constants/status/status.dart';
import 'package:coofix/src/domain/domain/models/get_servieces/get_servieces_model.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_services_state.freezed.dart';

/// TODO : Review changes to do
///
/// - Dont generate dedicated freezed files for events or states.
/// - Add this state file as a part of bloc file
/// - Also dont use abstract class for states. Just use normal class
///
@freezed
abstract class ServiceState with _$ServiceState {
  factory ServiceState(
      {required bool status,
      required Status isLoading,
      required String errorMessage,
      required List<GetServiecesModel> services,
      required String selecterServiceId}) = _ServiceState;

  factory ServiceState.initial() => ServiceState(
      status: false,
      isLoading: Status.initial(),
      errorMessage: "",
      services: [],
      selecterServiceId: "");
}
