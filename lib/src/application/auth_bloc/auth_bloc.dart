// auth_bloc.dart
import 'dart:async';
import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:coofix/app/constants/status/status.dart';
import 'package:coofix/src/domain/domain/models/app_user_model/app_user_model.dart';
import 'package:coofix/src/domain/domain/repositories/i_auth_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  IAuthRepository iathReposiroy;

  AuthBloc(this.iathReposiroy) : super(AuthState.initial()) {
    on<_SendOtp>(_sendOtp);
    on<_VerifyOtp>(_verifyOtp);
    on<_CheckAuth>(_handleCheckAuth);
  }

  /// TODO: Review changes
  //
  // - isCheckAuth status change is not working properly

  FutureOr<void> _handleCheckAuth(event, Emitter<AuthState> emit) async {
    try {
      emit(state.copyWith(
        checkAuthStatus: Status.loading(),
      ));
      var response = await iathReposiroy.checkAuth();
      emit(state.copyWith(checkAuthStatus: Status.success(), user: response));
    } catch (e) {
      emit(state.copyWith(
          errorMessage: e.toString(), checkAuthStatus: Status.failure(e.toString())));
    }
  }

  FutureOr<void> _sendOtp(_SendOtp event, Emitter<AuthState> emit) async {
    // OLD METHOD
    //
    // try {
    //   emit(state.copyWith(isSendingOtp: true, errorMessage: ''));
    //   var response = await iathReposiroy.sendOtp(event.phoneNumber);
    //   emit(state.copyWith(userId: response.userid, isSendingOtp: false));
    // } catch (e) {
    //   emit(state.copyWith(isSendingOtp: false, errorMessage: e.toString()));
    // }

    // NEW METHOD
    //
    try {
      emit(state.copyWith(sendOtpStatus: Status.loading(), errorMessage: ''));
      var response = await iathReposiroy.sendOtp(event.phoneNumber);
      emit(state.copyWith(
          userId: response.userid, sendOtpStatus: StatusSuccess()));
    } catch (e) {
      emit(state.copyWith(sendOtpStatus: Status.failure(e.toString())));
    }
    //
    //
    //
  }

  FutureOr<void> _verifyOtp(_VerifyOtp event, Emitter<AuthState> emit) async {
    try {
      emit(state.copyWith(otpVerificationStatus: Status.loading(), errorMessage: ''));
      var response =
          await iathReposiroy.verifyOtp(otp: event.otp, userId: event.userId);
      emit(state.copyWith(user: response, otpVerificationStatus: Status.success()));
    } catch (e) {
      emit(state.copyWith(otpVerificationStatus: Status.failure(e.toString())));
    }
  }
}
