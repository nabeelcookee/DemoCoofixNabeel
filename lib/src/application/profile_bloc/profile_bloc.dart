import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:coofix/src/application/profile_bloc/profile_state.dart';
import 'package:coofix/src/domain/domain/repositories/i_profile_repositry.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'profile_event.dart';
part 'profile_bloc.freezed.dart';
@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  IgetProfileRepositry igetProfileRepositry;
  ProfileBloc(this.igetProfileRepositry) : super(ProfileState.initial()) {
    on<_UpadateProfileEvent>(_updateProfile);
  }
  FutureOr<void> _updateProfile(
      _UpadateProfileEvent event, Emitter<ProfileState> emit) async {
    try {
      emit(state.copyWith(status: false));
      var responce = await igetProfileRepositry.upadeProfile(name: event.name);
      print("response for profile :${responce}");
      emit(state.copyWith(
          customerImage: responce.customerImage,
          id: responce.id,
          name: responce.name,
          phoneNumber: responce.phoneNumber,
          image: responce.image, 
          rowid: responce.rowid,
          status: true));
    } catch (e) {
       emit(state.copyWith(status: false));
    }
  }
}
