import 'package:coofix/src/presentation/core/constants/strings.dart';
import 'package:coofix/src/presentation/core/theme/typography.dart';
import 'package:coofix/src/presentation/core/widgets/back_button.dart';
import 'package:flutter/material.dart';

class CommonAppBar extends StatelessWidget {
  const CommonAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final kSize = MediaQuery.of(context).size;
    return Row(
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
    );
  }
}
