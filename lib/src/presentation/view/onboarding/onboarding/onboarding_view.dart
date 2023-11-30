import 'package:coofix/src/presentation/core/theme/colors.dart';
import 'package:coofix/src/presentation/core/widgets/background.dart';
import 'package:coofix/src/presentation/view/onboarding/onboarding/widgets/onboarding_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  @override
  Widget build(BuildContext context) {
    final kSize = MediaQuery.of(context).size;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
          statusBarColor: AppColors.secondaryColor,
          statusBarIconBrightness: Brightness.dark),
      child: Scaffold(
        backgroundColor: AppColors.secondaryColor,
        body: SizedBox(
          height: kSize.height,
          width: kSize.width,
          child: const Stack(
            alignment: Alignment.topCenter,
            children: [CommonBackground(), OnboardingContent()],
          ),
        ),
      ),
    );
  }
}
