import 'package:coofix/src/presentation/core/constants/images.dart';
import 'package:coofix/src/presentation/core/theme/colors.dart';
import 'package:coofix/src/presentation/core/theme/typography.dart';
import 'package:flutter/material.dart';

class FooterButton extends StatelessWidget {
  const FooterButton(
      {super.key,
      required this.onTap,
      required this.label,
      this.width,
      this.height,
      this.fontSize,
      this.child});
  final Function() onTap;
  final String label;
  final double? width;
  final double? height;
  final double? fontSize;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    final kSize = MediaQuery.of(context).size;
    return SizedBox(
      height: height,
      width: width,
      child: TextButton(
          style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(
                  vertical: kSize.height * .019,
                  horizontal: kSize.width * 0.022),
              backgroundColor: AppColors.secondaryColor,
              foregroundColor: AppColors.lightGrey,
              side: const BorderSide(color: AppColors.primaryColor)),
          onPressed: onTap,
          child: child ??
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(AppImages.arrowCircleIcon,
                      height: kSize.height * 0.0295),
                  SizedBox(
                    width: kSize.width * .02,
                  ),
                  Text(
                    label,
                    style: AppTypography.soraSemiBold.copyWith(
                        fontSize: fontSize ?? kSize.height * 0.0155,
                        color: AppColors.primaryColor),
                  ),
                ],
              )),
    );
  }
}
