// Put typography like this

import 'package:coofix/src/presentation/core/theme/colors.dart';
import 'package:flutter/material.dart';

class AppTypography {
  static const soraBold = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w700,
      color: AppColors.primaryColor,
      fontFamily: 'Sora');

  static const soraSemiBold = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: AppColors.primaryColor,
      fontFamily: 'Sora');
  static const soraRegular = TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 18,
      color: AppColors.primaryColor,
      fontFamily: 'Sora');
  static const airbnbCerealMedium = TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 18,
      color: AppColors.primaryColor,
      fontFamily: 'Airbnb Cereal App');
  static const airbnbCerealRegular = TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 18,
      color: AppColors.primaryColor,
      fontFamily: 'Airbnb Cereal App');
  static const uncutSansSemibold = TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 18,
      color: AppColors.primaryColor,
      fontFamily: 'Uncut Sans');
  static const productSansBold = TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 18,
      color: AppColors.primaryColor,
      fontFamily: 'Product Sans');
}
