part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  factory AuthState({
    required bool status,
    required bool isCheckAuth,

    // OLD METHOD 
    // required bool isSendingOtp,

    // NEW METHOD
    required Status sendOtpStatus,
    
    
    required bool isVrifyingOtp,
    required String errorMessage,
    required String userId,
    AppUser? user,
  }) = _AuthState;

  factory AuthState.initial() => AuthState(
        status: false,

        //OLD METHOD 
        // isSendingOtp: false,

        //NEW METHOD
        sendOtpStatus: Status.initial(),

        isVrifyingOtp: false,
        errorMessage: "",
        userId: "",
        user: null,
        isCheckAuth: false,
      );
}
