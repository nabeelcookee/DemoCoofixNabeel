
import 'package:freezed_annotation/freezed_annotation.dart';
 part 'get_services_event.freezed.dart';

/// TODO : Review changes to do
/// 
/// - Dont generate dedicated freezed files for events or states. 
/// - Add this event file as a part of bloc file
/// 
@freezed
class GetServicesEvent with _$GetServicesEvent {
  const factory GetServicesEvent.getServices({
    required int limit,
    required int skip,
    required String id,
  }) = _GetServicesEvent;
}
@freezed
class SelecterServiceId with  _$SelecterServiceId {
  const factory SelecterServiceId.selecterServiceId({
    required String selecterServiceId,
  })=_SelecterServiceId;
}