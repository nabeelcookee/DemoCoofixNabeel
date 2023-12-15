import 'package:coofix/app/constants/status/status.dart';
import 'package:coofix/app/constants/storage_constants.dart';
import 'package:coofix/app/router/router_constants.dart';
import 'package:coofix/app/services/local_storage_service.dart';
import 'package:coofix/src/application/auth_bloc/auth_bloc.dart';
import 'package:coofix/src/presentation/core/constants/images.dart';
import 'package:coofix/src/presentation/core/constants/strings.dart';
import 'package:coofix/src/presentation/core/theme/colors.dart';
import 'package:coofix/src/presentation/core/theme/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'widgets/gradient_circular_progress_indiator.dart';

/// TODO: Review changes
//
// - Cross check the process of saving access-token
// - Use log or debugPrint instead of print statement if necessary

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  static String splashRoute = "/splashRoute";

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController;
  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _animationController!.addListener(() => setState(() {}));
    _animationController!.repeat();
     WidgetsBinding.instance.addPostFrameCallback((_) {
    chechPreviouseLogin();
  });
    super.initState();
  }

  @override
  dispose() {
    _animationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final kSize = MediaQuery.of(context).size;
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
         print(" error is ${state.checkAuthStatus}");
        if (state.checkAuthStatus is StatusSuccess) {
          Navigator.pushReplacementNamed(
              context, RouterConstants.bottomNavRoute,
              arguments: 0);
        } else if (state.checkAuthStatus is StatusFailure){
          Navigator.pushReplacementNamed(
              context, RouterConstants.onboardingRoute,
              arguments: 0);
        }
      },
      child: Scaffold(
        body: SizedBox(
          height: kSize.height,
          width: kSize.width,
          child: Stack(
            children: [
              Container(
                height: kSize.height,
                width: kSize.width,
                foregroundDecoration: const BoxDecoration(
                  color: AppColors.primaryColor,
                ),
                child: Image.asset(AppImages.noisePattern, fit: BoxFit.cover),
              ),
              Container(
                height: kSize.height * .6,
                width: kSize.width,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  AppColors.primaryColor.withOpacity(.2),
                  AppColors.primaryColor
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
                child: Image.asset(AppImages.splashBg, fit: BoxFit.cover),
              ),
              Center(
                child: Text(
                  AppStrings.appName,
                  style: AppTypography.soraSemiBold.copyWith(
                    fontSize: kSize.height * 0.0631,
                    color: AppColors.secondaryColor,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    RotationTransition(
                      turns: Tween(begin: 0.0, end: 1.0)
                          .animate(_animationController!),
                      child: GradientCircularProgressIndicator(
                        radius: 10,
                        gradientColors: [
                          AppColors.darkGreyColor.withOpacity(0.01),
                          AppColors.greyColor,
                        ],
                        strokeWidth: 2.0,
                      ),
                    ),
                    SizedBox(
                      height: kSize.height * 0.03,
                    ),
                    Text(
                      AppStrings.splashText,
                      textAlign: TextAlign.center,
                      style: AppTypography.soraRegular.copyWith(
                        color: AppColors.textColor,
                        fontSize: kSize.height * 0.0210,
                      ),
                    ),
                    SizedBox(
                      height: kSize.height * 0.0460,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// TODO: Review changes
  //
  // - Make 'access-token' key as constant variable
  chechPreviouseLogin() async {
    if (LocalStorage.getString(StorageKey.accessToken) != null &&
        LocalStorage.getString(StorageKey.accessToken)!.isNotEmpty) {
      context.read<AuthBloc>().add(const AuthEvent.checkAuth());
    } else {
      Navigator.pushReplacementNamed(context, RouterConstants.onboardingRoute);
    }
  }
}
