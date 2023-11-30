import 'package:coofix/src/presentation/core/theme/colors.dart';
import 'package:flutter/material.dart';

class CustomGradientTile extends StatelessWidget {
  const CustomGradientTile({
    super.key,
    required this.child,
    this.gradient,
    this.color,
    this.width,
    this.margin,
  });
  final Widget child;
  final Gradient? gradient;
  final Color? color;
  final double? width;
  final EdgeInsetsGeometry? margin;
  @override
  Widget build(BuildContext context) {
    final kSize = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(1),
      width: width,
      margin: margin ?? EdgeInsets.only(bottom: kSize.height * 0.01),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kSize.height * 0.0157),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColors.gradientColorTop,
                AppColors.secondaryColor.withOpacity(.02)
              ])),
      child: Container(
        width: kSize.width,
        padding: EdgeInsets.symmetric(
            horizontal: kSize.width * 0.0444, vertical: kSize.height * 0.0210),
        decoration: BoxDecoration(
            color: color,
            gradient: gradient,
            borderRadius: BorderRadius.circular(kSize.height * 0.0157)),
        child: child,
      ),
    );
  }
}
