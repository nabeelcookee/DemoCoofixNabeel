import 'package:coofix/app/app.dart';
import 'package:coofix/app/locater/locater.dart';
import 'package:coofix/app/services/local_storage_service.dart';
import 'package:flutter/material.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// Initialise Local Storage services
  await LocalStorage.init();

  /// Initialise Locator dependencies
  configureDependencies();

  runApp(const MyApp());
}
