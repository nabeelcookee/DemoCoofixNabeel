

import 'package:freezed_annotation/freezed_annotation.dart';
 part 'get_services_event.freezed.dart';
@freezed
class GetServicesEvent with _$GetServicesEvent {
  const factory GetServicesEvent.getServices({
    required int limit,
    required int skip,
    required String id,
  }) = _GetServicesEvent;
}