import 'package:freezed_annotation/freezed_annotation.dart';
part 'profile_state.freezed.dart';

/// TODO : Review changes to do
///
/// - Dont generate dedicated freezed files for events or states.
/// - Add this state file as a part of bloc file
/// - Also dont use abstract class for states. Just use normal class
///

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    required bool status,
    required String message,
    required String id,
    required String rowid,
    required String name,
    required String image,
    required String phoneNumber,
    required String customerImage,
  }) = _UpadateProfileState;

  factory ProfileState.initial() => const ProfileState(status: false, message: "", id: "", rowid: "", name: "", image: "", phoneNumber: "", customerImage: "");
}
