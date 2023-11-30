import 'package:coofix/src/presentation/core/constants/images.dart';
import 'package:coofix/src/presentation/core/theme/colors.dart';
import 'package:coofix/src/presentation/core/theme/typography.dart';
import 'package:coofix/src/presentation/core/widgets/background.dart';
import 'package:coofix/src/presentation/view/home/home_view.dart';
import 'package:coofix/src/presentation/view/products/products_view.dart';
import 'package:coofix/src/presentation/view/profile/profile_view.dart';
import 'package:coofix/src/presentation/view/requests/request_view.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key, this.selectedIndex = 0});
  final int selectedIndex;
  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex = 0;
  List<String> icons = [
    AppImages.homeIcon,
    AppImages.requestIcon,
    AppImages.productIcon,
    AppImages.profileIcon
  ];
  List<String> names = ['Home', 'Requests', 'Products', 'Profile'];
  List<Widget> pages = [
    const HomeView(),
    const RequestView(),
    const ProductsView(),
    const ProfileView()
  ];
  PageStorageBucket pageStorageBucket = PageStorageBucket();
  @override
  void initState() {
    selectedIndex = widget.selectedIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final kSize = MediaQuery.of(context).size;
    return Scaffold(
      extendBody: true,
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.secondaryColor,
      bottomNavigationBar: bottomNavigation(kSize),
      body: SizedBox(
          height: kSize.height,
          width: kSize.width,
          child: Stack(alignment: Alignment.topCenter, children: [
            const CommonBackground(),
            PageStorage(bucket: pageStorageBucket, child: pages[selectedIndex])
          ])),
    );
  }

  Widget bottomNavigation(Size kSize) {
    return Container(
      height: kSize.height * 0.09,
      width: kSize.width,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [AppColors.lightGreyColor, AppColors.secondaryColor]),
          color: AppColors.secondaryColor,
          boxShadow: [
            BoxShadow(
                color: AppColors.primaryColor.withOpacity(.12),
                blurRadius: 160,
                spreadRadius: 20,
                offset: const Offset(-40, 4))
          ]),
      padding: EdgeInsets.symmetric(
          horizontal: kSize.width * 0.0444, vertical: kSize.height * 0.0110),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
              icons.length,
              (index) => InkWell(
                    splashColor: AppColors.transparent,
                    highlightColor: AppColors.transparent,
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          icons[index],
                          height: kSize.height * 0.02957,
                          color: selectedIndex == index
                              ? AppColors.blueColor
                              : null,
                        ),
                        SizedBox(
                          height: kSize.height * 0.0082,
                        ),
                        Text(
                          names[index],
                          style: AppTypography.uncutSansSemibold.copyWith(
                              color: selectedIndex == index
                                  ? AppColors.blueColor
                                  : AppColors.textColor,
                              fontSize: kSize.height * 0.01642),
                        )
                      ],
                    ),
                  ))),
    );
  }
}
