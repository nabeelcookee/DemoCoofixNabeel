import 'package:coofix/app/constants/status/status.dart';
import 'package:coofix/app/router/router_constants.dart';
import 'package:coofix/src/application/auth_bloc/auth_bloc.dart';
import 'package:coofix/src/presentation/core/constants/constants.dart';
import 'package:coofix/src/presentation/core/constants/images.dart';
import 'package:coofix/src/presentation/core/constants/strings.dart';
import 'package:coofix/src/presentation/core/theme/colors.dart';
import 'package:coofix/src/presentation/core/theme/typography.dart';
import 'package:coofix/src/presentation/core/values/form_validators.dart';
import 'package:coofix/src/presentation/core/widgets/background.dart';
import 'package:coofix/src/presentation/core/widgets/custom_dialpad.dart';
import 'package:coofix/src/presentation/core/widgets/custom_textfield.dart';
import 'package:coofix/src/presentation/core/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

/// TODO: Review changes
//
// - Implement proper validation for the phone number field
// - Fix Automatically navigating to next otp page even phone number field is empty
// - Implement proper error handling (Error message dialog) implemented or not working

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController phoneController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final kSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.secondaryColor,
      body: SizedBox(
          height: kSize.height,
          width: kSize.width,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
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
                        padding: const EdgeInsets.symmetric(horizontal: AppConstants.basePadding),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(AppStrings.appName, style: AppTypography.soraBold.copyWith(fontSize: kSize.height * 0.0421)),
                            SizedBox(
                              height: kSize.height * 0.0236,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: kSize.width * 0.0222, vertical: kSize.height * .01),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(kSize.height * 0.0052), color: AppColors.blueColor),
                              child: Text(AppStrings.loginTitle, style: AppTypography.airbnbCerealRegular.copyWith(color: AppColors.secondaryColor, fontSize: kSize.height * 0.0184)),
                            ),
                            SizedBox(
                              height: kSize.height * 0.0197,
                            ),
                            Text(AppStrings.loginSubTitle, style: AppTypography.soraSemiBold.copyWith(fontSize: kSize.height * 0.0391)),
                            SizedBox(
                              height: kSize.height * 0.0155,
                            ),
                            CustomTextField(
                                label: AppStrings.enterPhoneNumberText,
                                controller: phoneController,
                                maxLength: 10,
                                autoFocus: true,
                                errorMessage: 'Please enter a valid phone number',
                                readOnly: true,
                                validator: (value) {
                                  return FormValidators.phoneValidate(value);
                                },
                                prefixIcon: Padding(
                                  padding: EdgeInsets.only(top: kSize.height * 0.016, bottom: kSize.height * 0.016, left: kSize.width * 0.04444, right: kSize.width * .02),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        "+91  ",
                                        style: AppTypography.soraSemiBold.copyWith(
                                          color: AppColors.blueGrey,
                                          fontSize: kSize.height * 0.01905,
                                        ),
                                      ),
                                      Image.asset(
                                        AppImages.arrowDownIcon,
                                        height: kSize.height * .01,
                                      )
                                    ],
                                  ),
                                ),
                                onChanged: (value) {
                                  phoneController.selection = TextSelection.fromPosition(TextPosition(offset: value.length));
                                }),
                            SizedBox(
                              height: kSize.height * 0.01315,
                            ),
                            //
                            // OLD METHOD --------------
                            //
                            // BlocConsumer<AuthBloc, AuthState>(
                            //   listener: (context, state) {
                            //     if (!state.isSendingOtp) {
                            //       if (state.errorMessage.isNotEmpty) {
                            //         Fluttertoast.showToast(
                            //           msg: state.errorMessage,
                            //           timeInSecForIosWeb: 1,
                            //           backgroundColor: Colors.black,
                            //           textColor: Colors.white,
                            //           fontSize: 16.0,
                            //         );
                            //       } else {}
                            //     }
                            //   },
                            //   listenWhen: (previose, current) => previose.isSendingOtp != current.isSendingOtp,
                            //   builder: (context, state) {
                            //     if (state.isSendingOtp) {
                            //       return const Center(child: CircularProgressIndicator());
                            //     } else {
                            //       return PrimaryButton(
                            //         text: AppStrings.loginButtonLabel,
                            //         onPressed: () async {
                            //           if (formKey.currentState!.validate()) {
                            //             context.read<AuthBloc>().add(
                            //                   AuthEvent.sendOtp(
                            //                     phoneNumber: phoneController.text,
                            //                   ),
                            //                 );
                            //             final result = await Navigator.pushNamed(
                            //               context,
                            //               RouterConstants.otpVerificationRoute,
                            //               arguments: phoneController.text,
                            //             );

                            //             // You can handle the result if needed
                            //             if (result != null) {
                            //               // Handle the result, if needed
                            //               print('OTP Verification Result: $result');
                            //             }
                            //           } else {
                            //             Fluttertoast.showToast(
                            //               msg: 'Please enter a valid phone number',
                            //               timeInSecForIosWeb: 1,
                            //               backgroundColor: Colors.black,
                            //               textColor: Colors.white,
                            //               fontSize: 16.0,
                            //             );
                            //           }
                            //         },
                            //       );
                            //     }
                            //   },
                            // ),

                            //
                            // NEW METHOD -------------
                            //
                            BlocConsumer<AuthBloc, AuthState>(
                              listener: (context, state) {
                                if (state.sendOtpStatus is StatusSuccess) {
                                  Navigator.pushNamed(
                                    context,
                                    RouterConstants.otpVerificationRoute,
                                    arguments: phoneController.text,
                                  );
                                } else if (state.sendOtpStatus is StatusFailure) {
                                  Fluttertoast.showToast(
                                    msg: state.sendOtpStatus.errorMessage,
                                    timeInSecForIosWeb: 1,
                                    backgroundColor: Colors.black,
                                    textColor: Colors.white,
                                    fontSize: 16.0,
                                  );
                                }
                              },
                              listenWhen: (previous, current) => previous.sendOtpStatus != current.sendOtpStatus,
                              builder: (context, state) {
                                if (state.sendOtpStatus is StatusLoading) {
                                  return const Center(child: CircularProgressIndicator());
                                } else {
                                  return PrimaryButton(
                                    text: AppStrings.loginButtonLabel,
                                    onPressed: () async {
                                      if (formKey.currentState!.validate()) {
                                        context.read<AuthBloc>().add(AuthEvent.sendOtp(phoneNumber: phoneController.text));
                                      } else {
                                        Fluttertoast.showToast(
                                          msg: 'Please enter a valid phone number',
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
                            //
                            //
                            //
                            //
                            SizedBox(
                              height: kSize.height * 0.01973,
                            ),
                            Center(
                              child: RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                      children: [
                                        TextSpan(text: ' Terms of Service', style: AppTypography.soraRegular.copyWith(color: AppColors.primaryColor, fontSize: kSize.height * 0.0157)),
                                        TextSpan(text: ' and', style: AppTypography.soraRegular.copyWith(color: AppColors.textColor, fontSize: kSize.height * 0.0157)),
                                        TextSpan(text: ' Privacy Policy', style: AppTypography.soraRegular.copyWith(color: AppColors.primaryColor, fontSize: kSize.height * 0.0157)),
                                        TextSpan(text: ' in\nuse of the coofix.', style: AppTypography.soraRegular.copyWith(color: AppColors.textColor, fontSize: kSize.height * 0.0157)),
                                      ],
                                      text: 'By providing my phone number, I hereby agree and\naccept the',
                                      style: AppTypography.soraRegular.copyWith(color: AppColors.textColor, fontSize: kSize.height * 0.0157))),
                            ),
                            SizedBox(
                              height: kSize.height * 0.015,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                            color: AppColors.dialPadGrey,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: kSize.height * 0.015,
                                ),
                                CustomDialpad(maxLength: 10, controller: phoneController),
                                SizedBox(height: kSize.height * 0),
                              ],
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
