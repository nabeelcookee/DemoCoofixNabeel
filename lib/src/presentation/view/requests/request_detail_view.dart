import 'package:coofix/src/presentation/core/constants/constants.dart';
import 'package:coofix/src/presentation/core/constants/strings.dart';
import 'package:coofix/src/presentation/core/theme/colors.dart';
import 'package:coofix/src/presentation/core/theme/typography.dart';
import 'package:coofix/src/presentation/core/values/no_glow_scroll_behaviour.dart';
import 'package:coofix/src/presentation/core/widgets/back_button.dart';
import 'package:coofix/src/presentation/core/widgets/background.dart';
import 'package:flutter/material.dart';
import '../request_detail/widgets/request_detail_tile.dart';
import '../request_detail/widgets/service_details.dart';
import '../request_detail/widgets/technician_details.dart';

class RequestDetailView extends StatelessWidget {
const RequestDetailView({super.key});
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
          child: Stack(alignment: Alignment.topCenter, children: [
            const CommonBackground(),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: AppConstants.basePadding),
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
                    child: SizedBox(height: kSize.height * 0.0368),
                  ),
                  SliverList(
                      delegate: SliverChildListDelegate([
                    const RequestDetailTile(),
                    SizedBox(
                      height: kSize.height * .01,
                    ),
                    Text(AppStrings.technicianDetails,
                        style: AppTypography.soraRegular.copyWith(
                            fontSize: kSize.height * 0.0210,
                            color: AppColors.lightGrey)),
                    SizedBox(
                      height: kSize.height * .02,
                    ),
                    const TechnicianDetails(),
                    SizedBox(
                      height: kSize.height * .025,
                    ),
                    Text(AppStrings.serviceDetails,
                        style: AppTypography.soraRegular.copyWith(
                            fontSize: kSize.height * 0.0210,
                            color: AppColors.lightGrey)),
                    SizedBox(
                      height: kSize.height * .015,
                    ),
                    const ServiceDetails()
                  ]))
                ],
              ),
            )
          ]),
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
          AppStrings.requestDetails,
          style: AppTypography.soraSemiBold
              .copyWith(fontSize: kSize.height * 0.0210),
        ),
        const Spacer()
      ],
    );
  }
}
