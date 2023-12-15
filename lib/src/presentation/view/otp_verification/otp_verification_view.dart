import 'package:coofix/app/constants/status/status.dart';
import 'package:coofix/app/router/router_constants.dart';
import 'package:coofix/src/application/auth_bloc/auth_bloc.dart';
import 'package:coofix/src/presentation/core/constants/constants.dart';
import 'package:coofix/src/presentation/core/constants/strings.dart';
import 'package:coofix/src/presentation/core/theme/colors.dart';
import 'package:coofix/src/presentation/core/theme/typography.dart';
import 'package:coofix/src/presentation/core/values/form_validators.dart';
import 'package:coofix/src/presentation/core/widgets/background.dart';
import 'package:coofix/src/presentation/core/widgets/custom_dialpad.dart';
import 'package:coofix/src/presentation/core/widgets/primary_button.dart';
import 'package:coofix/src/presentation/view/otp_verification/widgets/otp_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class OtpVerificationView extends StatefulWidget {
  const OtpVerificationView({super.key, required this.phoneNumber});
  final String phoneNumber;
  @override
  State<OtpVerificationView> createState() => _OtpVerificationViewState();
}

class _OtpVerificationViewState extends State<OtpVerificationView> {
  TextEditingController otpController = TextEditingController();
  ValueNotifier<int> otpTimer = ValueNotifier(0);
  ValueNotifier<bool> enableResend = ValueNotifier<bool>(false);
  final formKey = GlobalKey<FormState>();
  final timerKey = GlobalKey<OtpTimerState>();
  @override
  void initState() {
    Future<void>.delayed(const Duration(minutes: 1)).then((value) {
      enableResend.value = true;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final kSize = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: AppColors.secondaryColor,
        body: SizedBox(
            height: kSize.height,
            width: kSize.width,
            child: Stack(alignment: Alignment.topCenter, children: [
              const CommonBackground(),
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(
                  top: kSize.height * 0.0526,
                ),
                child: Form(
                  key: formKey,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: AppConstants.basePadding),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(AppStrings.appName,
                                    style: AppTypography.soraBold.copyWith(
                                        fontSize: kSize.height * 0.0421)),
                                SizedBox(
                                  height: kSize.height * 0.0236,
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: kSize.width * 0.0222,
                                      vertical: kSize.height * .01),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          kSize.height * 0.0052),
                                      color: AppColors.blueColor),
                                  child: Text(AppStrings.otpVerificationTitle,
                                      style: AppTypography.airbnbCerealRegular
                                          .copyWith(
                                              color: AppColors.secondaryColor,
                                              fontSize: kSize.height * 0.0184)),
                                ),
                                SizedBox(
                                  height: kSize.height * 0.0197,
                                ),
                                Text(AppStrings.otpVerificationSubTitle,
                                    style: AppTypography.soraSemiBold.copyWith(
                                        fontSize: kSize.height * 0.0391)),
                                SizedBox(
                                  height: kSize.height * 0.02,
                                ),
                                Text(
                                    "${AppStrings.otpVerificationDesc} +91 ${widget.phoneNumber}.",
                                    style: AppTypography.soraRegular.copyWith(
                                        color: AppColors.blueGrey1,
                                        fontSize: kSize.height * 0.0157)),
                                SizedBox(
                                  height: kSize.height * .02,
                                ),
                                otpField(kSize),
                                Row(
                                  children: [
                                    Text("Didn’t receive code?",
                                        style: AppTypography.soraRegular
                                            .copyWith(
                                                color: AppColors.blueGrey1,
                                                fontSize:
                                                    kSize.height * 0.0157)),
                                    ValueListenableBuilder(
                                      valueListenable: enableResend,
                                      builder: (context, value, child) {
                                        return TextButton(
                                            onPressed: () {
                                              if (timerKey.currentState!
                                                      .currentSeconds ==
                                                  60) {
                                                timerKey.currentState!
                                                    .startTimeout();
                                                enableResend.value = false;
                                                Future<void>.delayed(
                                                  Duration(
                                                    seconds: timerKey
                                                        .currentState!
                                                        .currentSeconds,
                                                  ),
                                                ).then((value) {
                                                  enableResend.value = true;
                                                });
                                              }
                                            },
                                            style: TextButton.styleFrom(
                                                foregroundColor:
                                                    AppColors.secondaryColor),
                                            child: Text(
                                              'Request again',
                                              style: AppTypography.soraRegular
                                                  .copyWith(
                                                      color: enableResend.value
                                                          ? AppColors.blackColor
                                                          : AppColors
                                                              .buttonGreyColor,
                                                      fontSize: kSize.height *
                                                          0.0157),
                                            ));
                                      },
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: kSize.height * .03,
                                ),
                                BlocConsumer<AuthBloc, AuthState>(
                                  listener: (context, state) {
                                    if (state.otpVerificationStatus
                                        is StatusSuccess) {
                                      Navigator.pushNamedAndRemoveUntil(
                                        context,
                                        RouterConstants.bottomNavRoute,
                                        (route) => false,
                                        arguments: 0,
                                      );
                                    } else if (state.sendOtpStatus
                                        is StatusFailure) {
                                      Fluttertoast.showToast(
                                        msg: state.sendOtpStatus.errorMessage,
                                        timeInSecForIosWeb: 1,
                                        backgroundColor: Colors.black,
                                        textColor: Colors.white,
                                        fontSize: 16.0,
                                      );
                                    }

                                    // if () {
                                    //   if (state.errorMessage.isNotEmpty) {
                                    //     Fluttertoast.showToast(
                                    //       msg: state.errorMessage,
                                    //       timeInSecForIosWeb: 1,
                                    //       backgroundColor: Colors.black,
                                    //       textColor: Colors.white,
                                    //       fontSize: 16.0,
                                    //     );
                                    //   } else {
                                    //     // Navigate to the home page only when OTP verification is successful
                                    //     Navigator.pushNamedAndRemoveUntil(
                                    //       context,
                                    //       RouterConstants.bottomNavRoute,
                                    //       (route) => false,
                                    //       arguments: 0,
                                    //     );
                                    //   }
                                    // }
                                  },
                                  listenWhen: (previous, current) =>
                                      previous.otpVerificationStatus !=
                                      current.otpVerificationStatus,
                                  builder: (context, state) {
                                    if (state.otpVerificationStatus
                                        is StatusLoading) {
                                      return const Center(
                                        child: CircularProgressIndicator(),
                                      );
                                    } else {
                                      return PrimaryButton(
                                        text: 'Verify OTP',
                                        onPressed: () async {
                                          if (otpController.text.length == 4) {
                                            context.read<AuthBloc>().add(
                                                  AuthEvent.verifyOtp(
                                                    otp: otpController.text,
                                                    userId: state.userId,
                                                  ),
                                                );
                                          } else {
                                            Fluttertoast.showToast(
                                              msg: 'Please enter a valid OTP',
                                              timeInSecForIosWeb: 1,
                                              backgroundColor: Colors.black,
                                              textColor: Colors.white,
                                              fontSize: 16.0,
                                            );
                                          }
                                        },
                                      );
                                    }
                                  },
                                ),
                                SizedBox(
                                  height: kSize.height * .06,
                                ),
                              ]),
                        ),
                        Expanded(
                          child: Container(
                            color: AppColors.dialPadGrey,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: kSize.height * 0.015,
                                ),
                                CustomDialpad(
                                    maxLength: 4, controller: otpController),
                                SizedBox(
                                  height: kSize.height * 0.01315,
                                ),
                              ],
                            ),
                          ),
                        )
                      ]),
                ),
              ),
            ])));
  }

  Widget otpField(Size kSize) {
    return TextFormField(
      controller: otpController,
      autofocus: true,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      maxLength: 4,
      showCursor: true,
      onChanged: (value) {
        otpController.selection =
            TextSelection.fromPosition(TextPosition(offset: value.length));
      },
      style: AppTypography.soraSemiBold.copyWith(
          color: AppColors.primaryColor, fontSize: kSize.height * 0.0315),
      readOnly: true,
      cursorColor: AppColors.primaryColor,
      decoration: InputDecoration(
        fillColor: AppColors.textFieldFillColor,
        counter: const SizedBox(),
        focusedBorder: UnderlineInputBorder(
            borderSide:
                BorderSide(color: AppColors.blackColor.withOpacity(.15))),
        enabledBorder: UnderlineInputBorder(
            borderSide:
                BorderSide(color: AppColors.blackColor.withOpacity(.15))),
        disabledBorder: UnderlineInputBorder(
            borderSide:
                BorderSide(color: AppColors.blackColor.withOpacity(.15))),
        border: UnderlineInputBorder(
            borderSide:
                BorderSide(color: AppColors.blackColor.withOpacity(.15))),
        filled: true,
        suffixIconConstraints: BoxConstraints(maxHeight: kSize.height * .02),
        suffixIcon: ValueListenableBuilder(
          valueListenable: otpTimer,
          builder: (context, value, child) {
            return OtpTimer(
              key: timerKey,
              interval: const Duration(seconds: 1),
              timerMaxSeconds: 60,
            );
          },
        ),
      ),
      validator: (value) {
        if (FormValidators.emptyValidate(value!)) {
          return null;
        }
        return 'Please enter valid otp';
      },
    );
  }
}
