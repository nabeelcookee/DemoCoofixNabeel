// auth_bloc.dart
import 'dart:async';
import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:coofix/app/constents/status/status.dart';
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
  FutureOr<void> _handleCheckAuth(event, Emitter<AuthState> emit) async {
    try {
      emit(state.copyWith(
        isCheckAuth: false,
      ));
      var response = await iathReposiroy.checkAuth();
      emit(state.copyWith(isCheckAuth: true, user: response));
    } catch (e) {
      emit(state.copyWith(errorMessage: e.toString(), isCheckAuth: false));
    }
  }

  FutureOr<void> _sendOtp(_SendOtp event, Emitter<AuthState> emit) async {
    log(event.phoneNumber, name: "From Bloc");
    try {
      emit(state.copyWith(isSendingOtp: true, errorMessage: ''));
      var response = await iathReposiroy.sendOtp(event.phoneNumber);
      emit(state.copyWith(userId: response.userid, isSendingOtp: false));
    } catch (e) {
      emit(state.copyWith(isSendingOtp: false, errorMessage: e.toString()));
    }
  }

  FutureOr<void> _verifyOtp(_VerifyOtp event, Emitter<AuthState> emit) async {
    try {
      emit(state.copyWith(isVrifyingOtp: true, errorMessage: ''));
      var response =
          await iathReposiroy.verifyOtp(otp: event.otp, userId: event.userId);
      emit(state.copyWith(user: response));
      log(event.userId);
      log(response.toString(), name: "response frome verify");

      emit(state.copyWith(isVrifyingOtp: false));
    } catch (e) {
      emit(state.copyWith(isVrifyingOtp: false, errorMessage: e.toString()));
    }
  }
}
