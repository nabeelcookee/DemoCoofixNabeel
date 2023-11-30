import 'package:coofix/src/presentation/core/constants/strings.dart';
import 'package:coofix/src/presentation/core/theme/colors.dart';
import 'package:coofix/src/presentation/core/theme/typography.dart';
import 'package:coofix/src/presentation/core/widgets/back_button.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key, required this.title, required this.description});
  final String title;
  final String description;
  @override
  Widget build(BuildContext context) {
    final kSize = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const CustomBackButton(),
            const Spacer(),
            Text(
              AppStrings.requestaService,
              style: AppTypography.soraSemiBold
                  .copyWith(fontSize: kSize.height * .019),
            ),
            const Spacer()
          ],
        ),
        SizedBox(
          height: kSize.height * .025,
        ),
        Text(
          title,
          style: AppTypography.soraSemiBold
              .copyWith(fontSize: kSize.height * 0.02957),
        ),
        SizedBox(
          height: kSize.height * .006,
        ),
        Text(
          description,
          style: AppTypography.soraRegular.copyWith(
              fontSize: kSize.height * .019, color: AppColors.blueGrey1),
        ),
        SizedBox(
          height: kSize.height * .025,
        ),
      ],
    );
  }
}
