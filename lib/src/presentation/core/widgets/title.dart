import 'package:coofix/src/presentation/core/theme/colors.dart';
import 'package:coofix/src/presentation/core/theme/typography.dart';
import 'package:coofix/src/presentation/view/onboarding/onboarding/widgets/gradient_text.dart';
import 'package:flutter/material.dart';

class CommonTitle extends StatelessWidget {
  const CommonTitle(
      {super.key,
      required this.description,
      required this.subTitle,
      required this.title});
  final String description;
  final String subTitle;
  final String title;
  @override
  Widget build(BuildContext context) {
    final kSize = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: kSize.height * 0.0842,
          padding: EdgeInsets.symmetric(
              vertical: kSize.height * .01, horizontal: kSize.width * .044),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(kSize.height * 0.0105),
              gradient: LinearGradient(colors: [
                AppColors.secondaryColor,
                AppColors.secondaryColor.withOpacity(.04)
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
              boxShadow: [
                BoxShadow(
                  color: AppColors.primaryColor.withOpacity(.04),
                  offset: const Offset(0, -20),
                  blurRadius: 10,
                )
              ]),
          child: GradientText(
            gradient: const LinearGradient(colors: [
              AppColors.blueColor,
              AppColors.gradientBlue2,
              AppColors.blueColor,
              AppColors.gradientBlue2,
              AppColors.blueColor,
            ]),
            subTitle,
            style: AppTypography.soraSemiBold
                .copyWith(fontSize: kSize.height * 0.0210),
          ),
        ),
        Align(
          heightFactor: .35,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: AppTypography.soraSemiBold
                .copyWith(fontSize: kSize.height * 0.0526, height: 1.1),
          ),
        ),
        SizedBox(
          height: kSize.height * 0.06,
        ),
        Text(
          description,
          textAlign: TextAlign.center,
          style: AppTypography.soraRegular
              .copyWith(fontSize: kSize.height * 0.0210, height: 1.4),
        ),
      ],
    );
  }
}
