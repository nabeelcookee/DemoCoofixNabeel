import 'dart:developer';

import 'package:coofix/src/presentation/core/constants/constants.dart';
import 'package:coofix/src/presentation/core/constants/images.dart';
import 'package:coofix/src/presentation/core/constants/strings.dart';
import 'package:coofix/src/presentation/core/theme/colors.dart';
import 'package:coofix/src/presentation/core/theme/typography.dart';
import 'package:coofix/src/presentation/core/values/no_glow_scroll_behaviour.dart';
import 'package:coofix/src/presentation/core/widgets/back_button.dart';
import 'package:coofix/src/presentation/core/widgets/background.dart';
import 'package:coofix/src/presentation/core/widgets/primary_button.dart';
import 'package:coofix/src/presentation/view/manage_address/rate_your_experience/widgets/customtextformfield.dart';
import 'package:coofix/src/presentation/view/manage_address/rate_your_experience/widgets/filterlist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RateYourExperienceScreen extends StatelessWidget {
  RateYourExperienceScreen({super.key});
  final TextEditingController feedBackController = TextEditingController();
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
                        height: kSize.height * 0.03,
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: SizedBox(
                        height: kSize.height * 0.11,
                        child: Image.asset(
                          AppImages.rateyourexperinceicon,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: SizedBox(
                        height: kSize.height * 0.02,
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Text(
                          textAlign: TextAlign.center,
                          AppStrings.ratePageParagh,
                          style: AppTypography.soraRegular.copyWith(
                            color: const Color(0xFF64727B),
                            fontSize: kSize.height * 0.02,
                          ),
                        ),
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: SizedBox(
                        height: kSize.height * 0.01,
                      ),
                    ),
                    //Rating bar
                    SliverToBoxAdapter(
                      child: Container(
                        alignment: Alignment.center,
                        child: RatingBar(
                          itemPadding:
                              EdgeInsets.only(right: kSize.height * 0.017),
                          minRating: 0,
                          maxRating: 5,
                          direction: Axis.horizontal,
                          tapOnlyMode: true,
                          ignoreGestures: false,
                          glow: true,
                          ratingWidget: RatingWidget(
                            full: Image.asset(AppImages.filledratingicon),
                            half: Image.asset(AppImages.filledratingicon),
                            empty: Image.asset(AppImages.outlinedratingicon),
                          ),
                          onRatingUpdate: (rating) {
                            // Rating is updated
                            log('rating update to: $rating');
                          },
                        ),
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: SizedBox(
                        height: kSize.height * 0.04,
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: Text(
                        textAlign: TextAlign.center,
                        AppStrings.whatDoYouLikeMost,
                        style: AppTypography.soraRegular.copyWith(
                          fontSize: kSize.height * 0.02,
                          color: const Color(0xFFC9C9C9),
                        ),
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: SizedBox(
                        height: kSize.height * 0.025,
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: FeedBackFilterList(
                        kSize: kSize,
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: SizedBox(
                        height: kSize.height * 0.045,
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: SizedBox(
                        height: kSize.height * 0.01,
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: CustomTextFormFieldFeedBack(
                        controllerName: feedBackController,
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: SizedBox(
                        height: kSize.height * 0.025,
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: PrimaryButton(
                        text: "Continue",
                        onPressed: () {
                          Navigator.pushNamed(
                              context, "/feedBackThankYouRoute");
                        },
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: SizedBox(
                        height: kSize.height * 0.025,
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
          AppStrings.rateYourExperience,
          style: AppTypography.soraSemiBold
              .copyWith(fontSize: kSize.height * 0.0210),
        ),
        const Spacer()
      ],
    );
  }
}
