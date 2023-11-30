import 'package:coofix/src/presentation/core/constants/constants.dart';
import 'package:coofix/src/presentation/core/constants/images.dart';
import 'package:coofix/src/presentation/core/constants/strings.dart';
import 'package:coofix/src/presentation/core/theme/colors.dart';
import 'package:coofix/src/presentation/core/theme/typography.dart';
import 'package:coofix/src/presentation/view/service_detail/widgets/customer_review_list.dart';
import 'package:coofix/src/presentation/view/service_detail/widgets/expandable_text.dart';
import 'package:flutter/material.dart';

class ServiceDetailsData extends StatelessWidget {
  const ServiceDetailsData({super.key});

  @override
  Widget build(BuildContext context) {
    final kSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppConstants.basePadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ExpandableText(
            max: .4,
            text:
                'Our AC Repair service is designed to address various issues and restore the optimal functioning of your air conditioning unit Diagnostic assessment, parts replacement if required, system cleaning, and performance testing.Diagnostic assessment, parts replacement if required, system cleaning, and performance testing.',
          ),
          SizedBox(
            height: kSize.height * .015,
          ),
          serviceDetails(
              kSize: kSize,
              label: 'Service Duration ',
              text: '. Approximately 1-2 hours.'),
          SizedBox(height: kSize.height * .01),
          serviceDetails(
              kSize: kSize,
              label: 'Availability ',
              text: '. Monday to Saturday'),
          SizedBox(height: kSize.height * .02),
          Text(
            AppStrings.includeService,
            style: AppTypography.soraSemiBold.copyWith(
                fontSize: kSize.height * 0.016, color: AppColors.greyColor1),
          ),
          SizedBox(height: kSize.height * .015),
          Text(
            'Diagnostic assessment, parts replacement if required, system cleaning, and performance testing.',
            style: AppTypography.soraRegular.copyWith(
                fontSize: kSize.height * 0.019, color: AppColors.darkGrey1),
          ),
          SizedBox(
            height: kSize.height * .02,
          ),
          Row(
            children: [
              Image.asset(
                AppImages.awardIcon,
                height: kSize.height * 0.0621,
              ),
              SizedBox(
                width: kSize.width * .02,
              ),
              Flexible(
                child: Text(
                  'Certified technicians with expertise in AC repair.',
                  style: AppTypography.soraSemiBold.copyWith(
                      fontSize: kSize.height * 0.019,
                      color: AppColors.blackColor),
                ),
              ),
            ],
          ),
          SizedBox(
            height: kSize.height * .02,
          ),
          const Divider(
            color: AppColors.lightGrey1,
          ),
          SizedBox(
            height: kSize.height * .02,
          ),
          Text(
            AppStrings.additionalnotes,
            style: AppTypography.soraSemiBold.copyWith(
                fontSize: kSize.height * 0.016, color: AppColors.greyColor1),
          ),
          SizedBox(height: kSize.height * .015),
          Text(
            'Please ensure the AC unit is accessible and the power supply is available during the service.',
            style: AppTypography.soraRegular.copyWith(
                fontSize: kSize.height * 0.019, color: AppColors.darkGrey1),
          ),
          SizedBox(
            height: kSize.height * .02,
          ),
          const Divider(
            color: AppColors.lightGrey1,
          ),
          SizedBox(
            height: kSize.height * .02,
          ),
          Text(
            AppStrings.customerReviews,
            style: AppTypography.soraSemiBold.copyWith(
                fontSize: kSize.height * 0.016, color: AppColors.greyColor1),
          ),
          const CustomerReviewList()
        ],
      ),
    );
  }

  Widget serviceDetails(
      {required Size kSize, required String label, required String text}) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: kSize.height * 0.0105, horizontal: kSize.width * 0.022),
      decoration: BoxDecoration(
          color: AppColors.filterGrey,
          borderRadius: BorderRadius.circular(kSize.height * 0.0052)),
      child: RichText(
          text: TextSpan(
              text: label,
              style: AppTypography.airbnbCerealMedium.copyWith(
                  color: AppColors.darkGrey1, fontSize: kSize.height * 0.0184),
              children: [
            TextSpan(
                text: text,
                style: AppTypography.airbnbCerealMedium.copyWith(
                    color: AppColors.blackColor,
                    fontSize: kSize.height * 0.0184))
          ])),
    );
  }
}
