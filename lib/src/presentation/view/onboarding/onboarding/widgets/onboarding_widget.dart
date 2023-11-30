import 'dart:ui';

import 'package:coofix/app/router/router_constants.dart';
import 'package:coofix/src/presentation/core/constants/images.dart';
import 'package:coofix/src/presentation/core/constants/strings.dart';
import 'package:coofix/src/presentation/core/theme/colors.dart';
import 'package:coofix/src/presentation/core/theme/typography.dart';
import 'package:coofix/src/presentation/core/widgets/primary_button.dart';
import 'package:coofix/src/presentation/core/widgets/title.dart';
import 'package:flutter/material.dart';

class OnboardingContent extends StatefulWidget {
  const OnboardingContent({super.key});

  @override
  State<OnboardingContent> createState() => _OnboardingContentState();
}

class _OnboardingContentState extends State<OnboardingContent> {
  final pageValue = ValueNotifier(0);
  List<String> onboardingImages = [
    AppImages.onboardingImage,
    AppImages.onboardingImageOne,
    AppImages.onboardingImageTwo
  ];
  List<String> titles = [
    AppStrings.onboardingTitle1,
    AppStrings.onboardingTitle2,
    AppStrings.onboardingTitle3,
  ];
  List<String> subTitles = [
    AppStrings.onboardingSubTitle1,
    AppStrings.onboardingSubTitle2,
    AppStrings.onboardingSubTitle3,
  ];
  List<String> descriptions = [
    AppStrings.onboardingDescription1,
    AppStrings.onboardingDescription2,
    AppStrings.onboardingDescription3
  ];
  List<AlignmentGeometry> alignments = [
    Alignment.centerLeft,
    Alignment.center,
    Alignment.centerRight
  ];
  @override
  Widget build(BuildContext context) {
    final kSize = MediaQuery.of(context).size;
    return ValueListenableBuilder(
      valueListenable: pageValue,
      builder: (context, value, child) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: kSize.height * 0.0426),
              Text(
                AppStrings.appName,
                style: AppTypography.soraBold
                    .copyWith(fontSize: kSize.height * 0.04210),
              ),
              SizedBox(height: kSize.height * .01),
              CommonTitle(
                  key: ValueKey<String>(titles[pageValue.value]),
                  description: descriptions[pageValue.value],
                  subTitle: subTitles[pageValue.value],
                  title: titles[pageValue.value]),
              SizedBox(height: kSize.height * 0.01973),
              pageIndicator(kSize),
              onboardingBg(kSize)
            ],
          ),
        );
      },
    );
  }

  Widget pageIndicator(Size kSize) {
    return AnimatedContainer(
        duration: const Duration(milliseconds: 600),
        height: kSize.height * 0.0052,
        width: kSize.width * 0.266,
        alignment: alignments[pageValue.value],
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(kSize.height * 0.0105),
            color: AppColors.lightWhiteColor),
        child: Container(
          height: kSize.height * 0.0052,
          width: kSize.width * 0.0821,
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(kSize.height * 0.0105),
          ),
        ));
  }

  Widget onboardingBg(Size kSize) {
    return Expanded(
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          AnimatedSwitcher(
            switchInCurve: Curves.easeIn,
            duration: const Duration(milliseconds: 600),
            transitionBuilder: (Widget child, Animation<double> animation) {
              // Apply fade transition to the image when switching
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            },
            child: Container(
              width: kSize.width,
              height: 440,
              key: ValueKey<String>(onboardingImages[pageValue.value]),
              foregroundDecoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                AppColors.secondaryColor.withOpacity(.04),
                AppColors.secondaryColor.withOpacity(.9)
              ], begin: Alignment.center, end: Alignment.bottomCenter)),
              child: Image.asset(onboardingImages[pageValue.value],
                  fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: kSize.width * .044, vertical: kSize.height * .03),
            child: PrimaryButton(
              width: kSize.width * .6,
              text: pageValue.value <= 1
                  ? 'Next ${pageValue.value + 1}/3'
                  : AppStrings.startExploring,
              onPressed: () {
                if (pageValue.value < 2) {
                  pageValue.value = (pageValue.value + 1) % titles.length;
                } else {
                  Navigator.pushReplacementNamed(
                      context, RouterConstants.loginRoute);
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
