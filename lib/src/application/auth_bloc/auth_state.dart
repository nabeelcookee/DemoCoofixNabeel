part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  factory AuthState({
    required bool status,
    required bool isCheckAuth,
    required bool isSendingOtp,
    required bool isVrifyingOtp,
    required Status checkAuthStatus,
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
        checkAuthStatus: Status.initial(),
      );
}
