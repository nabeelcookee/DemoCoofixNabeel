// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:coofix/src/application/auth_bloc/auth_bloc.dart' as _i10;
import 'package:coofix/src/application/get_servieces/get_services_bloc.dart'
    as _i11;
import 'package:coofix/src/application/new_request_bloc/bloc/new_request_bloc.dart'
    as _i9;
import 'package:coofix/src/domain/domain/repositories/i_auth_repository.dart'
    as _i3;
import 'package:coofix/src/domain/domain/repositories/i_get_serviece_repositry.dart'
    as _i5;
import 'package:coofix/src/domain/domain/repositories/i_request_repositry.dart'
    as _i7;
import 'package:coofix/src/infrasructure/repositry/auth_repositry/auth_repositry.dart'
    as _i4;
import 'package:coofix/src/infrasructure/repositry/get_servieces_repositry/get_servieces_repositry.dart'
    as _i6;
import 'package:coofix/src/infrasructure/repositry/new_request_repositry/new_request_repositry.dart'
    as _i8;
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
    gh.lazySingleton<_i5.IGetServieces>(() => _i6.GetServiecesRepositry());
    gh.lazySingleton<_i7.INewRequestRepositry>(() => _i8.NewRequestRepositry());
    gh.factory<_i9.NewRequestBloc>(
        () => _i9.NewRequestBloc(gh<_i7.INewRequestRepositry>()));
    gh.factory<_i10.AuthBloc>(() => _i10.AuthBloc(gh<_i3.IAuthRepository>()));
    gh.factory<_i11.GetServicesBloc>(
        () => _i11.GetServicesBloc(gh<_i5.IGetServieces>()));
    return this;
  }
}
