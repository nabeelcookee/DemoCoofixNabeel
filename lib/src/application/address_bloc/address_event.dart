
import 'package:freezed_annotation/freezed_annotation.dart';
  part 'address_event.freezed.dart';
@freezed
class GetAddressEvent with _$GetAddressEvent {
  const factory GetAddressEvent.getAddress({
    required int limit,
    required int skip,
    required String id,
  }) = _GetAddressEvent;
}