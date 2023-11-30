import 'package:coofix/src/presentation/core/constants/images.dart';
import 'package:coofix/src/presentation/core/theme/colors.dart';
import 'package:coofix/src/presentation/core/theme/typography.dart';
import 'package:coofix/src/presentation/core/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class ServiceDetails extends StatelessWidget {
  const ServiceDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final kSize = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        serviceDetailTile(title: 'Date', value: 'June 15, 2023', kSize: kSize),
        const Divider(color: AppColors.dividerGreyColor),
        serviceDetailTile(
            title: 'Time', value: '10:00 AM - 12:00 PM', kSize: kSize),
        const Divider(color: AppColors.dividerGreyColor),
        serviceDetailTile(title: 'Payment', value: 'Credit Card', kSize: kSize),
        const Divider(color: AppColors.dividerGreyColor),
        serviceDetailTile(title: 'Service Fee', value: '\$150', kSize: kSize),
        const Divider(color: AppColors.dividerGreyColor),
        serviceDetailTile(
            title: 'Parts and Materials', value: '\$150', kSize: kSize),
        const Divider(color: AppColors.dividerGreyColor),
        serviceDetailTile(
            title: 'Total',
            value: '\$150',
            kSize: kSize,
            valueColor: AppColors.blueColor),
        const Divider(color: AppColors.dividerGreyColor),
        SizedBox(
          height: kSize.height * .015,
        ),
        Text('Service Description',
            style: AppTypography.soraRegular.copyWith(
                fontSize: kSize.height * 0.0190, color: AppColors.lightGrey)),
        SizedBox(
          height: kSize.height * .015,
        ),
        Text(
            'The air conditioner was not cooling properly. The technician diagnosed the issue as a faulty compressor and replaced it. The AC is now functioning efficiently.',
            style: AppTypography.soraRegular.copyWith(
                fontSize: kSize.height * 0.0190, color: AppColors.blueGrey1)),
        SizedBox(
          height: kSize.height * .03,
        ),
        Text('Additional Notes',
            style: AppTypography.soraRegular.copyWith(
                fontSize: kSize.height * 0.0190, color: AppColors.lightGrey)),
        SizedBox(
          height: kSize.height * .015,
        ),
        Text(
            '[Include any additional notes or comments related to the service]',
            style: AppTypography.soraRegular.copyWith(
                fontSize: kSize.height * 0.0190, color: AppColors.blueGrey1)),
        SizedBox(
          height: kSize.height * .035,
        ),
        PrimaryButton(
          text: '',
          onPressed: () {
            Navigator.pushNamed(context, "/feedBackRoute");
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Provide feedback',
                style: AppTypography.soraSemiBold.copyWith(
                    color: AppColors.secondaryColor,
                    fontSize: kSize.height * 0.0190),
              ),
              SizedBox(width: kSize.width * .01),
              Image.asset(
                AppImages.feedBackIcon,
                height: kSize.height * 0.0315,
              ),
            ],
          ),
        ),
        SizedBox(
          height: kSize.height * .04,
        ),
      ],
    );
  }

  Widget serviceDetailTile(
      {required String title,
      required String value,
      required Size kSize,
      Color? valueColor}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: kSize.height * .01),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: AppTypography.soraSemiBold.copyWith(
                color: AppColors.blueGrey1, fontSize: kSize.height * .019),
          ),
          Text(
            value,
            style: AppTypography.soraSemiBold.copyWith(
                color: valueColor ?? AppColors.primaryColor,
                fontSize: kSize.height * .019),
          ),
        ],
      ),
    );
  }
}
