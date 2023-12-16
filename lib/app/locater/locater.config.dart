// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:coofix/app/services/api_services/api_service.dart' as _i3;
import 'package:coofix/src/application/address_bloc/address_bloc.dart' as _i21;
import 'package:coofix/src/application/auth_bloc/auth_bloc.dart' as _i22;
import 'package:coofix/src/application/get_banner_bloc/banner_bloc.dart'
    as _i23;
import 'package:coofix/src/application/get_servieces/get_services_bloc.dart'
    as _i24;
import 'package:coofix/src/application/new_request_bloc/bloc/new_request_bloc.dart'
    as _i18;
import 'package:coofix/src/application/prodect_bloc/prodect_bloc.dart' as _i19;
import 'package:coofix/src/application/profile_bloc/profile_bloc.dart' as _i20;
import 'package:coofix/src/domain/domain/repositories/i_address_repositry.dart'
    as _i6;
import 'package:coofix/src/domain/domain/repositories/i_auth_repository.dart'
    as _i4;
import 'package:coofix/src/domain/domain/repositories/i_get_banner_repository.dart'
    as _i8;
import 'package:coofix/src/domain/domain/repositories/i_get_serviece_repositry.dart'
    as _i10;
import 'package:coofix/src/domain/domain/repositories/i_prodect_repository.dart'
    as _i14;
import 'package:coofix/src/domain/domain/repositories/i_profile_repositry.dart'
    as _i16;
import 'package:coofix/src/domain/domain/repositories/i_request_repositry.dart'
    as _i12;
import 'package:coofix/src/infrasructure/repositry/address_repositry/address_repositry.dart'
    as _i7;
import 'package:coofix/src/infrasructure/repositry/auth_repositry/auth_repositry.dart'
    as _i5;
import 'package:coofix/src/infrasructure/repositry/get_servieces_repositry/get_servieces_repositry.dart'
    as _i11;
import 'package:coofix/src/infrasructure/repositry/home_repositry/get_banner_repositry.dart'
    as _i9;
import 'package:coofix/src/infrasructure/repositry/new_request_repositry/new_request_repositry.dart'
    as _i13;
import 'package:coofix/src/infrasructure/repositry/prodect_repository/get_prodect_repository.dart'
    as _i15;
import 'package:coofix/src/infrasructure/repositry/profile_repositry/update_profile_repositry.dart'
    as _i17;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.Api>(() => _i3.Api());
    gh.lazySingleton<_i4.IAuthRepository>(
        () => _i5.AuthRepository(api: gh<_i3.Api>()));
    gh.lazySingleton<_i6.IGetAddress>(() => _i7.GetAddressRepository());
    gh.lazySingleton<_i8.IGetBannerRepository>(
        () => _i9.GetBannerRepository(api: gh<_i3.Api>()));
    gh.lazySingleton<_i10.IGetServiecesRepository>(
        () => _i11.GetServiecesRepository(api: gh<_i3.Api>()));
    gh.lazySingleton<_i12.INewRequestRepositry>(
        () => _i13.NewRequestRepositry());
    gh.lazySingleton<_i14.IProdectSales>(() => _i15.GetProdectRepositry());
    gh.lazySingleton<_i16.IgetProfileRepositry>(
        () => _i17.UpdateProfileRepositry());
    gh.factory<_i18.NewRequestBloc>(
        () => _i18.NewRequestBloc(gh<_i12.INewRequestRepositry>()));
    gh.factory<_i19.ProdectBloc>(
        () => _i19.ProdectBloc(gh<_i14.IProdectSales>()));
    gh.factory<_i20.ProfileBloc>(
        () => _i20.ProfileBloc(gh<_i16.IgetProfileRepositry>()));
    gh.factory<_i21.AddressBloc>(() => _i21.AddressBloc(gh<_i6.IGetAddress>()));
    gh.factory<_i22.AuthBloc>(() => _i22.AuthBloc(gh<_i4.IAuthRepository>()));
    gh.factory<_i23.BannerBloc>(
        () => _i23.BannerBloc(gh<_i8.IGetBannerRepository>()));
    gh.factory<_i24.GetServicesBloc>(
        () => _i24.GetServicesBloc(gh<_i10.IGetServiecesRepository>()));
    return this;
  }
}
