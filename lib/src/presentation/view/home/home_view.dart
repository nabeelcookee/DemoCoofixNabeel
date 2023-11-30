import 'package:coofix/src/application/get_servieces/get_services_bloc.dart';
import 'package:coofix/src/application/get_servieces/get_services_event.dart';
import 'package:coofix/src/domain/domain/models/get_servieces/get_servieces_model.dart';
import 'package:coofix/src/presentation/core/theme/colors.dart';
import 'package:coofix/src/presentation/core/values/custom_silver_delegate.dart';
import 'package:coofix/src/presentation/core/values/no_glow_scroll_behaviour.dart';
import 'package:coofix/src/presentation/view/home/widgets/home_banner.dart';
import 'package:coofix/src/presentation/view/home/widgets/service_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/app_bar.dart';
import 'widgets/service_category_list.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    context
        .read<GetServicesBloc>()
        .add(const GetServicesEvent.getServices(limit: 0, skip: 0, id: ""));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final kSize = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(
        top: kSize.height * 0.01,
      ),
      child: ScrollConfiguration(
        behavior: NoGlowScrollBehaviour(),
        child: CustomScrollView(
          slivers: [
            SliverLayoutBuilder(
              builder: (BuildContext context, constraints) {
                final scrolled = constraints.scrollOffset > 10;
                return SliverAppBar(
                    pinned: true,
                    toolbarHeight: kSize.height * .06,
                    elevation: 0,
                    leading: const SizedBox(),
                    systemOverlayStyle: const SystemUiOverlayStyle(
                        statusBarIconBrightness: Brightness.dark),
                    expandedHeight: kSize.height * .06,
                    backgroundColor: scrolled
                        ? AppColors.secondaryColor
                        : AppColors.transparent.withOpacity(0),
                    flexibleSpace:
                        const FlexibleSpaceBar(background: HomeAppBar()));
              },
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: kSize.height * 0.0197),
            ),
            SliverPersistentHeader(
                delegate: SliverAppBarDelegate(
              minHeight: kSize.height * 0.2736,
              maxHeight: kSize.height * 0.2736,
              child: const HomeBanner(),
            )),
            SliverToBoxAdapter(
              child: SizedBox(height: kSize.height * 0.02631),
            ),
            const SliverToBoxAdapter(child: ServiceList()),
            SliverToBoxAdapter(
              child: SizedBox(height: kSize.height * 0.04631),
            ),
          const    SliverToBoxAdapter(child: ServiceCategoryList()),
            SliverToBoxAdapter(
              child: SizedBox(height: kSize.height * 0.13157),
            )
          ],
        ),
      ),
    );
  }
}
