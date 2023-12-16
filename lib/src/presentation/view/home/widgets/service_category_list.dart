
import 'package:coofix/app/router/router_constants.dart';
import 'package:coofix/src/application/get_servieces/get_services_bloc.dart';
import 'package:coofix/src/presentation/core/constants/constants.dart';
import 'package:coofix/src/presentation/core/constants/images.dart';
import 'package:coofix/src/presentation/core/theme/colors.dart';
import 'package:coofix/src/presentation/core/theme/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ServiceCategoryList extends StatefulWidget {
  const ServiceCategoryList({Key? key}) : super(key: key);

  @override
  State<ServiceCategoryList> createState() => _ServiceCategoryListState();
}

class _ServiceCategoryListState extends State<ServiceCategoryList> {
  // @override
  // void initState() {
  //   context.read<GetServicesBloc>().add(
  //         const GetServicesEvent.getServices(limit: 0, skip: 0, id: ""),
  //       );
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    final kSize = MediaQuery.of(context).size;
    return BlocBuilder<GetServicesBloc, ServiceState>(
      builder: (context, state) {
        if (state.services.isEmpty) {
          return const SizedBox(
            width: 100,
            height: 100,
            child: Text("No services available"),
          );
        } else if (state.services.isNotEmpty) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppConstants.basePadding,
            ),
            child: StaggeredGrid.count(
              crossAxisCount: 4,
              mainAxisSpacing: 5,
              axisDirection: AxisDirection.down,
              crossAxisSpacing: 5,
              children: List.generate(10, (index) {
                if (index == 0) {
                  return gridTitle(kSize);
                } else {
                  return StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 2.3,
                    child: InkWell(
                      onTap: () {
                       
                        context.read<GetServicesBloc>().add(
                              const GetServicesEvent.getServices(
                                  limit: 0, skip: 0, id: ""),
                            );
                        Navigator.pushNamed(
                            context, RouterConstants.serviceDetailRoute,
                             );
                      },
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                kSize.height * 0.01578,
                              ),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                kSize.height * 0.01578,
                              ),
                              child: Image.asset(
                                AppImages.serviceMan,
                                //  "${AppConstants.ImageBaseUrl}/${state.services[index].image}",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned.fill(
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    AppColors.blackColor.withOpacity(.02),
                                    AppColors.blackColor.withOpacity(.6),
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                                borderRadius: BorderRadius.circular(
                                  kSize.height * 0.01578,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: kSize.height * .019,
                            left: kSize.width * 0.0444,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  state.services[index].name,
                                  style: AppTypography.soraSemiBold.copyWith(
                                    color: AppColors.secondaryColor,
                                    fontSize: kSize.height * 0.02105,
                                  ),
                                ),
                                Text(
                                  state.services[index].shortDescription,
                                  style: AppTypography.soraSemiBold.copyWith(
                                    color: AppColors.secondaryColor,
                                    fontSize: kSize.height * 0.01184,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }
              }),
            ),
          );
        } else {
          return Container();
        }
      },
    );
  }

  Widget gridTitle(Size kSize) {
    return StaggeredGridTile.count(
      crossAxisCellCount: 2,
      mainAxisCellCount: 1,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            bottom: 40,
            right: 20,
            child: Image.asset(
              AppImages.gradientStar,
              height: kSize.height * .1,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Our Service",
                style: AppTypography.soraSemiBold.copyWith(
                  fontSize: kSize.height * 0.0210,
                ),
              ),
              SizedBox(height: kSize.height * 0.00657),
              Text(
                "Over 8 years of experience",
                style: AppTypography.soraSemiBold.copyWith(
                  fontSize: kSize.height * 0.01578,
                  color: AppColors.blueGrey1,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
