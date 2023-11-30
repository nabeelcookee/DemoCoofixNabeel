import 'package:coofix/src/presentation/core/constants/constants.dart';
import 'package:coofix/src/presentation/core/constants/strings.dart';
import 'package:coofix/src/presentation/core/theme/colors.dart';
import 'package:coofix/src/presentation/core/theme/typography.dart';
import 'package:coofix/src/presentation/core/values/no_glow_scroll_behaviour.dart';
import 'package:coofix/src/presentation/core/widgets/back_button.dart';
import 'package:coofix/src/presentation/core/widgets/background.dart';
import 'package:coofix/src/presentation/core/widgets/primary_button.dart';
import 'package:coofix/src/presentation/view/manage_address/Widgets/addresscontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ManageDetailScreen extends StatelessWidget {
  const ManageDetailScreen({super.key});

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
            alignment: Alignment.topCenter,
            children: [
              const CommonBackground(),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppConstants.basePadding,
                ),
                child: CustomScrollView(
                  slivers: [
                    SliverAppBar(
                      systemOverlayStyle: const SystemUiOverlayStyle(
                        statusBarColor: AppColors.transparent,
                      ),
                      backgroundColor: AppColors.transparent,
                      pinned: true,
                      elevation: 0,
                      leading: const SizedBox(),
                      expandedHeight: kSize.height * .04,
                      collapsedHeight: kSize.height * 0.08,
                      flexibleSpace: FlexibleSpaceBar(
                        title: appBar(kSize),
                        centerTitle: true,
                        titlePadding: EdgeInsets.zero,
                        background: const SizedBox(),
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: SingleChildScrollView(
                        child: SizedBox(
                          child: AddressContainer(
                            kSize: kSize,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                child: SizedBox(
                  width: kSize.width,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppConstants.basePadding,
                      vertical: AppConstants.basePadding,
                    ),
                    child: PrimaryButton(
                      text: "Add New",
                      onPressed: () {
                        Navigator.pushNamed(context, "/addNewAddress");
                      },
                    ),
                  ),
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
          AppStrings.manageAddress,
          style: AppTypography.soraSemiBold
              .copyWith(fontSize: kSize.height * 0.0210),
        ),
        const Spacer()
      ],
    );
  }
}
