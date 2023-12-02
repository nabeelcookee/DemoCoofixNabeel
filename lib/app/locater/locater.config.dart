// TODO Implement this library.
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:coofix/src/application/address_bloc/address_bloc.dart' as _i12;
import 'package:coofix/src/application/auth_bloc/auth_bloc.dart' as _i13;
import 'package:coofix/src/application/get_servieces/get_services_bloc.dart'
    as _i14;
import 'package:coofix/src/application/new_request_bloc/bloc/new_request_bloc.dart'
    as _i11;
import 'package:coofix/src/domain/domain/repositories/i_address_repositry.dart'
    as _i5;
import 'package:coofix/src/domain/domain/repositories/i_auth_repository.dart'
    as _i3;
import 'package:coofix/src/domain/domain/repositories/i_get_serviece_repositry.dart'
    as _i7;
import 'package:coofix/src/domain/domain/repositories/i_request_repositry.dart'
    as _i9;
import 'package:coofix/src/infrasructure/repositry/auth_repositry/auth_repositry.dart'
    as _i4;
import 'package:coofix/src/infrasructure/repositry/get_address_repositry/get_address_repositry.dart'
    as _i6;
import 'package:coofix/src/infrasructure/repositry/get_servieces_repositry/get_servieces_repositry.dart'
    as _i8;
import 'package:coofix/src/infrasructure/repositry/new_request_repositry/new_request_repositry.dart'
    as _i10;
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
    gh.lazySingleton<_i7.IGetServieces>(() => _i8.GetServiecesRepositry());
    gh.lazySingleton<_i9.INewRequestRepositry>(
        () => _i10.NewRequestRepositry());
    gh.factory<_i11.NewRequestBloc>(
        () => _i11.NewRequestBloc(gh<_i9.INewRequestRepositry>()));
    gh.factory<_i12.AddressBloc>(() => _i12.AddressBloc(gh<_i5.IGetAddress>()));
    gh.factory<_i13.AuthBloc>(() => _i13.AuthBloc(gh<_i3.IAuthRepository>()));
    gh.factory<_i14.GetServicesBloc>(
        () => _i14.GetServicesBloc(gh<_i7.IGetServieces>()));
    return this;
  }
}
