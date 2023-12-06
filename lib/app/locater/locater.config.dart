// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:coofix/src/application/address_bloc/address_bloc.dart' as _i17;
import 'package:coofix/src/application/auth_bloc/auth_bloc.dart' as _i18;
import 'package:coofix/src/application/get_banner_bloc/banner_bloc.dart'
    as _i19;
import 'package:coofix/src/application/get_servieces/get_services_bloc.dart'
    as _i20;
import 'package:coofix/src/application/new_request_bloc/bloc/new_request_bloc.dart'
    as _i15;
import 'package:coofix/src/application/prodect_bloc/prodect_bloc.dart' as _i16;
import 'package:coofix/src/domain/domain/repositories/i_address_repositry.dart'
    as _i5;
import 'package:coofix/src/domain/domain/repositories/i_auth_repository.dart'
    as _i3;
import 'package:coofix/src/domain/domain/repositories/i_get_banner_repository.dart'
    as _i7;
import 'package:coofix/src/domain/domain/repositories/i_get_serviece_repositry.dart'
    as _i9;
import 'package:coofix/src/domain/domain/repositories/i_prodect_repository.dart'
    as _i13;
import 'package:coofix/src/domain/domain/repositories/i_request_repositry.dart'
    as _i11;
import 'package:coofix/src/infrasructure/repositry/address_repositry/address_repositry.dart'
    as _i6;
import 'package:coofix/src/infrasructure/repositry/auth_repositry/auth_repositry.dart'
    as _i4;
import 'package:coofix/src/infrasructure/repositry/get_servieces_repositry/get_servieces_repositry.dart'
    as _i10;
import 'package:coofix/src/infrasructure/repositry/home_repositry/get_banner_repositry.dart'
    as _i8;
import 'package:coofix/src/infrasructure/repositry/new_request_repositry/new_request_repositry.dart'
    as _i12;
import 'package:coofix/src/infrasructure/repositry/prodect_repository/get_prodect_repository.dart'
    as _i14;
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
    gh.lazySingleton<_i3.IAuthRepository>(() => _i4.AuthRepository());
    gh.lazySingleton<_i5.IGetAddress>(() => _i6.GetAddressRepository());
    gh.lazySingleton<_i7.IGetBannerRepositry>(() => _i8.GetBannerRepositry());
    gh.lazySingleton<_i9.IGetServieces>(() => _i10.GetServiecesRepositry());
    gh.lazySingleton<_i11.INewRequestRepositry>(
        () => _i12.NewRequestRepositry());
    gh.lazySingleton<_i13.IProdectSales>(() => _i14.GetProdectRepositry());
    gh.factory<_i15.NewRequestBloc>(
        () => _i15.NewRequestBloc(gh<_i11.INewRequestRepositry>()));
    gh.factory<_i16.ProdectBloc>(
        () => _i16.ProdectBloc(gh<_i13.IProdectSales>()));
    gh.factory<_i17.AddressBloc>(() => _i17.AddressBloc(gh<_i5.IGetAddress>()));
    gh.factory<_i18.AuthBloc>(() => _i18.AuthBloc(gh<_i3.IAuthRepository>()));
    gh.factory<_i19.BannerBloc>(() => _i19.BannerBloc(gh<_i7.IGetBannerRepositry>()));
    gh.factory<_i20.GetServicesBloc>(
        () => _i20.GetServicesBloc(gh<_i9.IGetServieces>()));
    return this;
  }
}
