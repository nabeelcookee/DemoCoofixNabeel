import 'package:coofix/src/application/get_banner_bloc/banner_bloc.dart';
import 'package:coofix/src/presentation/core/constants/constants.dart';
import 'package:coofix/src/presentation/core/constants/images.dart';
import 'package:coofix/src/presentation/core/theme/colors.dart';
import 'package:coofix/src/presentation/core/theme/typography.dart';
import 'package:coofix/src/presentation/view/home/widgets/custom_marquee.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBanner extends StatefulWidget {
  const HomeBanner({
    super.key,
  });

  @override
  State<HomeBanner> createState() => _HomeBannerState();
}

class _HomeBannerState extends State<HomeBanner> {
  @override
    void didChangeDependencies() {
    context.read<BannerBloc>().add(const BannerEvent.getBanner());
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final kSize = MediaQuery.of(context).size;
    return BlocBuilder<BannerBloc, BannerState>(
      builder: (context, state) {
        if (state.bannerList.isEmpty) {
          return Container();
        }

        const index =
            0; // Change this line based on your logic to determine the index

        return Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 150,
              margin: const EdgeInsets.symmetric(
                  horizontal: AppConstants.basePadding),
              padding: EdgeInsets.only(
                  top: kSize.height * 0.0368,
                  left: kSize.width * 0.0666,
                  right: kSize.width * 0.0666),
              width: kSize.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kSize.height * 0.02105),
                image: DecorationImage(
                  image: NetworkImage("${state.bannerList[index].image}"),
                  //  AssetImage(AppImages.homeBannerBg),
                  //AssetImage(state.bannerList[index].banneImage ?? "")
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Limited time offer',
                    style: AppTypography.soraSemiBold.copyWith(
                      fontSize: kSize.height * 0.01842,
                      color: AppColors.lightYellowColor,
                    ),
                  ),
                  SizedBox(height: kSize.height * 0.01315),
                  Text(
                    'Stay Cool\nThis Summer!',
                    style: AppTypography.soraSemiBold.copyWith(
                      fontSize: kSize.height * 0.0289,
                      color: AppColors.secondaryColor,
                    ),
                  ),
                  SizedBox(height: kSize.height * 0.11842),
                ],
              ),
            ),
            Container(
              clipBehavior: Clip.antiAlias,
              margin: const EdgeInsets.symmetric(
                  horizontal: AppConstants.basePadding),
              height: kSize.height * 0.0526,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(kSize.height * 0.02105),
                  bottomRight: Radius.circular(kSize.height * 0.02105),
                ),
                gradient: LinearGradient(
                  colors: [
                    AppColors.lightYellowColor,
                    AppColors.lightYellowColor.withOpacity(.6),
                  ],
                ),
              ),
              child: ScrollingText(
                ratioOfBlankToScreen: 0.01,
                text: '15% off on AC maintenance services. ',
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '15% off on AC maintenance services. ',
                      style: AppTypography.soraRegular.copyWith(
                        color: AppColors.primaryColor,
                        fontSize: kSize.height * 0.01842,
                      ),
                    ),
                    Image.asset(
                      AppImages.starIcon,
                      height: kSize.height * .02,
                    ),
                    SizedBox(width: kSize.width * .02),
                    Text(
                      '15% off on AC maintenance services. ',
                      style: AppTypography.soraRegular.copyWith(
                        color: AppColors.primaryColor,
                        fontSize: kSize.height * 0.01842,
                      ),
                    ),
                    Image.asset(
                      AppImages.starIcon,
                      height: kSize.height * .02,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              right: kSize.width * 0.0444,
              bottom: kSize.height * 0.05,
              child: Image.asset(
                AppImages.ac,
                height: kSize.height * .2,
              ),
            ),
          ],
        );
      },
    );
  }
}
