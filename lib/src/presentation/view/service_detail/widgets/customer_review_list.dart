import 'package:coofix/src/presentation/core/constants/images.dart';
import 'package:coofix/src/presentation/core/theme/colors.dart';
import 'package:coofix/src/presentation/core/theme/typography.dart';
import 'package:flutter/material.dart';

class CustomerReviewList extends StatelessWidget {
  const CustomerReviewList({super.key});

  @override
  Widget build(BuildContext context) {
    final kSize = MediaQuery.of(context).size;
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: 3,
      primary: false,
      padding: EdgeInsets.only(top: kSize.height * .02),
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '''"The AC repair service was prompt and professional.AC is working perfectly now."''',
              style: AppTypography.soraRegular.copyWith(
                  fontSize: kSize.height * 0.019, color: AppColors.blueGrey1),
            ),
            Row(
              children: [
                Container(
                  height: kSize.height * 0.0861,
                  width: kSize.width * 0.0861,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  child: Image.asset(AppImages.serviceMan, fit: BoxFit.cover),
                ),
                SizedBox(width: kSize.width * .015),
                Text(
                  'Alex Ash',
                  style: AppTypography.soraRegular.copyWith(
                      fontSize: kSize.height * 0.019,
                      color: AppColors.blueGrey1),
                ),
              ],
            )
          ],
        );
      },
    );
  }
}
