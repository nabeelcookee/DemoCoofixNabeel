import 'package:coofix/src/presentation/core/constants/images.dart';
import 'package:coofix/src/presentation/core/theme/colors.dart';
import 'package:coofix/src/presentation/core/theme/typography.dart';
import 'package:coofix/src/presentation/core/widgets/custom_gradient_tile.dart';
import 'package:flutter/material.dart';

class RequestDetailTile extends StatelessWidget {
  const RequestDetailTile({super.key});

  @override
  Widget build(BuildContext context) {
    final kSize = MediaQuery.of(context).size;
    return CustomGradientTile(
      width: kSize.width,
      gradient: LinearGradient(colors: [
        AppColors.rqstTileGradientTop,
        AppColors.rqstTileGradientCenter,
        AppColors.rqstTileGradientBottom.withOpacity(.05)
      ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
      child: Row(children: [
        Container(
          height: kSize.height * 0.1421,
          width: kSize.height * 0.1421,
          decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage(AppImages.serviceMan), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(kSize.height * 0.01052)),
        ),
        SizedBox(
          width: kSize.width * .0444,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'RQ123456789',
              style: AppTypography.airbnbCerealMedium.copyWith(
                  color: AppColors.textColor, fontSize: kSize.height * 0.01558),
            ),
            SizedBox(
              height: kSize.height * .01,
            ),
            Text(
              'Air Conditioner Repair',
              style: AppTypography.soraBold.copyWith(
                  color: AppColors.primaryColor,
                  fontSize: kSize.height * 0.0190),
            ),
            SizedBox(
              height: kSize.height * .01,
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(
                  horizontal: kSize.width * 0.011,
                  vertical: kSize.height * 0.00263),
              decoration: BoxDecoration(
                  color: AppColors.greenColor,
                  borderRadius: BorderRadius.circular(kSize.height * 0.00263)),
              child: Text('Completed',
                  style: AppTypography.airbnbCerealMedium.copyWith(
                      color: AppColors.secondaryColor,
                      fontSize: kSize.height * 0.0155)),
            )
          ],
        )
      ]),
    );
  }
}
