part of 'auth_bloc.dart';

/// TODO : Review changes to do
///
/// - Also dont use abstract class for states. Just use normal class
///

@freezed
abstract class AuthState with _$AuthState {
  factory AuthState({
    required bool status,
    required bool isCheckAuth,
    required bool isSendingOtp,
    required bool isVrifyingOtp,
    required String errorMessage,
    required String userId,
    AppUser? user,
  }) = _AuthState;

  factory AuthState.initial() => AuthState(
        status: false,
        isSendingOtp: false,
        isVrifyingOtp: false,
        errorMessage: "",
        userId: "",
        user: null,
        isCheckAuth: false,
      );
}
