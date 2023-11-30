import 'package:coofix/app/router/router_constants.dart';
import 'package:coofix/src/presentation/core/constants/images.dart';
import 'package:coofix/src/presentation/core/theme/colors.dart';
import 'package:coofix/src/presentation/core/theme/typography.dart';
import 'package:coofix/src/presentation/core/widgets/footer_button.dart';
import 'package:flutter/material.dart';

class RequestTile extends StatelessWidget {
  const RequestTile({super.key});

  @override
  Widget build(BuildContext context) {
    final kSize = MediaQuery.of(context).size;
    return InkWell(
      highlightColor: AppColors.transparent,
      splashColor: AppColors.transparent,
      onTap: () {
        Navigator.pushNamed(context, RouterConstants.requestDetailRoute);
      },
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(1),
        width: kSize.width,
        margin: EdgeInsets.only(bottom: kSize.height * 0.01),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(kSize.height * 0.0157),
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColors.gradientColorTop,
                  AppColors.secondaryColor.withOpacity(.02)
                ])),
        child: Container(
          width: kSize.width,
          padding: EdgeInsets.symmetric(
              horizontal: kSize.width * 0.0444,
              vertical: kSize.height * 0.0210),
          decoration: BoxDecoration(
              gradient: const LinearGradient(colors: [
                AppColors.rqstTileGradientTop,
                AppColors.rqstTileGradientCenter,
                AppColors.rqstTileGradientBottom
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
              borderRadius: BorderRadius.circular(kSize.height * 0.0157)),
          margin: EdgeInsets.only(bottom: kSize.height * 0.01),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                Image.asset(AppImages.calendarIcon,
                    height: kSize.height * 0.031),
                SizedBox(width: kSize.width * .02),
                RichText(
                  text: TextSpan(
                      text: 'Recently booked',
                      style: AppTypography.soraSemiBold.copyWith(
                          fontSize: kSize.height * 0.0155,
                          color: AppColors.blueGrey1),
                      children: [
                        TextSpan(
                          text: ' AC Repair',
                          style: AppTypography.soraSemiBold.copyWith(
                              fontSize: kSize.height * 0.0155,
                              color: AppColors.blackColor),
                        )
                      ]),
                )
              ]),
              SizedBox(
                height: kSize.height * .017,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: kSize.width * 0.011,
                    vertical: kSize.height * 0.00263),
                decoration: BoxDecoration(
                    color: AppColors.yellowColor,
                    borderRadius:
                        BorderRadius.circular(kSize.height * 0.00263)),
                child: Text('In Progress',
                    style: AppTypography.airbnbCerealMedium.copyWith(
                        color: AppColors.lightWhiteColor,
                        fontSize: kSize.height * 0.0155)),
              ),
              SizedBox(
                height: kSize.height * .01,
              ),
              Text('June 18, 2023, Afternoon',
                  style: AppTypography.soraSemiBold.copyWith(
                      color: AppColors.primaryColor,
                      fontSize: kSize.height * 0.0190)),
              Text('Replaced kitchen faucet',
                  style: AppTypography.soraRegular.copyWith(
                      color: AppColors.blueGrey1,
                      fontSize: kSize.height * 0.0190)),
              SizedBox(
                height: kSize.height * .02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FooterButton(
                    label: 'Reschedule Appointment',
                    onTap: () {},
                  ),
                  TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                          foregroundColor: AppColors.redColor.withOpacity(.02)),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(AppImages.closeIcon,
                              height: kSize.height * 0.0315),
                          SizedBox(width: kSize.width * .01),
                          Text(
                            'Cancel',
                            style: AppTypography.soraSemiBold.copyWith(
                                fontSize: kSize.height * 0.0157,
                                color: AppColors.redColor),
                          )
                        ],
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
