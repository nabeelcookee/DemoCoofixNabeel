part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.sendOtp(
{
  required String phoneNumber,
}
  ) = _SendOtp;
  const factory AuthEvent.verifyOtp({
    required String otp,
    required String userId,
  }) = _VerifyOtp;
  const factory AuthEvent.checkAuth()=_CheckAuth;
}

