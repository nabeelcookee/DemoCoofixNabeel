// Put your app themes like this

import 'package:coofix/src/presentation/core/theme/colors.dart';
import 'package:flutter/material.dart';

class AppThemes {
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    textSelectionTheme: const TextSelectionThemeData(
        selectionHandleColor: AppColors.blackColor),
    primaryColor: AppColors.primaryColor,
    colorScheme: const ColorScheme.light(
      secondary: AppColors.secondaryColor,
    ),
  );
  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    textSelectionTheme: const TextSelectionThemeData(
        selectionHandleColor: AppColors.blackColor),
    primaryColor: AppColors.primaryColor,
    colorScheme: const ColorScheme.dark(
      secondary: AppColors.secondaryColor,
    ),
  );
}
