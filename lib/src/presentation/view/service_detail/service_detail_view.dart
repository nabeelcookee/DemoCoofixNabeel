import 'package:coofix/src/presentation/core/constants/constants.dart';
import 'package:coofix/src/presentation/core/constants/images.dart';
import 'package:coofix/src/presentation/core/constants/strings.dart';
import 'package:coofix/src/presentation/core/theme/colors.dart';
import 'package:coofix/src/presentation/core/theme/typography.dart';
import 'package:coofix/src/presentation/core/values/no_glow_scroll_behaviour.dart';
import 'package:coofix/src/presentation/core/widgets/back_button.dart';
import 'package:coofix/src/presentation/core/widgets/primary_button.dart';
import 'package:flutter/material.dart';

import 'widgets/service_details.dart';

class ServiceDetailView extends StatefulWidget {
  const ServiceDetailView({super.key});

  @override
  State<ServiceDetailView> createState() => _ServiceDetailViewState();
}

class _ServiceDetailViewState extends State<ServiceDetailView> {
  bool active = false;
  @override
  Widget build(BuildContext context) {
    final kSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.secondaryColor,
      bottomNavigationBar: const Padding(
        padding: EdgeInsets.symmetric(horizontal: AppConstants.basePadding),
        child: PrimaryButton(text: AppStrings.requestService),
      ),
      body: SizedBox(
        height: kSize.height,
        width: kSize.width,
        child: ScrollConfiguration(
          behavior: NoGlowScrollBehaviour(),
          child: CustomScrollView(
            slivers: [
              SliverLayoutBuilder(
                builder: (BuildContext context, constraints) {
                  final scrolled = constraints.scrollOffset > 240;
                  return SliverAppBar(
                      pinned: true,
                      elevation: scrolled ? 4 : 0,
                      leading: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: AppConstants.basePadding),
                        child: CustomBackButton(
                          color: scrolled
                              ? AppColors.blackColor
                              : AppColors.secondaryColor,
                        ),
                      ),
                      expandedHeight: kSize.height * .394,
                      collapsedHeight: kSize.height * 0.08,
                      backgroundColor: scrolled
                          ? AppColors.secondaryColor
                          : AppColors.secondaryColor.withOpacity(.02),
                      flexibleSpace: FlexibleSpaceBar(
                        titlePadding: EdgeInsets.zero,
                        background: appBar(kSize),
                      ));
                },
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: kSize.height * .018,
                ),
              ),
              SliverList(
                  delegate: SliverChildListDelegate([
                const ServiceDetailsData(),
              ]))
            ],
          ),
        ),
      ),
    );
  }

  Widget appBar(Size kSize) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Container(
          foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            AppColors.blackColor.withOpacity(.7),
            AppColors.blackColor.withOpacity(.04)
          ], begin: Alignment.centerLeft, end: Alignment.centerRight)),
          height: kSize.height * 0.394,
          width: kSize.width,
          child: Image.asset(AppImages.serviceMan, fit: BoxFit.cover),
        ),
        Positioned(
          bottom: 16,
          left: 16,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'AC Repair',
                style: AppTypography.soraSemiBold.copyWith(
                    fontSize: kSize.height * 0.029,
                    color: AppColors.secondaryColor),
              ),
              SizedBox(height: kSize.height * .005),
              Text(
                '214 Successful Repairs',
                style: AppTypography.soraRegular.copyWith(
                    fontSize: kSize.height * 0.0164,
                    color: AppColors.secondaryColor),
              ),
            ],
          ),
        )
      ],
    );
  }
}
