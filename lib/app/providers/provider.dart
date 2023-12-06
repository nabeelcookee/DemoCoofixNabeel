import 'package:coofix/app/locater/locater.dart';
import 'package:coofix/src/application/address_bloc/address_bloc.dart';
import 'package:coofix/src/application/auth_bloc/auth_bloc.dart';
import 'package:coofix/src/application/get_servieces/get_services_bloc.dart';
import 'package:coofix/src/application/new_request_bloc/bloc/new_request_bloc.dart';
import 'package:coofix/src/application/prodect_bloc/prodect_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

List<BlocProvider> kBlocProviders = [
  BlocProvider<AuthBloc>(create: (context) => getIt<AuthBloc>()),
  BlocProvider<GetServicesBloc>(create: (contxt) => getIt<GetServicesBloc>()),
  BlocProvider<NewRequestBloc>(create: (context) => getIt<NewRequestBloc>()),
  BlocProvider<AddressBloc>(create: (context) => getIt<AddressBloc>()),
  BlocProvider<ProdectBloc>(create: (context) => getIt<ProdectBloc>()),
];
