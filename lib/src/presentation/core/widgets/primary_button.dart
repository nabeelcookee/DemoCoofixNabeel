// create global widgets in core folder like this
import 'package:coofix/src/presentation/core/constants/images.dart';
import 'package:coofix/src/presentation/core/theme/colors.dart';
import 'package:coofix/src/presentation/core/theme/typography.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    required this.text,
    this.onPressed,
    this.width,
    this.child,
    this.icon,
  }) : super(key: key);

  final String text;
  final void Function()? onPressed;
  final double? width;
  final Widget? child;
  final String? icon;

  @override
  Widget build(BuildContext context) {
    final kSize = MediaQuery.of(context).size;
    return SizedBox(
      width: width ?? kSize.width,
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(kSize.height * 0.0105)),
          backgroundColor: AppColors.primaryColor,
          padding: EdgeInsets.symmetric(vertical: kSize.height * .02),
        ),
        onPressed: onPressed,
        child: child ??
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  text,
                  style: AppTypography.soraSemiBold.copyWith(
                      color: AppColors.secondaryColor,
                      fontSize: kSize.height * 0.0210),
                ),
                SizedBox(width: kSize.width * .01),
                Image.asset(
                  icon ?? AppImages.arrowIcon,
                  height: kSize.height * .027,
                  color: AppColors.secondaryColor,
                )
              ],
            ),
      ),
    );
  }
}
