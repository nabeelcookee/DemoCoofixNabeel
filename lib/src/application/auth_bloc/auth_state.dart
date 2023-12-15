part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  factory AuthState({
    required bool status,
    required Status checkAuthStatus,

    // OLD METHOD 
    // required bool isSendingOtp,

    // NEW METHOD
    required Status sendOtpStatus,
    
    
    required Status otpVerificationStatus,
    required String errorMessage,
    required String userId,
    required Status logoutStatus,
    AppUser? user,
  }) = _AuthState;

  factory AuthState.initial() => AuthState(
        status: false,

        //OLD METHOD 
        // isSendingOtp: false,

        //NEW METHOD
        sendOtpStatus: Status.initial(),

        otpVerificationStatus: Status.initial(),
        errorMessage: "",
        userId: "",
        user: null,
        checkAuthStatus: Status.initial(),
        logoutStatus: Status.initial()
      );
}
