import 'package:coofix/app/router/router_constants.dart';
import 'package:coofix/src/presentation/core/constants/constants.dart';
import 'package:coofix/src/presentation/core/constants/images.dart';
import 'package:coofix/src/presentation/core/constants/strings.dart';
import 'package:coofix/src/presentation/core/theme/colors.dart';
import 'package:coofix/src/presentation/core/theme/typography.dart';
import 'package:coofix/src/presentation/core/widgets/background.dart';
import 'package:coofix/src/presentation/core/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class RequestSuccessView extends StatefulWidget {
  const RequestSuccessView({super.key});

  @override
  State<RequestSuccessView> createState() => _RequestSuccessViewState();
}

class _RequestSuccessViewState extends State<RequestSuccessView> {
  @override
  Widget build(BuildContext context) {
    final kSize = MediaQuery.of(context).size;
    return Scaffold(
      extendBody: true,
      backgroundColor: AppColors.secondaryColor,
      bottomNavigationBar: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: AppConstants.basePadding),
        child: PrimaryButton(
          text: AppStrings.backToHome,
          icon: AppImages.homeIcon,
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
                context, RouterConstants.bottomNavRoute, (route) => false,
                arguments: 0);
          },
        ),
      ),
      body: SizedBox(
          height: kSize.height,
          width: kSize.width,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              const CommonBackground(),
              Column(
                children: [
                  SizedBox(height: kSize.height * .08),
                  Image.asset(
                    AppImages.successIcon,
                    height: kSize.height * 0.1368,
                  ),
                  SizedBox(height: kSize.height * .025),
                  Text(
                    "Service Request\nSubmitted Successfully!",
                    textAlign: TextAlign.center,
                    style: AppTypography.soraSemiBold.copyWith(
                        fontSize: kSize.height * 0.03157,
                        color: AppColors.blackColor),
                  ),
                  SizedBox(height: kSize.height * .025),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: kSize.width * .066),
                    child: Text(
                      "Your request has been received, and our team is working on scheduling your appointment.",
                      textAlign: TextAlign.center,
                      style: AppTypography.soraRegular.copyWith(
                          fontSize: kSize.height * .02,
                          color: AppColors.blueGrey1),
                    ),
                  ),
                  SizedBox(height: kSize.height * .1),
                  Container(
                    width: kSize.width,
                    padding: EdgeInsets.only(
                        right: AppConstants.basePadding,
                        top: kSize.height * .04,
                        left: AppConstants.basePadding),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              AppColors.successGrey,
                              AppColors.successGrey.withOpacity(0)
                            ]),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(kSize.height * 0.03157),
                            topRight: Radius.circular(kSize.height * 0.03157))),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          serviceData(
                              kSize, "Picked Services", 'AC Repair, Fridge'),
                          serviceData(kSize, 'Date & Time',
                              '04 Thursday, March - Morning'),
                          serviceData(kSize, 'Status', 'Awaiting Approval'),
                        ]),
                  )
                ],
              )
            ],
          )),
    );
  }

  Widget serviceData(Size kSize, String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: AppTypography.airbnbCerealRegular.copyWith(
              fontSize: kSize.height * 0.019, color: AppColors.blueGrey1),
        ),
        SizedBox(height: kSize.height * .005),
        Text(
          value,
          style: AppTypography.airbnbCerealMedium.copyWith(
              fontSize: kSize.height * 0.024, color: AppColors.blackColor),
        ),
        SizedBox(height: kSize.height * .02),
      ],
    );
  }
}
