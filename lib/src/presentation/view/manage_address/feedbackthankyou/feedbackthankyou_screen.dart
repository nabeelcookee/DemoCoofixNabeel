import 'package:coofix/src/presentation/core/constants/constants.dart';
import 'package:coofix/src/presentation/core/constants/images.dart';
import 'package:coofix/src/presentation/core/constants/strings.dart';
import 'package:coofix/src/presentation/core/theme/colors.dart';
import 'package:coofix/src/presentation/core/theme/typography.dart';
import 'package:coofix/src/presentation/core/widgets/background.dart';
import 'package:coofix/src/presentation/core/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class FeedBackThankYouScreen extends StatelessWidget {
  const FeedBackThankYouScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final kSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.secondaryColor,
      body: Stack(
        children: [
          const CommonBackground(),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppConstants.basePadding,
            ),
            child: SizedBox(
              height: kSize.height,
              width: kSize.width,
              child: Padding(
                padding: EdgeInsets.only(top: kSize.height * 0.1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: kSize.height * 0.16,
                      child: Image.asset(
                        AppImages.smilingStarIcon,
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(
                      height: kSize.height * 0.05,
                    ),
                    Text(
                      AppStrings.thankYou,
                      style: AppTypography.soraSemiBold.copyWith(
                        fontSize: kSize.height * 0.035,
                      ),
                    ),
                    SizedBox(
                      height: kSize.height * 0.025,
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      AppStrings.feedBackThankYouParagh,
                      style: AppTypography.soraRegular.copyWith(
                        fontSize: kSize.height * 0.021,
                        color: AppColors.blueGrey1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: SizedBox(
              width: kSize.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppConstants.basePadding,
                  vertical: AppConstants.basePadding,
                ),
                child: PrimaryButton(
                  text: "",
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Back to home",
                        style: AppTypography.soraSemiBold.copyWith(
                            color: AppColors.secondaryColor,
                            fontSize: kSize.height * 0.0210),
                      ),
                      SizedBox(width: kSize.width * .025),
                      Image.asset(
                        AppImages.footerButtonHomeIcon,
                        height: kSize.height * .035,
                      )
                    ],
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "/bottomNav", arguments: 0);
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
