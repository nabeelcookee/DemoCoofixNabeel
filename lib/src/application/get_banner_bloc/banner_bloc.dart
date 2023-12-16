import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:coofix/app/constants/status/status.dart';
import 'package:coofix/src/domain/domain/models/banner_model/banner_model.dart';
import 'package:coofix/src/domain/domain/repositories/i_get_banner_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
part 'banner_event.dart';
part 'banner_state.dart';
part 'banner_bloc.freezed.dart';

@injectable
class BannerBloc extends Bloc<BannerEvent, BannerState> {
  final IGetBannerRepository iGetBannerRepositry;
  BannerBloc(this.iGetBannerRepositry) : super(BannerState.initial()) {
    on<_getBannerEvent>(_getBannerList);
  }
  FutureOr<void> _getBannerList(
      _getBannerEvent event, Emitter<BannerState> emit) async {
    try {
      emit(state.copyWith(bannerStatus: Status.loading()));
      var response = await iGetBannerRepositry.getBanner();
      emit(state.copyWith(bannerList: response, bannerStatus: Status.success()));
    } catch (e) {
      emit(state.copyWith( bannerStatus: Status.failure(e.toString())));
      
    }
  }
}
