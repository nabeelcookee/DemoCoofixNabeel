
import 'package:coofix/src/application/get_servieces/get_services_bloc.dart';
import 'package:coofix/src/presentation/core/constants/images.dart';
import 'package:coofix/src/presentation/core/constants/strings.dart';
import 'package:coofix/src/presentation/core/theme/colors.dart';
import 'package:coofix/src/presentation/core/theme/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ServiceGridTile extends StatefulWidget {
  const ServiceGridTile({super.key, required this.getServicesId});
  final void Function(String serviceId) getServicesId;
  @override
  State<ServiceGridTile> createState() => _ServiceGridTileState();
}

class _ServiceGridTileState extends State<ServiceGridTile> {
  int selected = -1;

  @override
  Widget build(BuildContext context) {
    final kSize = MediaQuery.of(context).size;
    return BlocBuilder<GetServicesBloc, ServiceState>(
      builder: (context, state) {
        return GridView.builder(
          shrinkWrap: true,
          primary: true,
          padding: EdgeInsets.only(bottom: kSize.height * 0.131),
          scrollDirection: Axis.vertical,
          itemCount: 10,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: kSize.width / (kSize.height / 1.8),
            crossAxisSpacing: kSize.width * 0.011,
            mainAxisSpacing: kSize.height * 0.0052,
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                setState(() {
                  if (selected == index) {
                    selected = -1;
                  
                  } else {
                    selected = index;
                    widget.getServicesId(state.services[selected].id);
                    print("Selected Service ID: ${state.services[selected].id}");
                  }
                });
              },
              child: serviceGridTile(
                kSize,
                state.services[index].name,
                state.services[index].shortDescription,
                index,
                isSelected: selected == index,
              ),
            );
          },
        );
      },
    );
  }

  Widget serviceGridTile(
      Size kSize, String name, String shortDescription, int index,
      {required bool isSelected}) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(kSize.height * 0.01578),
          ),
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                isSelected
                    ? AppColors.blackColor.withOpacity(.7)
                    : AppColors.blackColor.withOpacity(.02),
                isSelected
                    ? AppColors.blackColor
                    : AppColors.blackColor.withOpacity(.6),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            borderRadius: BorderRadius.circular(kSize.height * 0.01578),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(kSize.height * 0.01578),
            child: Image.asset(
              AppImages.serviceMan,
              fit: BoxFit.cover,
            ),
          ),
        ),
        if (isSelected)
          Positioned(
            top: kSize.height * .019,
            left: kSize.width * 0.0444,
            child: Row(
              children: [
                Image.asset(
                  AppImages.tickIcon,
                  height: kSize.height * 0.0315,
                ),
                SizedBox(width: kSize.width * .015),
                Text(
                  AppStrings.selected,
                  style: AppTypography.soraSemiBold.copyWith(
                    color: AppColors.secondaryColor,
                    fontSize: kSize.height * 0.0155,
                  ),
                ),
              ],
            ),
          ),
        Positioned(
          bottom: kSize.height * .019,
          left: kSize.width * 0.0444,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: AppTypography.soraSemiBold.copyWith(
                  color: AppColors.secondaryColor,
                  fontSize: kSize.height * 0.02105,
                ),
              ),
              Text(
                shortDescription,
                style: AppTypography.soraSemiBold.copyWith(
                  color: AppColors.secondaryColor,
                  fontSize: kSize.height * 0.01184,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
