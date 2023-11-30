import 'package:coofix/src/presentation/core/constants/images.dart';
import 'package:coofix/src/presentation/core/theme/colors.dart';
import 'package:flutter/material.dart';

class CommonBackground extends StatelessWidget {
  const CommonBackground({super.key});

  @override
  Widget build(BuildContext context) {
    final kSize = MediaQuery.of(context).size;
    return Container(
        height: kSize.height * .6,
        width: kSize.width,
        foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          AppColors.secondaryColor.withOpacity(.9),
          AppColors.secondaryColor
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: Image.asset(
          AppImages.onboardingBg,
          fit: BoxFit.cover,
        ));
  }
}
