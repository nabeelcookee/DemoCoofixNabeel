import 'package:coofix/src/presentation/core/constants/constants.dart';
import 'package:coofix/src/presentation/core/constants/strings.dart';
import 'package:coofix/src/presentation/core/theme/colors.dart';
import 'package:coofix/src/presentation/core/theme/typography.dart';
import 'package:coofix/src/presentation/core/values/no_glow_scroll_behaviour.dart';
import 'package:coofix/src/presentation/core/widgets/back_button.dart';
import 'package:coofix/src/presentation/core/widgets/background.dart';
import 'package:coofix/src/presentation/view/manage_address/add_new_address/widgets/alltextformfield.dart';
import 'package:flutter/material.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final kSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.secondaryColor,
      body: SizedBox(
        height: kSize.height,
        width: kSize.width,
        child: ScrollConfiguration(
          behavior: NoGlowScrollBehaviour(),
          child: Stack(
            children: [
              const CommonBackground(),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppConstants.basePadding,
                ),
                child: CustomScrollView(
                  slivers: [
                    SliverLayoutBuilder(
                      builder: (BuildContext context, constraints) {
                        final scrolled = constraints.scrollOffset > 5;
                        return SliverAppBar(
                            pinned: true,
                            elevation: 0,
                            leading: const SizedBox(),
                            expandedHeight: kSize.height * .04,
                            collapsedHeight: kSize.height * 0.08,
                            backgroundColor: scrolled
                                ? AppColors.secondaryColor
                                : AppColors.secondaryColor.withOpacity(.02),
                            flexibleSpace: FlexibleSpaceBar(
                                title: appBar(kSize),
                                centerTitle: true,
                                titlePadding: EdgeInsets.zero,
                                background: const SizedBox()));
                      },
                    ),
                    SliverToBoxAdapter(
                      child: SizedBox(
                        height: kSize.height * 0.05,
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: AllTextFormField(
                        ksize: kSize,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget appBar(Size kSize) {
    return Row(
      children: [
        const CustomBackButton(),
        const Spacer(),
        Text(
          AppStrings.addNewAddress,
          style: AppTypography.soraSemiBold
              .copyWith(fontSize: kSize.height * 0.0210),
        ),
        const Spacer()
      ],
    );
  }
}
