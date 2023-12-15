

part of 'get_services_bloc.dart';


/// TODO : Review changes to do
///
/// - Dont generate dedicated freezed files for events or states.
/// - Add this state file as a part of bloc file
/// - Also dont use abstract class for states. Just use normal class
///
@freezed
abstract class ServiceState with _$ServiceState {
  factory ServiceState(
      {
      required Status serviceStatus,
      required String errorMessage,
      required List<GetServiecesModel> services,
      required String selecterServiceId}) = _ServiceState;

  factory ServiceState.initial() => ServiceState(
      
      serviceStatus: Status.initial(),
      errorMessage: "",
      services: [],
      selecterServiceId: "");
}
