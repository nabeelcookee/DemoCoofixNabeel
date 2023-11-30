import 'package:coofix/src/presentation/core/constants/constants.dart';
import 'package:coofix/src/presentation/core/constants/images.dart';
import 'package:coofix/src/presentation/core/theme/colors.dart';
import 'package:coofix/src/presentation/core/theme/typography.dart';
import 'package:coofix/src/presentation/core/widgets/custom_gradient_tile.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ServiceList extends StatefulWidget {
  const ServiceList({super.key});

  @override
  State<ServiceList> createState() => _ServiceListState();
}

class _ServiceListState extends State<ServiceList> {
  @override
  Widget build(BuildContext context) {
    final kSize = MediaQuery.of(context).size;
    return SizedBox(
      height: kSize.height * .3,
      child: ListView.builder(
        itemCount: 4,
        primary: false,
        padding:
            const EdgeInsets.symmetric(horizontal: AppConstants.basePadding),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return CustomGradientTile(
              margin: EdgeInsets.only(right: kSize.width * 0.0277),
              width: kSize.width / 1.2,
              gradient: const LinearGradient(colors: [
                AppColors.rqstTileGradientTop,
                AppColors.rqstTileGradientCenter,
                AppColors.rqstTileGradientBottom
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        AppImages.calendarIcon,
                        height: kSize.height * 0.0315,
                      ),
                      SizedBox(width: kSize.width * .02),
                      RichText(
                          text: TextSpan(
                              text: 'Recently booked',
                              style: AppTypography.soraSemiBold.copyWith(
                                  fontSize: kSize.height * 0.01578,
                                  color: AppColors.blueGrey1),
                              children: [
                            TextSpan(
                                text: ' AC Repair',
                                style: AppTypography.soraSemiBold.copyWith(
                                    fontSize: kSize.height * 0.01578,
                                    color: AppColors.blackColor))
                          ])),
                    ],
                  ),
                  SizedBox(
                    height: kSize.height * .018,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: kSize.width * 0.011,
                        vertical: kSize.height * 0.0026),
                    decoration: BoxDecoration(
                        color: AppColors.yellowColor,
                        borderRadius:
                            BorderRadius.circular(kSize.height * 0.0026)),
                    child: Text('In Progress',
                        style: AppTypography.airbnbCerealMedium.copyWith(
                            fontSize: kSize.height * 0.01578,
                            color: AppColors.secondaryColor)),
                  ),
                  SizedBox(height: kSize.height * .01),
                  Text('June 18, 2023, Afternoon',
                      style: AppTypography.soraSemiBold.copyWith(
                          fontSize: kSize.height * 0.019,
                          color: AppColors.blackColor)),
                  SizedBox(
                    height: kSize.height * .005,
                  ),
                  Text('Replaced kitchen faucet',
                      style: AppTypography.soraRegular.copyWith(
                          fontSize: kSize.height * 0.019,
                          color: AppColors.blueGrey1)),
                  SizedBox(
                    height: kSize.height * .015,
                  ),
                  Container(
                    height: 1,
                    width: kSize.width,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                      AppColors.borderGradient,
                      AppColors.borderGradient.withOpacity(.02)
                    ])),
                  ),
                  SizedBox(
                    height: kSize.height * .015,
                  ),
                  Row(
                    children: [
                      Container(
                        height: kSize.height * 0.06315,
                        width: kSize.height * 0.06315,
                        decoration: const BoxDecoration(shape: BoxShape.circle),
                        clipBehavior: Clip.antiAlias,
                        child: Image.asset(AppImages.serviceMan,
                            fit: BoxFit.cover),
                      ),
                      SizedBox(
                        width: kSize.width * .02,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Assigned Tech.',
                              style: AppTypography.soraRegular.copyWith(
                                  fontSize: kSize.height * 0.0155,
                                  color: AppColors.greenColor)),
                          SizedBox(
                            height: kSize.height * .005,
                          ),
                          Text('John Smith',
                              style: AppTypography.soraSemiBold.copyWith(
                                  fontSize: kSize.height * 0.019,
                                  color: AppColors.blackColor)),
                        ],
                      ),
                      const Spacer(),
                      TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: AppColors.blueColor,
                              padding: EdgeInsets.symmetric(
                                  vertical: kSize.height * 0.0197),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      kSize.height * 0.01052))),
                          onPressed: () {
                            launchDIaler('8606936845');
                          },
                          child: Image.asset(
                            AppImages.callIcon,
                            height: kSize.height * 0.03157,
                          )),
                    ],
                  )
                ],
              ));
        },
      ),
    );
  }

  launchDIaler(String phoneNumber) async {
    String message = "No phone number given";
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    try {
      if (await canLaunchUrl(launchUri)) {
        await launchUrl(launchUri);
      } else {
        if (mounted) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(message)));
        }
      }
    } catch (_) {}
  }
}
