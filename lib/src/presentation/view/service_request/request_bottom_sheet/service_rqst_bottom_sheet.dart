import 'dart:developer';

import 'package:coofix/app/router/router_constants.dart';
import 'package:coofix/src/presentation/core/constants/constants.dart';
import 'package:coofix/src/presentation/core/constants/images.dart';
import 'package:coofix/src/presentation/core/constants/strings.dart';
import 'package:coofix/src/presentation/core/theme/colors.dart';
import 'package:coofix/src/presentation/core/theme/typography.dart';
import 'package:coofix/src/presentation/core/values/no_glow_scroll_behaviour.dart';
import 'package:coofix/src/presentation/core/widgets/custom_gradient_tile.dart';
import 'package:coofix/src/presentation/core/widgets/footer_button.dart';
import 'package:coofix/src/presentation/core/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class ServiceRequestBottomSheet extends StatefulWidget {
  const ServiceRequestBottomSheet({super.key , required this.serviceId});
  final String serviceId;

  @override
  State<ServiceRequestBottomSheet> createState() =>
      _ServiceRequestBottomSheetState();
}

class _ServiceRequestBottomSheetState extends State<ServiceRequestBottomSheet> {
  final selected = ValueNotifier([-1]);
  @override
  Widget build(BuildContext context) {
    final kSize = MediaQuery.of(context).size;
    return DraggableScrollableSheet(
      initialChildSize: 0.7,
      minChildSize: 0.5,
      maxChildSize: 0.85,
      expand: false,
      builder: (context, scrollController) {
        return Container(
          padding: EdgeInsets.only(top: kSize.height * 0.04210),
          child: ScrollConfiguration(
            behavior: NoGlowScrollBehaviour(),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: AppConstants.basePadding),
                      child: Text(
                        'Choose your products',
                        style: AppTypography.soraSemiBold.copyWith(
                            color: AppColors.primaryColor,
                            fontSize: kSize.height * 0.0295),
                      ),
                    ),
                    SizedBox(height: kSize.height * .01),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: AppConstants.basePadding),
                      child: Text(
                        ' if it’s not exists this list ignore it',
                        style: AppTypography.soraRegular.copyWith(
                            color: AppColors.blueGrey1,
                            fontSize: kSize.height * 0.0184),
                      ),
                    ),
                    SizedBox(height: kSize.height * .02),
                    Expanded(
                      child: ListView.builder(
                        itemCount: 3,
                        padding: EdgeInsets.only(
                            right: AppConstants.basePadding,
                            bottom: kSize.height * .18,
                            left: AppConstants.basePadding),
                        itemBuilder: (context, index) {
                          return productListTile(kSize, index);
                        },
                      ),
                    )
                  ],
                ),
                _footerButton(kSize)
              ],
            ),
          ),
        );
      },
    );
  }

  Widget productListTile(Size kSize, int index ,) {
    return ValueListenableBuilder(
      valueListenable: selected,
      builder: (context, value, child) {
        return InkWell(
          highlightColor: AppColors.transparent,
          splashColor: AppColors.transparent,
          onTap: () {
            if (selected.value.contains(index)) {
              selected.value = List.from(selected.value)..remove(index);
            } else {
              selected.value = List.from(selected.value)..add(index);
            }
          },
          child: CustomGradientTile(
              gradient: const LinearGradient(colors: [
                AppColors.rqstTileGradientTop,
                AppColors.rqstTileGradientCenter,
                AppColors.rqstTileGradientBottom
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
              child: Row(children: [
                Flexible(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: kSize.height * 0.1421,
                        width: kSize.height * 0.1421,
                        foregroundDecoration: BoxDecoration(
                            color: selected.value.contains(index)
                                ? AppColors.blueColor.withOpacity(.8)
                                : AppColors.transparent,
                            borderRadius:
                                BorderRadius.circular(kSize.height * 0.01052)),
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage(AppImages.serviceMan),
                                fit: BoxFit.cover),
                            borderRadius:
                                BorderRadius.circular(kSize.height * 0.01052)),
                      ),
                      if (selected.value.contains(index))
                        Image.asset(
                          AppImages.tickIcon,
                          height: kSize.height * 0.0421,
                        )
                    ],
                  ),
                ),
                SizedBox(
                  width: kSize.width * .0444,
                ),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(
                            horizontal: kSize.width * 0.011,
                            vertical: kSize.height * 0.00263),
                        decoration: BoxDecoration(
                            color: AppColors.greenColor,
                            borderRadius:
                                BorderRadius.circular(kSize.height * 0.00263)),
                        child: Text('Warrenty Status : Active',
                            style: AppTypography.airbnbCerealMedium.copyWith(
                                color: AppColors.secondaryColor,
                                fontSize: kSize.height * 0.0155)),
                      ),
                      SizedBox(
                        height: kSize.height * .01,
                      ),
                      Text(
                        'Air Conditioner Repair',
                        maxLines: 2,
                        style: AppTypography.soraBold.copyWith(
                            color: AppColors.primaryColor,
                            fontSize: kSize.height * 0.0190),
                      ),
                      Text(
                        '(Model: ABC123)',
                        style: AppTypography.soraBold.copyWith(
                            color: AppColors.primaryColor,
                            fontSize: kSize.height * 0.0190),
                      ),
                    ],
                  ),
                )
              ])),
        );
      },
    );
  }

  Widget _footerButton(Size kSize) {
    return Positioned(
      bottom: kSize.height * .019,
      right: kSize.width * 0.044,
      left: kSize.width * 0.044,
      child: Column(
        children: [
          PrimaryButton(
            text: AppStrings.continueButtonText,
            onPressed: () {
              Navigator.pushNamed(
                  context, RouterConstants.notesAndRestrictionRoute);
            },
          ),
          SizedBox(
            height: kSize.height * .02,
          ),
          FooterButton(
              width: kSize.width,
              onTap: () {},
              label: '',
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    AppStrings.notFromthisList,
                    style: AppTypography.soraSemiBold.copyWith(
                        fontSize: kSize.height * 0.019,
                        color: AppColors.primaryColor),
                  ),
                  SizedBox(
                    width: kSize.width * .02,
                  ),
                  Image.asset(AppImages.arrowIcon,
                      height: kSize.height * 0.0295,
                      color: AppColors.blackColor),
                ],
              ))
        ],
      ),
    );
  }
}
