import 'package:coofix/app/app.dart';
import 'package:coofix/app/locater/locater.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(const MyApp());
}
